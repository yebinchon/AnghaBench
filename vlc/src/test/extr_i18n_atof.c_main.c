
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int us_atof (char const*) ;
 int us_strtod (char const*,char**) ;

int main (void)
{
    const char dot9[] = "999999.999999";
    const char comma9[] = "999999,999999";
    const char sharp9[] = "999999#999999";
    char *end;

    assert (us_atof("0") == 0.);
    assert (us_atof("1") == 1.);
    assert (us_atof("1.") == 1.);
    assert (us_atof("1,") == 1.);
    assert (us_atof("1#") == 1.);
    assert (us_atof(dot9) == 999999.999999);
    assert (us_atof(comma9) == 999999.);
    assert (us_atof(sharp9) == 999999.);
    assert (us_atof("invalid") == 0.);

    assert ((us_strtod(dot9, &end ) == 999999.999999)
            && (*end == '\0'));
    assert ((us_strtod(comma9, &end ) == 999999.)
            && (*end == ','));
    assert ((us_strtod(sharp9, &end ) == 999999.)
            && (*end == '#'));

    return 0;
}
