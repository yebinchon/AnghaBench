
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemoryStream {int dummy; } ;


 int free (struct MemoryStream*) ;

__attribute__((used)) static void memory_close(void *data)
{
    struct MemoryStream *stm = data;
    free(stm);
}
