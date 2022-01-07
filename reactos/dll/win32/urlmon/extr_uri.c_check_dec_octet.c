
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL check_dec_octet(const WCHAR **ptr) {
    const WCHAR *c1, *c2, *c3;

    c1 = *ptr;

    if(*c1 < '0' || *c1 > '9')
        return FALSE;

    ++(*ptr);

    c2 = *ptr;




    if(*c2 < '0' || *c2 > '9')
        return TRUE;

    ++(*ptr);

    c3 = *ptr;

    if(*c3 < '0' || *c3 > '9')
        return TRUE;


    if(*c1 >= '2' && *c2 >= '5' && *c3 >= '5') {
        *ptr = c1;
        return FALSE;
    }

    ++(*ptr);
    return TRUE;
}
