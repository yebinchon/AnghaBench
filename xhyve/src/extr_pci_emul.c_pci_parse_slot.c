
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slotinfo {TYPE_1__* si_funcs; } ;
struct businfo {struct slotinfo* slotinfo; } ;
struct TYPE_2__ {char* fi_name; char* fi_param; } ;


 int MAXBUSES ;
 int MAXFUNCS ;
 int MAXSLOTS ;
 struct businfo* calloc (int,int) ;
 int fprintf (int ,char*,int,int,...) ;
 int free (char*) ;
 struct businfo** pci_businfo ;
 int * pci_emul_finddev (char*) ;
 int pci_parse_slot_usage (char*) ;
 int sscanf (char*,char*,int*,...) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

int
pci_parse_slot(char *opt)
{
 struct businfo *bi;
 struct slotinfo *si;
 char *emul, *config, *str, *cp;
 int error, bnum, snum, fnum;

 error = -1;
 str = strdup(opt);

 emul = config = ((void*)0);
 if ((cp = strchr(str, ',')) != ((void*)0)) {
  *cp = '\0';
  emul = cp + 1;
  if ((cp = strchr(emul, ',')) != ((void*)0)) {
   *cp = '\0';
   config = cp + 1;
  }
 } else {
  pci_parse_slot_usage(opt);
  goto done;
 }


 if (sscanf(str, "%d:%d:%d", &bnum, &snum, &fnum) != 3) {
  bnum = 0;

  if (sscanf(str, "%d:%d", &snum, &fnum) != 2) {
   fnum = 0;

   if (sscanf(str, "%d", &snum) != 1) {
    snum = -1;
   }
  }
 }

 if (bnum < 0 || bnum >= MAXBUSES || snum < 0 || snum >= MAXSLOTS ||
     fnum < 0 || fnum >= MAXFUNCS) {
  pci_parse_slot_usage(opt);
  goto done;
 }

 if (pci_businfo[bnum] == ((void*)0))
  pci_businfo[bnum] = calloc(1, sizeof(struct businfo));

 bi = pci_businfo[bnum];
 si = &bi->slotinfo[snum];

 if (si->si_funcs[fnum].fi_name != ((void*)0)) {
  fprintf(stderr, "pci slot %d:%d already occupied!\n",
   snum, fnum);
  goto done;
 }

 if (pci_emul_finddev(emul) == ((void*)0)) {
  fprintf(stderr, "pci slot %d:%d: unknown device \"%s\"\n",
   snum, fnum, emul);
  goto done;
 }

 error = 0;
 si->si_funcs[fnum].fi_name = emul;
 si->si_funcs[fnum].fi_param = config;

done:
 if (error)
  free(str);

 return (error);
}
