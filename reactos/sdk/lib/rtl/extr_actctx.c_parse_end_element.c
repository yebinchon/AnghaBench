
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlbuf_t ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ parse_expect_no_attr (int *,int*) ;

__attribute__((used)) static BOOL parse_end_element(xmlbuf_t *xmlbuf)
{
    BOOL end = FALSE;
    return parse_expect_no_attr(xmlbuf, &end) && !end;
}
