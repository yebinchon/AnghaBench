
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlstr_t ;
typedef int xmlbuf_t ;
struct entity {int dummy; } ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int asmv1W ;
 int com_class_add_progid (int *,struct entity*) ;
 scalar_t__ parse_expect_end_elem (int *,int ,int ) ;
 int parse_expect_no_attr (int *,scalar_t__*) ;
 int parse_text_content (int *,int *) ;
 int progidW ;

__attribute__((used)) static BOOL parse_com_class_progid(xmlbuf_t* xmlbuf, struct entity *entity)
{
    xmlstr_t content;
    BOOL end = FALSE;

    if (!parse_expect_no_attr(xmlbuf, &end) || end || !parse_text_content(xmlbuf, &content))
        return FALSE;

    if (!com_class_add_progid(&content, entity)) return FALSE;
    return parse_expect_end_elem(xmlbuf, progidW, asmv1W);
}
