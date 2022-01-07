; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_cpp.c_InitFunctionPtrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_cpp.c_InitFunctionPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"msvcrt.dll\00", align 1
@hMsvcrt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"msvcrtd.dll\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"GetModuleHandleA failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not load msvcrt.dll\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@pmalloc = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@pfree = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@pexception_vtable = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"??_7exception@@6B@\00", align 1
@pbad_typeid_vtable = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"??_7bad_typeid@@6B@\00", align 1
@pbad_cast_vtable = common dso_local global i64* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"??_7bad_cast@@6B@\00", align 1
@p__non_rtti_object_vtable = common dso_local global i64* null, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"??_7__non_rtti_object@@6B@\00", align 1
@p__RTtypeid = common dso_local global i64* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"__RTtypeid\00", align 1
@p__RTCastToVoid = common dso_local global i64* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"__RTCastToVoid\00", align 1
@p__RTDynamicCast = common dso_local global i64* null, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"__RTDynamicCast\00", align 1
@p__unDName = common dso_local global i64* null, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"__unDName\00", align 1
@bAncientVersion = common dso_local global i64* null, align 8
@.str.14 = private unnamed_addr constant [28 x i8] c"??0logic_error@@QAE@ABQBD@Z\00", align 1
@poperator_new = common dso_local global i64* null, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"??_U@YAPEAX_K@Z\00", align 1
@poperator_delete = common dso_local global i64* null, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"??_V@YAXPEAX@Z\00", align 1
@pexception_ctor = common dso_local global i64* null, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"??0exception@@QEAA@AEBQEBD@Z\00", align 1
@pexception_copy_ctor = common dso_local global i64* null, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"??0exception@@QEAA@AEBV0@@Z\00", align 1
@pexception_default_ctor = common dso_local global i64* null, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"??0exception@@QEAA@XZ\00", align 1
@pexception_dtor = common dso_local global i64* null, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"??1exception@@UEAA@XZ\00", align 1
@pexception_opequals = common dso_local global i64* null, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"??4exception@@QEAAAEAV0@AEBV0@@Z\00", align 1
@pexception_what = common dso_local global i64* null, align 8
@.str.22 = private unnamed_addr constant [28 x i8] c"?what@exception@@UEBAPEBDXZ\00", align 1
@pexception_vector_dtor = common dso_local global i64* null, align 8
@pexception_scalar_dtor = common dso_local global i64* null, align 8
@pbad_typeid_ctor = common dso_local global i64* null, align 8
@.str.23 = private unnamed_addr constant [27 x i8] c"??0bad_typeid@@QEAA@PEBD@Z\00", align 1
@pbad_typeid_ctor_closure = common dso_local global i64* null, align 8
@.str.24 = private unnamed_addr constant [24 x i8] c"??_Fbad_typeid@@QEAAXXZ\00", align 1
@pbad_typeid_copy_ctor = common dso_local global i64* null, align 8
@.str.25 = private unnamed_addr constant [29 x i8] c"??0bad_typeid@@QEAA@AEBV0@@Z\00", align 1
@pbad_typeid_dtor = common dso_local global i64* null, align 8
@.str.26 = private unnamed_addr constant [23 x i8] c"??1bad_typeid@@UEAA@XZ\00", align 1
@pbad_typeid_opequals = common dso_local global i64* null, align 8
@.str.27 = private unnamed_addr constant [34 x i8] c"??4bad_typeid@@QEAAAEAV0@AEBV0@@Z\00", align 1
@pbad_typeid_what = common dso_local global i64* null, align 8
@pbad_typeid_vector_dtor = common dso_local global i64* null, align 8
@pbad_typeid_scalar_dtor = common dso_local global i64* null, align 8
@pbad_cast_ctor = common dso_local global i64* null, align 8
@.str.28 = private unnamed_addr constant [28 x i8] c"??0bad_cast@@QEAA@AEBQEBD@Z\00", align 1
@pbad_cast_ctor2 = common dso_local global i64* null, align 8
@.str.29 = private unnamed_addr constant [25 x i8] c"??0bad_cast@@QEAA@PEBD@Z\00", align 1
@pbad_cast_ctor_closure = common dso_local global i64* null, align 8
@.str.30 = private unnamed_addr constant [22 x i8] c"??_Fbad_cast@@QEAAXXZ\00", align 1
@pbad_cast_copy_ctor = common dso_local global i64* null, align 8
@.str.31 = private unnamed_addr constant [27 x i8] c"??0bad_cast@@QEAA@AEBV0@@Z\00", align 1
@pbad_cast_dtor = common dso_local global i64* null, align 8
@.str.32 = private unnamed_addr constant [21 x i8] c"??1bad_cast@@UEAA@XZ\00", align 1
@pbad_cast_opequals = common dso_local global i64* null, align 8
@.str.33 = private unnamed_addr constant [32 x i8] c"??4bad_cast@@QEAAAEAV0@AEBV0@@Z\00", align 1
@pbad_cast_what = common dso_local global i64* null, align 8
@pbad_cast_vector_dtor = common dso_local global i64* null, align 8
@pbad_cast_scalar_dtor = common dso_local global i64* null, align 8
@p__non_rtti_object_ctor = common dso_local global i64* null, align 8
@.str.34 = private unnamed_addr constant [34 x i8] c"??0__non_rtti_object@@QEAA@PEBD@Z\00", align 1
@p__non_rtti_object_copy_ctor = common dso_local global i64* null, align 8
@.str.35 = private unnamed_addr constant [36 x i8] c"??0__non_rtti_object@@QEAA@AEBV0@@Z\00", align 1
@p__non_rtti_object_dtor = common dso_local global i64* null, align 8
@.str.36 = private unnamed_addr constant [30 x i8] c"??1__non_rtti_object@@UEAA@XZ\00", align 1
@p__non_rtti_object_opequals = common dso_local global i64* null, align 8
@.str.37 = private unnamed_addr constant [41 x i8] c"??4__non_rtti_object@@QEAAAEAV0@AEBV0@@Z\00", align 1
@p__non_rtti_object_what = common dso_local global i64* null, align 8
@p__non_rtti_object_vector_dtor = common dso_local global i64* null, align 8
@p__non_rtti_object_scalar_dtor = common dso_local global i64* null, align 8
@ptype_info_dtor = common dso_local global i64* null, align 8
@.str.38 = private unnamed_addr constant [22 x i8] c"??1type_info@@UEAA@XZ\00", align 1
@ptype_info_raw_name = common dso_local global i64* null, align 8
@.str.39 = private unnamed_addr constant [32 x i8] c"?raw_name@type_info@@QEBAPEBDXZ\00", align 1
@ptype_info_name = common dso_local global i64* null, align 8
@.str.40 = private unnamed_addr constant [28 x i8] c"?name@type_info@@QEBAPEBDXZ\00", align 1
@ptype_info_before = common dso_local global i64* null, align 8
@.str.41 = private unnamed_addr constant [33 x i8] c"?before@type_info@@QEBAHAEBV1@@Z\00", align 1
@ptype_info_opequals_equals = common dso_local global i64* null, align 8
@.str.42 = private unnamed_addr constant [28 x i8] c"??8type_info@@QEBAHAEBV0@@Z\00", align 1
@ptype_info_opnot_equals = common dso_local global i64* null, align 8
@.str.43 = private unnamed_addr constant [28 x i8] c"??9type_info@@QEBAHAEBV0@@Z\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @InitFunctionPtrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitFunctionPtrs() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @GetModuleHandleA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %2, i64* @hMsvcrt, align 8
  %3 = load i64, i64* @hMsvcrt, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i64 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i64 %6, i64* @hMsvcrt, align 8
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i64, i64* @hMsvcrt, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i64, i64* @hMsvcrt, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = call i32 @win_skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %1, align 4
  br label %156

17:                                               ; preds = %7
  %18 = load i64*, i64** @pmalloc, align 8
  %19 = call i32 @SET(i64* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i64*, i64** @pfree, align 8
  %21 = call i32 @SET(i64* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i64*, i64** @pexception_vtable, align 8
  %23 = call i32 @SET(i64* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %24 = load i64*, i64** @pbad_typeid_vtable, align 8
  %25 = call i32 @SET(i64* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %26 = load i64*, i64** @pbad_cast_vtable, align 8
  %27 = call i32 @SET(i64* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i64*, i64** @p__non_rtti_object_vtable, align 8
  %29 = call i32 @SET(i64* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %30 = load i64*, i64** @p__RTtypeid, align 8
  %31 = call i32 @SET(i64* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %32 = load i64*, i64** @p__RTCastToVoid, align 8
  %33 = call i32 @SET(i64* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %34 = load i64*, i64** @p__RTDynamicCast, align 8
  %35 = call i32 @SET(i64* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %36 = load i64*, i64** @p__unDName, align 8
  %37 = call i32 @SET(i64* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %38 = load i64*, i64** @bAncientVersion, align 8
  %39 = call i32 @SETNOFAIL(i64* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %40 = load i64*, i64** @poperator_new, align 8
  %41 = call i32 @SETNOFAIL(i64* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %42 = load i64*, i64** @poperator_delete, align 8
  %43 = call i32 @SETNOFAIL(i64* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %44 = load i64*, i64** @pexception_ctor, align 8
  %45 = call i32 @SET(i64* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %46 = load i64*, i64** @pexception_copy_ctor, align 8
  %47 = call i32 @SET(i64* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %48 = load i64*, i64** @pexception_default_ctor, align 8
  %49 = call i32 @SET(i64* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %50 = load i64*, i64** @pexception_dtor, align 8
  %51 = call i32 @SET(i64* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %52 = load i64*, i64** @pexception_opequals, align 8
  %53 = call i32 @SET(i64* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %54 = load i64*, i64** @pexception_what, align 8
  %55 = call i32 @SET(i64* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  %56 = load i64*, i64** @pexception_vtable, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = bitcast i8* %59 to i64*
  store i64* %60, i64** @pexception_vector_dtor, align 8
  %61 = load i64*, i64** @pexception_vtable, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = bitcast i8* %64 to i64*
  store i64* %65, i64** @pexception_scalar_dtor, align 8
  %66 = load i64*, i64** @pbad_typeid_ctor, align 8
  %67 = call i32 @SET(i64* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %68 = load i64*, i64** @pbad_typeid_ctor_closure, align 8
  %69 = call i32 @SETNOFAIL(i64* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %70 = load i64*, i64** @pbad_typeid_copy_ctor, align 8
  %71 = call i32 @SET(i64* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %72 = load i64*, i64** @pbad_typeid_dtor, align 8
  %73 = call i32 @SET(i64* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  %74 = load i64*, i64** @pbad_typeid_opequals, align 8
  %75 = call i32 @SET(i64* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0))
  %76 = load i64*, i64** @pbad_typeid_what, align 8
  %77 = call i32 @SET(i64* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  %78 = load i64*, i64** @pbad_typeid_vtable, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = bitcast i8* %81 to i64*
  store i64* %82, i64** @pbad_typeid_vector_dtor, align 8
  %83 = load i64*, i64** @pbad_typeid_vtable, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = bitcast i8* %86 to i64*
  store i64* %87, i64** @pbad_typeid_scalar_dtor, align 8
  %88 = load i64*, i64** @pbad_cast_ctor, align 8
  %89 = call i32 @SET(i64* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  %90 = load i64*, i64** @pbad_cast_ctor2, align 8
  %91 = call i32 @SET(i64* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  %92 = load i64*, i64** @pbad_cast_ctor_closure, align 8
  %93 = call i32 @SET(i64* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0))
  %94 = load i64*, i64** @pbad_cast_copy_ctor, align 8
  %95 = call i32 @SET(i64* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0))
  %96 = load i64*, i64** @pbad_cast_dtor, align 8
  %97 = call i32 @SET(i64* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  %98 = load i64*, i64** @pbad_cast_opequals, align 8
  %99 = call i32 @SET(i64* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0))
  %100 = load i64*, i64** @pbad_cast_what, align 8
  %101 = call i32 @SET(i64* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  %102 = load i64*, i64** @pbad_cast_vtable, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = bitcast i8* %105 to i64*
  store i64* %106, i64** @pbad_cast_vector_dtor, align 8
  %107 = load i64*, i64** @pbad_cast_vtable, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = bitcast i8* %110 to i64*
  store i64* %111, i64** @pbad_cast_scalar_dtor, align 8
  %112 = load i64*, i64** @p__non_rtti_object_ctor, align 8
  %113 = call i32 @SET(i64* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0))
  %114 = load i64*, i64** @p__non_rtti_object_copy_ctor, align 8
  %115 = call i32 @SET(i64* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0))
  %116 = load i64*, i64** @p__non_rtti_object_dtor, align 8
  %117 = call i32 @SET(i64* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  %118 = load i64*, i64** @p__non_rtti_object_opequals, align 8
  %119 = call i32 @SET(i64* %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i64 0, i64 0))
  %120 = load i64*, i64** @p__non_rtti_object_what, align 8
  %121 = call i32 @SET(i64* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  %122 = load i64*, i64** @p__non_rtti_object_vtable, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = bitcast i8* %125 to i64*
  store i64* %126, i64** @p__non_rtti_object_vector_dtor, align 8
  %127 = load i64*, i64** @p__non_rtti_object_vtable, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = bitcast i8* %130 to i64*
  store i64* %131, i64** @p__non_rtti_object_scalar_dtor, align 8
  %132 = load i64*, i64** @ptype_info_dtor, align 8
  %133 = call i32 @SET(i64* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0))
  %134 = load i64*, i64** @ptype_info_raw_name, align 8
  %135 = call i32 @SET(i64* %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i64 0, i64 0))
  %136 = load i64*, i64** @ptype_info_name, align 8
  %137 = call i32 @SET(i64* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0))
  %138 = load i64*, i64** @ptype_info_before, align 8
  %139 = call i32 @SET(i64* %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i64 0, i64 0))
  %140 = load i64*, i64** @ptype_info_opequals_equals, align 8
  %141 = call i32 @SET(i64* %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0))
  %142 = load i64*, i64** @ptype_info_opnot_equals, align 8
  %143 = call i32 @SET(i64* %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0))
  %144 = load i64*, i64** @poperator_new, align 8
  %145 = icmp ne i64* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %17
  %147 = load i64*, i64** @pmalloc, align 8
  store i64* %147, i64** @poperator_new, align 8
  br label %148

148:                                              ; preds = %146, %17
  %149 = load i64*, i64** @poperator_delete, align 8
  %150 = icmp ne i64* %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = load i64*, i64** @pfree, align 8
  store i64* %152, i64** @poperator_delete, align 8
  br label %153

153:                                              ; preds = %151, %148
  %154 = call i32 (...) @init_thiscall_thunk()
  %155 = load i32, i32* @TRUE, align 4
  store i32 %155, i32* %1, align 4
  br label %156

156:                                              ; preds = %153, %14
  %157 = load i32, i32* %1, align 4
  ret i32 %157
}

declare dso_local i64 @GetModuleHandleA(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @SET(i64*, i8*) #1

declare dso_local i32 @SETNOFAIL(i64*, i8*) #1

declare dso_local i32 @init_thiscall_thunk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
