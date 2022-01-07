
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* opts; char* name; } ;


 int LPC_UART_NUM ;
 int free (char*) ;
 char** lpc_uart_names ;
 TYPE_1__* lpc_uart_softc ;
 char* romfile ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

int
lpc_device_parse(const char *opts)
{
 int unit, error;
 char *str, *cpy, *lpcdev;

 error = -1;
 str = cpy = strdup(opts);
 lpcdev = strsep(&str, ",");
 if (lpcdev != ((void*)0)) {
        if (strcasecmp(lpcdev, "bootrom") == 0) {
            romfile = str;
            error = 0;
            goto done;
        }
  for (unit = 0; unit < LPC_UART_NUM; unit++) {
   if (strcasecmp(lpcdev, lpc_uart_names[unit]) == 0) {
    lpc_uart_softc[unit].opts = str;
    lpc_uart_softc[unit].name = lpc_uart_names[unit];
    error = 0;
    goto done;
   }
  }
 }

done:
 if (error)
  free(cpy);

 return (error);
}
