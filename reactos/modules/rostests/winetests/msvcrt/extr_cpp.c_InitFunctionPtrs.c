
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetModuleHandleA (char*) ;
 int SET (scalar_t__*,char*) ;
 int SETNOFAIL (scalar_t__*,char*) ;
 int TRUE ;
 scalar_t__* bAncientVersion ;
 scalar_t__ hMsvcrt ;
 int init_thiscall_thunk () ;
 int ok (int,char*) ;
 scalar_t__* p__RTCastToVoid ;
 scalar_t__* p__RTDynamicCast ;
 scalar_t__* p__RTtypeid ;
 scalar_t__* p__non_rtti_object_copy_ctor ;
 scalar_t__* p__non_rtti_object_ctor ;
 scalar_t__* p__non_rtti_object_dtor ;
 scalar_t__* p__non_rtti_object_opequals ;
 scalar_t__* p__non_rtti_object_scalar_dtor ;
 scalar_t__* p__non_rtti_object_vector_dtor ;
 scalar_t__* p__non_rtti_object_vtable ;
 scalar_t__* p__non_rtti_object_what ;
 scalar_t__* p__unDName ;
 scalar_t__* pbad_cast_copy_ctor ;
 scalar_t__* pbad_cast_ctor ;
 scalar_t__* pbad_cast_ctor2 ;
 scalar_t__* pbad_cast_ctor_closure ;
 scalar_t__* pbad_cast_dtor ;
 scalar_t__* pbad_cast_opequals ;
 scalar_t__* pbad_cast_scalar_dtor ;
 scalar_t__* pbad_cast_vector_dtor ;
 scalar_t__* pbad_cast_vtable ;
 scalar_t__* pbad_cast_what ;
 scalar_t__* pbad_typeid_copy_ctor ;
 scalar_t__* pbad_typeid_ctor ;
 scalar_t__* pbad_typeid_ctor_closure ;
 scalar_t__* pbad_typeid_dtor ;
 scalar_t__* pbad_typeid_opequals ;
 scalar_t__* pbad_typeid_scalar_dtor ;
 scalar_t__* pbad_typeid_vector_dtor ;
 scalar_t__* pbad_typeid_vtable ;
 scalar_t__* pbad_typeid_what ;
 scalar_t__* pexception_copy_ctor ;
 scalar_t__* pexception_ctor ;
 scalar_t__* pexception_default_ctor ;
 scalar_t__* pexception_dtor ;
 scalar_t__* pexception_opequals ;
 scalar_t__* pexception_scalar_dtor ;
 scalar_t__* pexception_vector_dtor ;
 scalar_t__* pexception_vtable ;
 scalar_t__* pexception_what ;
 scalar_t__* pfree ;
 scalar_t__* pmalloc ;
 scalar_t__* poperator_delete ;
 scalar_t__* poperator_new ;
 scalar_t__* ptype_info_before ;
 scalar_t__* ptype_info_dtor ;
 scalar_t__* ptype_info_name ;
 scalar_t__* ptype_info_opequals_equals ;
 scalar_t__* ptype_info_opnot_equals ;
 scalar_t__* ptype_info_raw_name ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL InitFunctionPtrs(void)
{
    hMsvcrt = GetModuleHandleA("msvcrt.dll");
    if (!hMsvcrt)
        hMsvcrt = GetModuleHandleA("msvcrtd.dll");
    ok(hMsvcrt != 0, "GetModuleHandleA failed\n");
    if (!hMsvcrt)
    {
        win_skip("Could not load msvcrt.dll\n");
        return FALSE;
    }

    SET(pmalloc, "malloc");
    SET(pfree, "free");

    SET(pexception_vtable, "??_7exception@@6B@");
    SET(pbad_typeid_vtable, "??_7bad_typeid@@6B@");
    SET(pbad_cast_vtable, "??_7bad_cast@@6B@");
    SET(p__non_rtti_object_vtable, "??_7__non_rtti_object@@6B@");

    SET(p__RTtypeid, "__RTtypeid");
    SET(p__RTCastToVoid, "__RTCastToVoid");
    SET(p__RTDynamicCast, "__RTDynamicCast");

    SET(p__unDName,"__unDName");


    SETNOFAIL(bAncientVersion, "??0logic_error@@QAE@ABQBD@Z");
    if (sizeof(void *) > sizeof(int))
    {
        SETNOFAIL(poperator_new, "??_U@YAPEAX_K@Z");
        SETNOFAIL(poperator_delete, "??_V@YAXPEAX@Z");

        SET(pexception_ctor, "??0exception@@QEAA@AEBQEBD@Z");
        SET(pexception_copy_ctor, "??0exception@@QEAA@AEBV0@@Z");
        SET(pexception_default_ctor, "??0exception@@QEAA@XZ");
        SET(pexception_dtor, "??1exception@@UEAA@XZ");
        SET(pexception_opequals, "??4exception@@QEAAAEAV0@AEBV0@@Z");
        SET(pexception_what, "?what@exception@@UEBAPEBDXZ");
        pexception_vector_dtor = (void*)pexception_vtable[0];
        pexception_scalar_dtor = (void*)pexception_vtable[0];

        SET(pbad_typeid_ctor, "??0bad_typeid@@QEAA@PEBD@Z");
        SETNOFAIL(pbad_typeid_ctor_closure, "??_Fbad_typeid@@QEAAXXZ");
        SET(pbad_typeid_copy_ctor, "??0bad_typeid@@QEAA@AEBV0@@Z");
        SET(pbad_typeid_dtor, "??1bad_typeid@@UEAA@XZ");
        SET(pbad_typeid_opequals, "??4bad_typeid@@QEAAAEAV0@AEBV0@@Z");
        SET(pbad_typeid_what, "?what@exception@@UEBAPEBDXZ");
        pbad_typeid_vector_dtor = (void*)pbad_typeid_vtable[0];
        pbad_typeid_scalar_dtor = (void*)pbad_typeid_vtable[0];

        SET(pbad_cast_ctor, "??0bad_cast@@QEAA@AEBQEBD@Z");
        SET(pbad_cast_ctor2, "??0bad_cast@@QEAA@PEBD@Z");
        SET(pbad_cast_ctor_closure, "??_Fbad_cast@@QEAAXXZ");
        SET(pbad_cast_copy_ctor, "??0bad_cast@@QEAA@AEBV0@@Z");
        SET(pbad_cast_dtor, "??1bad_cast@@UEAA@XZ");
        SET(pbad_cast_opequals, "??4bad_cast@@QEAAAEAV0@AEBV0@@Z");
        SET(pbad_cast_what, "?what@exception@@UEBAPEBDXZ");
        pbad_cast_vector_dtor = (void*)pbad_cast_vtable[0];
        pbad_cast_scalar_dtor = (void*)pbad_cast_vtable[0];

        SET(p__non_rtti_object_ctor, "??0__non_rtti_object@@QEAA@PEBD@Z");
        SET(p__non_rtti_object_copy_ctor, "??0__non_rtti_object@@QEAA@AEBV0@@Z");
        SET(p__non_rtti_object_dtor, "??1__non_rtti_object@@UEAA@XZ");
        SET(p__non_rtti_object_opequals, "??4__non_rtti_object@@QEAAAEAV0@AEBV0@@Z");
        SET(p__non_rtti_object_what, "?what@exception@@UEBAPEBDXZ");
        p__non_rtti_object_vector_dtor = (void*)p__non_rtti_object_vtable[0];
        p__non_rtti_object_scalar_dtor = (void*)p__non_rtti_object_vtable[0];

        SET(ptype_info_dtor, "??1type_info@@UEAA@XZ");
        SET(ptype_info_raw_name, "?raw_name@type_info@@QEBAPEBDXZ");
        SET(ptype_info_name, "?name@type_info@@QEBAPEBDXZ");
        SET(ptype_info_before, "?before@type_info@@QEBAHAEBV1@@Z");
        SET(ptype_info_opequals_equals, "??8type_info@@QEBAHAEBV0@@Z");
        SET(ptype_info_opnot_equals, "??9type_info@@QEBAHAEBV0@@Z");
    }
    else
    {
        SETNOFAIL(poperator_new, "??_U@YAPAXI@Z");
        SETNOFAIL(poperator_delete, "??_V@YAXPAX@Z");

        SET(pexception_ctor, "??0exception@@QAE@ABQBD@Z");
        SET(pexception_copy_ctor, "??0exception@@QAE@ABV0@@Z");
        SET(pexception_default_ctor, "??0exception@@QAE@XZ");
        SET(pexception_dtor, "??1exception@@UAE@XZ");
        SET(pexception_opequals, "??4exception@@QAEAAV0@ABV0@@Z");
        SET(pexception_what, "?what@exception@@UBEPBDXZ");
        SET(pexception_vector_dtor, "??_Eexception@@UAEPAXI@Z");
        SET(pexception_scalar_dtor, "??_Gexception@@UAEPAXI@Z");

        SET(pbad_typeid_ctor, "??0bad_typeid@@QAE@PBD@Z");
        SETNOFAIL(pbad_typeid_ctor_closure, "??_Fbad_typeid@@QAEXXZ");
        SET(pbad_typeid_copy_ctor, "??0bad_typeid@@QAE@ABV0@@Z");
        SET(pbad_typeid_dtor, "??1bad_typeid@@UAE@XZ");
        SET(pbad_typeid_opequals, "??4bad_typeid@@QAEAAV0@ABV0@@Z");
        SET(pbad_typeid_what, "?what@exception@@UBEPBDXZ");
        SET(pbad_typeid_vector_dtor, "??_Ebad_typeid@@UAEPAXI@Z");
        SET(pbad_typeid_scalar_dtor, "??_Gbad_typeid@@UAEPAXI@Z");

        SETNOFAIL(pbad_cast_ctor, "??0bad_cast@@QAE@ABQBD@Z");
        if (!pbad_cast_ctor)
            SET(pbad_cast_ctor, "??0bad_cast@@AAE@PBQBD@Z");
        SETNOFAIL(pbad_cast_ctor2, "??0bad_cast@@QAE@PBD@Z");
        SETNOFAIL(pbad_cast_ctor_closure, "??_Fbad_cast@@QAEXXZ");
        SET(pbad_cast_copy_ctor, "??0bad_cast@@QAE@ABV0@@Z");
        SET(pbad_cast_dtor, "??1bad_cast@@UAE@XZ");
        SET(pbad_cast_opequals, "??4bad_cast@@QAEAAV0@ABV0@@Z");
        SET(pbad_cast_what, "?what@exception@@UBEPBDXZ");
        SET(pbad_cast_vector_dtor, "??_Ebad_cast@@UAEPAXI@Z");
        SET(pbad_cast_scalar_dtor, "??_Gbad_cast@@UAEPAXI@Z");

        SET(p__non_rtti_object_ctor, "??0__non_rtti_object@@QAE@PBD@Z");
        SET(p__non_rtti_object_copy_ctor, "??0__non_rtti_object@@QAE@ABV0@@Z");
        SET(p__non_rtti_object_dtor, "??1__non_rtti_object@@UAE@XZ");
        SET(p__non_rtti_object_opequals, "??4__non_rtti_object@@QAEAAV0@ABV0@@Z");
        SET(p__non_rtti_object_what, "?what@exception@@UBEPBDXZ");
        SET(p__non_rtti_object_vector_dtor, "??_E__non_rtti_object@@UAEPAXI@Z");
        SET(p__non_rtti_object_scalar_dtor, "??_G__non_rtti_object@@UAEPAXI@Z");

        SET(ptype_info_dtor, "??1type_info@@UAE@XZ");
        SET(ptype_info_raw_name, "?raw_name@type_info@@QBEPBDXZ");
        SET(ptype_info_name, "?name@type_info@@QBEPBDXZ");
        SET(ptype_info_before, "?before@type_info@@QBEHABV1@@Z");
        SET(ptype_info_opequals_equals, "??8type_info@@QBEHABV0@@Z");
        SET(ptype_info_opnot_equals, "??9type_info@@QBEHABV0@@Z");

    }

    if (!poperator_new)
        poperator_new = pmalloc;
    if (!poperator_delete)
        poperator_delete = pfree;

    init_thiscall_thunk();
    return TRUE;
}
