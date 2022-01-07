
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_map_iterator {int (* fn ) (int ,void*) ;int data; } ;


 int stub1 (int ,void*) ;

__attribute__((used)) static int
string_map_iterate(void **slot, void *data)
{
 struct string_map_iterator *iterator = data;

 return iterator->fn(iterator->data, *slot);
}
