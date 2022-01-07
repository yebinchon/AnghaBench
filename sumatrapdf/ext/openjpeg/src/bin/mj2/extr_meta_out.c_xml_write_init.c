
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* BOOL ;


 void* derived ;
 void* notes ;
 void* raw ;
 void* sampletables ;

void xml_write_init(BOOL n, BOOL t, BOOL r, BOOL d)
{

    notes = n;
    sampletables = t;
    raw = r;
    derived = d;
}
