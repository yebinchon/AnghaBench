
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void write_rpc_interface_end(FILE *header, const type_t *iface)
{
  fprintf(header,"\n#endif  /* __%s_INTERFACE_DEFINED__ */\n\n", iface->name);
}
