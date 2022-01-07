
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int section; int priv; int (* pf_header ) (int ,int ,int,char const*) ;} ;
typedef TYPE_1__ webvtt_text_parser_t ;


 int stub1 (int ,int ,int,char const*) ;

__attribute__((used)) static void forward_line( webvtt_text_parser_t *p, const char *psz_line, bool b_new )
{
    if( p->pf_header )
        p->pf_header( p->priv, p->section, b_new, psz_line );
}
