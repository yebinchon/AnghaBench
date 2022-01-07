
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {scalar_t__ type; } ;


 scalar_t__ LINE_DIFF_CHUNK ;
 scalar_t__ LINE_DIFF_HEADER ;

__attribute__((used)) static inline bool
stage_diff_done(struct line *line, struct line *end)
{
 return line >= end ||
        line->type == LINE_DIFF_CHUNK ||
        line->type == LINE_DIFF_HEADER;
}
