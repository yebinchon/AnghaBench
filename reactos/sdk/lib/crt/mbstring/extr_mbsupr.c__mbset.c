
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _MBGETH (int) ;
 int _MBGETL (int) ;
 scalar_t__ _MBIS16 (int) ;
 scalar_t__ _MBLMASK (int) ;

unsigned char *_mbset (unsigned char *string, int c)
{
    unsigned char *save = string;

    if (_MBIS16 (c)) {

 if (_MBLMASK (c) == 0) {
     *string++ = '\0';
     *string++ = '\0';
 }
 else {
     *string++ = _MBGETH (c);
     *string++ = _MBGETL (c);
 }

    }
    else {

 *string++ = c;

    }

    return save;
}
