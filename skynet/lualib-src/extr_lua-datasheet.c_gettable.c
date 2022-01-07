
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct table {int dummy; } ;
struct document {scalar_t__* index; int n; } ;


 scalar_t__ INVALID_OFFSET ;

__attribute__((used)) static inline const struct table *
gettable(const struct document *doc, int index) {
 if (doc->index[index] == INVALID_OFFSET) {
  return ((void*)0);
 }
 return (const struct table *)((const char *)doc + sizeof(uint32_t) + sizeof(uint32_t) + doc->n * sizeof(uint32_t) + doc->index[index]);
}
