#ifndef GLM_FUNCTION_LIST
#define GLM_FUNCTION_LIST

// Pi constant
#define pi 3.1415926535897932384626433832795

// Operations
#define and &&
#define or ||
#define xor ^^

// General functions
#define frac(x)         (fract(abs(x)) * sign(x))  // TODO: replace with function, will not work with impure code passed as argument
#define round(x)        floor((x) + 0.5)
#define lerp(a, b, x)   mix((a), (b), (x))

// Comparison functions (number depends on arguments)
#define max3(a, b, c)           max((a), max((b), (c)))
#define max4(a, b, c, d)        max((a), max((b), max((c), (d))))
#define max5(a, b, c, d, e)     max((a), max((b), max((c), max((d), (e)))))
#define min3(a, b, c)           min((a), min((b), (c)))
#define min4(a, b, c, d)        min((a), min((b), min((c), (d))))
#define min5(a, b, c, d, e)     min((a), min((b), min((c), min((d), (e)))))
#define mean2(a, b)             (((a) + (b)) / 2.0)
#define mean3(a, b, c)          (((a) + (b) + (c)) / 3.0)
#define mean4(a, b, c, d)       (((a) + (b) + (c) + (d)) / 4.0)
#define mean5(a, b, c, d, e)    (((a) + (b) + (c) + (d) + (e)) / 5.0)

// Exponent functions
#define sqr(x)      ((x) * (x))  // TODO: replace with function, will not work with impure code passed as argument
#define power(x, y) pow((x), (y))
#define log10(x)    (log(x) / log(10.0))
#define logn(b, x)  (log(x) / log(b))
#define ln(x)       log(x)

// Trigonometry functions
#define dcos(x)         cos(radians(x))
#define dsin(x)         sin(radians(x))
#define dtan(x)         tan(radians(x))
#define darccos(x)      acos(radians(x))
#define darcsin(x)      asin(radians(x))
#define darctan(x)      atan(radians(x))
#define darctan2(y, x)  atan(radians(y), radians(x))
#define arccos(x)       acos(x)
#define arcsin(x)       asin(x)
#define arctan(x)       atan(x)
#define arctan2(y, x)   atan((y), (x))

// Angle functions
#define angle_difference(d, s)  (mod((d) - (s) + 180.0, 360.0) - 180.0)
#define degtorad(x)             radians(x)
#define radtodeg(x)             degrees(x)
#define lengthdir_x(l, d)       (+(l)*cos(radians(d)))
#define lengthdir_y(l, d)       (-(l)*sin(radians(d)))

// Vector functions
#define point_direction(x1, y1, x2, y2)                     mod(degrees(atan((y2) - (y1), (x2) - (x1))), 360.0)
#define point_direction_vec(p1, p2)                         mod(degrees(atan(((p2) - (p1)).x, ((p2) - (p1)).y)), 360.0)  // TODO: replace with function, will not work with impure code passed as argument
#define point_distance(x1, y1, x2, y2)                      distance(vec2((x1), (y1)), vec2((x2), (y2)))
#define point_distance_3d(x1, y1, z1, x2, y2, z2)           distance(vec3((x1), (y1), (z1)), vec3((x2), (y2), (z2)))
#define point_distance_vec(p1, p2)                          distance((p1), (p2))
#define dot_product(x1, y1, x2, y2)                         dot(vec2((x1), (y1)), vec2((x2), (y2)))
#define dot_product_3d(x1, y1, z1, x2, y2, z2)              dot(vec3((x1), (y1), (z1)), vec3((x2), (y2), (z2)))
#define dot_product_vec(v1, v2)                             dot((v1), (v2))
#define dot_product_normalised(x1, y1, x2, y2)              dot(normalize(vec2((x1), (y1))), normalize(vec2((x2), (y2))))
#define dot_product_normalised_vec(v1, v2)                  dot(normalize(v1), normalize(v2))
#define dot_product_normalised_3d(x1, y1, z1, x2, y2, z2)   dot(normalize(vec3((x1), (y1), (z1))), normalize(vec3((x2), (y2), (z2))))

// Random functions (cheap approximation)
float __RNG_SEED__ = 0.0;
#define random(x)           ((x) * fract(cos(++__RNG_SEED__ * 97.) * 4e3))
#define irandom(x)          floor((x)*fract(cos(++__RNG_SEED__ * 97.) * 4e3))
#define random_set_seed(s)  (__RNG_SEED__ = (s))
#define random_get_seed()  (__RNG_SEED__ + 0.0)

#endif
