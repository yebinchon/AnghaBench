
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlbuf_t ;
typedef int BOOL ;


 int FALSE ;
 int asmv1W ;
 int noInheritW ;
 scalar_t__ parse_expect_end_elem (int *,int ,int ) ;
 int parse_expect_no_attr (int *,int*) ;

__attribute__((used)) static BOOL parse_noinherit_elem(xmlbuf_t* xmlbuf)
{
    BOOL end = FALSE;

    if (!parse_expect_no_attr(xmlbuf, &end)) return FALSE;
    return end || parse_expect_end_elem(xmlbuf, noInheritW, asmv1W);
}
