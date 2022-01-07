; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_wndclass_section.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_wndclass_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i64 }
%struct.wndclass_redirect_data = type { i32 }
%struct.strsection_header = type { i32, i32 }

@test_wndclass_section.cls1W = internal constant [18 x i8] c"1.2.3.4!wndClass1\00", align 16
@.str = private unnamed_addr constant [18 x i8] c"testdep1.manifest\00", align 1
@manifest_wndcls1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"testdep2.manifest\00", align 1
@manifest_wndcls2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"main_wndcls.manifest\00", align 1
@manifest_wndcls_main = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"handle == INVALID_HANDLE_VALUE, error %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ActivateActCtx failed: %u\0A\00", align 1
@ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION = common dso_local global i32 0, align 4
@wndClass1W = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@wndClass3W = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"got %u, %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"DeactivateActCtx failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wndclass_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wndclass_section() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca %struct.wndclass_redirect_data*, align 8
  %4 = alloca %struct.strsection_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @manifest_wndcls1, align 4
  %10 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9, i32 -1, i32* null, i32* null)
  %11 = load i32, i32* @manifest_wndcls2, align 4
  %12 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 -1, i32* null, i32* null)
  %13 = load i32, i32* @manifest_wndcls_main, align 4
  %14 = call i32 @create_manifest_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 -1, i32* null, i32* null)
  %15 = call i64 @test_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = call i32 @DeleteFileA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @DeleteFileA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @DeleteFileA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @pActivateActCtx(i64 %25, i32* %5)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, i32, ...) @ok(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 32)
  %31 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 32)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 32, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 32, i32* %33, align 8
  %34 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION, align 4
  %35 = load i8*, i8** @wndClass1W, align 8
  %36 = call i32 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %34, i8* %35, %struct.TYPE_4__* %1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i8*, i32, ...) @ok(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION, align 4
  %41 = load i8*, i8** @wndClass3W, align 8
  %42 = call i32 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %40, i8* %41, %struct.TYPE_4__* %2)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.strsection_header*
  store %struct.strsection_header* %48, %struct.strsection_header** %4, align 8
  %49 = load %struct.strsection_header*, %struct.strsection_header** %4, align 8
  %50 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 4
  %53 = zext i1 %52 to i32
  %54 = load %struct.strsection_header*, %struct.strsection_header** %4, align 8
  %55 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.strsection_header*, %struct.strsection_header** %4, align 8
  %59 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %61, 8
  %63 = zext i1 %62 to i32
  %64 = load %struct.strsection_header*, %struct.strsection_header** %4, align 8
  %65 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %69, %71
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i8*, i32, ...) @ok(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %76, i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %81, %83
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %87, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.wndclass_redirect_data*
  store %struct.wndclass_redirect_data* %93, %struct.wndclass_redirect_data** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %3, align 8
  %98 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = bitcast i32* %101 to i8*
  store i8* %102, i8** %7, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @lstrcmpW(i8* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wndclass_section.cls1W, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @wine_dbgstr_w(i8* %108)
  %110 = call i32 (i32, i8*, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.wndclass_redirect_data*
  store %struct.wndclass_redirect_data* %113, %struct.wndclass_redirect_data** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %3, align 8
  %118 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = bitcast i32* %121 to i8*
  store i8* %122, i8** %7, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** @wndClass3W, align 8
  %125 = call i32 @lstrcmpW(i8* %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @wine_dbgstr_w(i8* %129)
  %131 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @pDeactivateActCtx(i32 0, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (...) @GetLastError()
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %135)
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @pReleaseActCtx(i64 %137)
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

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @pDeactivateActCtx(i32, i32) #1

declare dso_local i32 @pReleaseActCtx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
