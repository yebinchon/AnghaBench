; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_get_manifest_in_pe_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_get_manifest_in_pe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32 }
%struct.assembly_identity = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32*, i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [4 x i32] [i32 35, i32 37, i32 117, i32 0], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"looking for res %S in %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i32] [i32 60, i32 78, i32 85, i32 76, i32 76, i32 62, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@OBJ_OPENIF = common dso_local global i32 0, align 4
@STANDARD_RIGHTS_REQUIRED = common dso_local global i32 0, align 4
@SECTION_QUERY = common dso_local global i32 0, align 4
@SECTION_MAP_READ = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@ViewShare = common dso_local global i32 0, align 4
@STATUS_INVALID_IMAGE_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.actctx_loader*, %struct.assembly_identity*, i8*, i8*, i32, i32, i8*, i32)* @get_manifest_in_pe_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_manifest_in_pe_file(%struct.actctx_loader* %0, %struct.assembly_identity* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.actctx_loader*, align 8
  %11 = alloca %struct.assembly_identity*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  %21 = alloca %struct.TYPE_7__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca [20 x i8], align 16
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.actctx_loader* %0, %struct.actctx_loader** %10, align 8
  store %struct.assembly_identity* %1, %struct.assembly_identity** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %28 = load i8*, i8** %16, align 8
  store i8* %28, i8** %26, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = ashr i32 %30, 16
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %8
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %25, i64 0, i64 0
  %35 = load i8*, i8** %16, align 8
  %36 = call i32 @PtrToUlong(i8* %35)
  %37 = call i32 @sprintfW(i8* %34, i8* bitcast ([4 x i32]* @.str to i8*), i32 %36)
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %25, i64 0, i64 0
  store i8* %38, i8** %26, align 8
  br label %39

39:                                               ; preds = %33, %8
  %40 = load i8*, i8** %26, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i8*, i8** %12, align 8
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i8* [ %44, %43 ], [ bitcast ([7 x i32]* @.str.2 to i8*), %45 ]
  %48 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 40, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %53 = load i32, i32* @OBJ_OPENIF, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @STANDARD_RIGHTS_REQUIRED, align 4
  %60 = load i32, i32* @SECTION_QUERY, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SECTION_MAP_READ, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @PAGE_READONLY, align 4
  %65 = load i32, i32* @SEC_COMMIT, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i64 @NtCreateSection(i32* %18, i32 %63, %struct.TYPE_6__* %19, %struct.TYPE_7__* %20, i32 %64, i32 %65, i32 %66)
  store i64 %67, i64* %22, align 8
  %68 = load i64, i64* %22, align 8
  %69 = load i64, i64* @STATUS_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %46
  %72 = load i64, i64* %22, align 8
  store i64 %72, i64* %9, align 8
  br label %124

73:                                               ; preds = %46
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i64 0, i64* %74, align 8
  store i64 0, i64* %23, align 8
  store i8* null, i8** %24, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call i32 (...) @NtCurrentProcess()
  %77 = load i32, i32* @ViewShare, align 4
  %78 = load i32, i32* @PAGE_READONLY, align 4
  %79 = call i64 @NtMapViewOfSection(i32 %75, i32 %76, i8** %24, i32 0, i32 0, %struct.TYPE_7__* %21, i64* %23, i32 %77, i32 0, i32 %78)
  store i64 %79, i64* %22, align 8
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @NtClose(i32 %80)
  %82 = load i64, i64* %22, align 8
  %83 = load i64, i64* @STATUS_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i64, i64* %22, align 8
  store i64 %86, i64* %9, align 8
  br label %124

87:                                               ; preds = %73
  %88 = load i8*, i8** %24, align 8
  %89 = call i64 @RtlImageNtHeader(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = load i8*, i8** %24, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = or i32 %93, 1
  store i32 %94, i32* %27, align 4
  %95 = load i8*, i8** %16, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.actctx_loader*, %struct.actctx_loader** %10, align 8
  %99 = load %struct.assembly_identity*, %struct.assembly_identity** %11, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %27, align 4
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i64 @get_manifest_in_module(%struct.actctx_loader* %98, %struct.assembly_identity* %99, i8* %100, i8* %101, i32 %102, i32 %103, i8* %104, i32 %105)
  store i64 %106, i64* %22, align 8
  br label %116

107:                                              ; preds = %91
  %108 = load %struct.actctx_loader*, %struct.actctx_loader** %10, align 8
  %109 = load %struct.assembly_identity*, %struct.assembly_identity** %11, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i64 @search_manifest_in_module(%struct.actctx_loader* %108, %struct.assembly_identity* %109, i8* %110, i8* %111, i32 %112, i32 %113, i32 %114)
  store i64 %115, i64* %22, align 8
  br label %116

116:                                              ; preds = %107, %97
  br label %119

117:                                              ; preds = %87
  %118 = load i64, i64* @STATUS_INVALID_IMAGE_FORMAT, align 8
  store i64 %118, i64* %22, align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = call i32 (...) @NtCurrentProcess()
  %121 = load i8*, i8** %24, align 8
  %122 = call i32 @NtUnmapViewOfSection(i32 %120, i8* %121)
  %123 = load i64, i64* %22, align 8
  store i64 %123, i64* %9, align 8
  br label %124

124:                                              ; preds = %119, %85, %71
  %125 = load i64, i64* %9, align 8
  ret i64 %125
}

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @PtrToUlong(i8*) #1

declare dso_local i32 @DPRINT(i8*, i8*, i8*) #1

declare dso_local i64 @NtCreateSection(i32*, i32, %struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @NtMapViewOfSection(i32, i32, i8**, i32, i32, %struct.TYPE_7__*, i64*, i32, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @NtClose(i32) #1

declare dso_local i64 @RtlImageNtHeader(i8*) #1

declare dso_local i64 @get_manifest_in_module(%struct.actctx_loader*, %struct.assembly_identity*, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @search_manifest_in_module(%struct.actctx_loader*, %struct.assembly_identity*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @NtUnmapViewOfSection(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
