; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_dllredirect_section.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_dllredirect_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.strsection_header = type { i32, i32 }

@test_dllredirect_section.testlib1W = internal constant [13 x i8] c"testlib1.dll\00", align 1
@test_dllredirect_section.testlib2W = internal constant [13 x i8] c"testlib2.dll\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"testdep1.manifest\00", align 1
@manifest_wndcls1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"testdep2.manifest\00", align 1
@manifest_wndcls2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"main_wndcls.manifest\00", align 1
@manifest_wndcls_main = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"handle == INVALID_HANDLE_VALUE, error %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ActivateActCtx failed: %u\0A\00", align 1
@ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"got %u, %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"DeactivateActCtx failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dllredirect_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dllredirect_section() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca %struct.strsection_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @manifest_wndcls1, align 4
  %8 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7, i32 -1, i32* null, i32* null)
  %9 = load i32, i32* @manifest_wndcls2, align 4
  %10 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 -1, i32* null, i32* null)
  %11 = load i32, i32* @manifest_wndcls_main, align 4
  %12 = call i32 @create_manifest_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 -1, i32* null, i32* null)
  %13 = call i64 @test_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 (i32, i8*, i32, ...) @ok(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = call i32 @DeleteFileA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @DeleteFileA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @DeleteFileA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @pActivateActCtx(i64 %23, i32* %4)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 (i32, i8*, i32, ...) @ok(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %29 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 16)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 16, i32* %31, align 8
  %32 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, align 4
  %33 = call i32 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_dllredirect_section.testlib1W, i64 0, i64 0), %struct.TYPE_4__* %1)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, align 4
  %38 = call i32 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_dllredirect_section.testlib2W, i64 0, i64 0), %struct.TYPE_4__* %2)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.strsection_header*
  store %struct.strsection_header* %44, %struct.strsection_header** %3, align 8
  %45 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %46 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 4
  %49 = zext i1 %48 to i32
  %50 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %51 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %55 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 8
  %59 = zext i1 %58 to i32
  %60 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %61 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %65, %67
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %72, i64 %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @ok(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %83, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @pDeactivateActCtx(i32 0, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (...) @GetLastError()
  %91 = call i32 (i32, i8*, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @pReleaseActCtx(i64 %92)
  ret void
}

declare dso_local i32 @create_manifest_file(i8*, i32, i32, i32*, i32*) #1

declare dso_local i64 @test_create(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @pActivateActCtx(i64, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pFindActCtxSectionStringW(i32, i32*, i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @pDeactivateActCtx(i32, i32) #1

declare dso_local i32 @pReleaseActCtx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
