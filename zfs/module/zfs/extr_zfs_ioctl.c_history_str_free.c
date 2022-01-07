
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIS_MAX_RECORD_LEN ;
 int kmem_free (char*,int ) ;

__attribute__((used)) static void
history_str_free(char *buf)
{
 kmem_free(buf, HIS_MAX_RECORD_LEN);
}
