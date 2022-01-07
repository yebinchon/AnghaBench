
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_pattern ;



__attribute__((used)) static unsigned int
pdf_pattern_size(pdf_pattern *pat)
{
 if (pat == ((void*)0))
  return 0;
 return sizeof(*pat);
}
