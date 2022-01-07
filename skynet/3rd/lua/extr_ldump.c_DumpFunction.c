
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ strip; } ;
struct TYPE_18__ {int maxstacksize; int is_vararg; int numparams; int lastlinedefined; int linedefined; int * source; } ;
typedef int TString ;
typedef TYPE_1__ Proto ;
typedef TYPE_2__ DumpState ;


 int DumpByte (int ,TYPE_2__*) ;
 int DumpCode (TYPE_1__ const*,TYPE_2__*) ;
 int DumpConstants (TYPE_1__ const*,TYPE_2__*) ;
 int DumpDebug (TYPE_1__ const*,TYPE_2__*) ;
 int DumpInt (int ,TYPE_2__*) ;
 int DumpProtos (TYPE_1__ const*,TYPE_2__*) ;
 int DumpString (int *,TYPE_2__*) ;
 int DumpUpvalues (TYPE_1__ const*,TYPE_2__*) ;

__attribute__((used)) static void DumpFunction (const Proto *f, TString *psource, DumpState *D) {
  if (D->strip || f->source == psource)
    DumpString(((void*)0), D);
  else
    DumpString(f->source, D);
  DumpInt(f->linedefined, D);
  DumpInt(f->lastlinedefined, D);
  DumpByte(f->numparams, D);
  DumpByte(f->is_vararg, D);
  DumpByte(f->maxstacksize, D);
  DumpCode(f, D);
  DumpConstants(f, D);
  DumpUpvalues(f, D);
  DumpProtos(f, D);
  DumpDebug(f, D);
}
