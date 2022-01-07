; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_get_manifest_in_manifest_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_get_manifest_in_manifest_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32 }
%struct.assembly_identity = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32*, i32*, i64 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"loading manifest file %S\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@OBJ_OPENIF = common dso_local global i32 0, align 4
@STANDARD_RIGHTS_REQUIRED = common dso_local global i32 0, align 4
@SECTION_QUERY = common dso_local global i32 0, align 4
@SECTION_MAP_READ = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@ViewShare = common dso_local global i32 0, align 4
@FileStandardInformation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.actctx_loader*, %struct.assembly_identity*, i32, i32, i32, i32)* @get_manifest_in_manifest_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_manifest_in_manifest_file(%struct.actctx_loader* %0, %struct.assembly_identity* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.actctx_loader*, align 8
  %9 = alloca %struct.assembly_identity*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca %struct.TYPE_11__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store %struct.actctx_loader* %0, %struct.actctx_loader** %8, align 8
  store %struct.assembly_identity* %1, %struct.assembly_identity** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 40, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %29 = load i32, i32* @OBJ_OPENIF, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @STANDARD_RIGHTS_REQUIRED, align 4
  %36 = load i32, i32* @SECTION_QUERY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SECTION_MAP_READ, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PAGE_READONLY, align 4
  %41 = load i32, i32* @SEC_COMMIT, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @NtCreateSection(i32* %16, i32 %39, %struct.TYPE_10__* %17, %struct.TYPE_11__* %18, i32 %40, i32 %41, i32 %42)
  store i64 %43, i64* %20, align 8
  %44 = load i64, i64* %20, align 8
  %45 = load i64, i64* @STATUS_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %6
  %48 = load i64, i64* %20, align 8
  store i64 %48, i64* %7, align 8
  br label %86

49:                                               ; preds = %6
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i64 0, i64* %21, align 8
  store i8* null, i8** %22, align 8
  %51 = load i32, i32* %16, align 4
  %52 = call i32 (...) @NtCurrentProcess()
  %53 = load i32, i32* @ViewShare, align 4
  %54 = load i32, i32* @PAGE_READONLY, align 4
  %55 = call i64 @NtMapViewOfSection(i32 %51, i32 %52, i8** %22, i32 0, i32 0, %struct.TYPE_11__* %19, i64* %21, i32 %53, i32 0, i32 %54)
  store i64 %55, i64* %20, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @NtClose(i32 %56)
  %58 = load i64, i64* %20, align 8
  %59 = load i64, i64* @STATUS_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i64, i64* %20, align 8
  store i64 %62, i64* %7, align 8
  br label %86

63:                                               ; preds = %49
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @FileStandardInformation, align 4
  %66 = call i64 @NtQueryInformationFile(i32 %64, i32* %15, %struct.TYPE_12__* %14, i32 8, i32 %65)
  store i64 %66, i64* %20, align 8
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* @STATUS_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.actctx_loader*, %struct.actctx_loader** %8, align 8
  %72 = load %struct.assembly_identity*, %struct.assembly_identity** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i8*, i8** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @parse_manifest(%struct.actctx_loader* %71, %struct.assembly_identity* %72, i32 %73, i32 %74, i32 %75, i8* %76, i64 %79)
  store i64 %80, i64* %20, align 8
  br label %81

81:                                               ; preds = %70, %63
  %82 = call i32 (...) @NtCurrentProcess()
  %83 = load i8*, i8** %22, align 8
  %84 = call i32 @NtUnmapViewOfSection(i32 %82, i8* %83)
  %85 = load i64, i64* %20, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %81, %61, %47
  %87 = load i64, i64* %7, align 8
  ret i64 %87
}

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i64 @NtCreateSection(i32*, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @NtMapViewOfSection(i32, i32, i8**, i32, i32, %struct.TYPE_11__*, i64*, i32, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @NtClose(i32) #1

declare dso_local i64 @NtQueryInformationFile(i32, i32*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @parse_manifest(%struct.actctx_loader*, %struct.assembly_identity*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @NtUnmapViewOfSection(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
