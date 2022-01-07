
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t typekind; int cImplTypes; int cVars; int cFuncs; int wTypeFlags; } ;
struct TYPE_6__ {TYPE_1__ typeattr; int impltypes; int vardescs; int funcdescs; int DllName; int index; int pTypeLib; int guid; int DocString; int Name; int ref; } ;
typedef TYPE_2__ ITypeInfoImpl ;


 size_t TKIND_MODULE ;
 int TLB_get_bstr (int ) ;
 int TLB_get_guidref (int ) ;
 int TRACE (char*,TYPE_2__ const*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int debugstr_guid (int ) ;
 int debugstr_w (int ) ;
 int dump_TLBFuncDesc (int ,int ) ;
 int dump_TLBImplType (int ,int ) ;
 int dump_TLBVarDesc (int ,int ) ;
 int ole ;
 int * typekind_desc ;

__attribute__((used)) static void dump_TypeInfo(const ITypeInfoImpl * pty)
{
    TRACE("%p ref=%u\n", pty, pty->ref);
    TRACE("%s %s\n", debugstr_w(TLB_get_bstr(pty->Name)), debugstr_w(TLB_get_bstr(pty->DocString)));
    TRACE("attr:%s\n", debugstr_guid(TLB_get_guidref(pty->guid)));
    TRACE("kind:%s\n", typekind_desc[pty->typeattr.typekind]);
    TRACE("fct:%u var:%u impl:%u\n", pty->typeattr.cFuncs, pty->typeattr.cVars, pty->typeattr.cImplTypes);
    TRACE("wTypeFlags: 0x%04x\n", pty->typeattr.wTypeFlags);
    TRACE("parent tlb:%p index in TLB:%u\n",pty->pTypeLib, pty->index);
    if (pty->typeattr.typekind == TKIND_MODULE) TRACE("dllname:%s\n", debugstr_w(TLB_get_bstr(pty->DllName)));
    if (TRACE_ON(ole))
        dump_TLBFuncDesc(pty->funcdescs, pty->typeattr.cFuncs);
    dump_TLBVarDesc(pty->vardescs, pty->typeattr.cVars);
    dump_TLBImplType(pty->impltypes, pty->typeattr.cImplTypes);
}
