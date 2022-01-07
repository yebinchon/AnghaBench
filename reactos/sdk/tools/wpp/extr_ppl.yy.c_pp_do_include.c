
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int filename; struct TYPE_5__* next; } ;
typedef TYPE_1__ includelogicentry_t ;
struct TYPE_7__ {int state; char* ppp; int ifdepth; scalar_t__ seen_junk; } ;
struct TYPE_6__ {char* input; int line_number; void* file; scalar_t__ debug; } ;


 int YY_BUF_SIZE ;
 int fprintf (int ,char*,char*,int,int,char*,int) ;
 int free (char*) ;
 TYPE_4__ pp_incl_state ;
 TYPE_1__* pp_includelogiclist ;
 void* pp_open_include (char*,int,char*,char**) ;
 TYPE_2__ pp_status ;
 int pp_writestring (char*,char*,char*) ;
 int ppy__create_buffer (int *,int ) ;
 int ppy__switch_to_buffer (int ) ;
 int ppy_error (char*,...) ;
 int push_buffer (int *,char*,char*,int ) ;
 int stderr ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;

void pp_do_include(char *fname, int type)
{
 char *newpath;
 int n;
 includelogicentry_t *iep;
 void *fp;

 if(!fname)
  return;

 for(iep = pp_includelogiclist; iep; iep = iep->next)
 {
  if(!strcmp(iep->filename, fname))
  {





   free(fname);
   return;
  }
 }

 n = strlen(fname);

 if(n <= 2)
 {
  ppy_error("Empty include filename");
  free(fname);
  return;
 }


 fname[n-1] = '\0';

 if((fp = pp_open_include(fname+1, type, pp_status.input, &newpath)) == ((void*)0))
 {
  ppy_error("Unable to open include file %s", fname+1);
  free(fname);
  return;
 }

 fname[n-1] = *fname;
 push_buffer(((void*)0), newpath, fname, 0);
 pp_incl_state.seen_junk = 0;
 pp_incl_state.state = 0;
 pp_incl_state.ppp = ((void*)0);

 if(pp_status.debug)
  fprintf(stderr, "pp_do_include: %s:%d: include_state=%d, include_ppp='%s', include_ifdepth=%d\n",
                        pp_status.input, pp_status.line_number, pp_incl_state.state, pp_incl_state.ppp, pp_incl_state.ifdepth);
 pp_status.file = fp;
 ppy__switch_to_buffer(ppy__create_buffer(((void*)0), YY_BUF_SIZE));

 pp_writestring("# 1 \"%s\" 1%s\n", newpath, type ? "" : " 3");
}
