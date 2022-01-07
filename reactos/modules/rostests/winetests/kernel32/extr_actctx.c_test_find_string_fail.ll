; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_find_string_fail.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_find_string_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__const.test_find_string_fail.data = private unnamed_addr constant %struct.TYPE_3__ { i32 8, i32 0 }, align 4
@testlib_dll = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"FindActCtxSectionStringW succeeded\0A\00", align 1
@ERROR_SXS_SECTION_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"GetLastError()=%u\0A\00", align 1
@ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION = common dso_local global i32 0, align 4
@testlib2_dll = common dso_local global i32* null, align 8
@ERROR_SXS_KEY_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_find_string_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_find_string_fail() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i64, align 8
  %3 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_find_string_fail.data to i8*), i64 8, i1 false)
  %4 = load i32*, i32** @testlib_dll, align 8
  %5 = call i64 @pFindActCtxSectionStringW(i32 0, i32* null, i32 100, i32* %4, %struct.TYPE_3__* %1)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = call i64 (...) @GetLastError()
  %12 = load i64, i64* @ERROR_SXS_SECTION_NOT_FOUND, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, align 4
  %18 = load i32*, i32** @testlib2_dll, align 8
  %19 = call i64 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %17, i32* %18, %struct.TYPE_3__* %1)
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = call i64 (...) @GetLastError()
  %26 = load i64, i64* @ERROR_SXS_KEY_NOT_FOUND, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, align 4
  %32 = load i32*, i32** @testlib_dll, align 8
  %33 = call i64 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %31, i32* %32, %struct.TYPE_3__* null)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 (...) @GetLastError()
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, align 4
  %46 = call i64 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %45, i32* null, %struct.TYPE_3__* %1)
  store i64 %46, i64* %2, align 8
  %47 = load i64, i64* %2, align 8
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = call i64 (...) @GetLastError()
  %53 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 (...) @GetLastError()
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, align 4
  %60 = load i32*, i32** @testlib_dll, align 8
  %61 = call i64 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %59, i32* %60, %struct.TYPE_3__* %1)
  store i64 %61, i64* %2, align 8
  %62 = load i64, i64* %2, align 8
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %67 = call i64 (...) @GetLastError()
  %68 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 (...) @GetLastError()
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 35, i32* %73, align 4
  %74 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, align 4
  %75 = load i32*, i32** @testlib_dll, align 8
  %76 = call i64 @pFindActCtxSectionStringW(i32 0, i32* null, i32 %74, i32* %75, %struct.TYPE_3__* %1)
  store i64 %76, i64* %2, align 8
  %77 = load i64, i64* %2, align 8
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %82 = call i64 (...) @GetLastError()
  %83 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 (...) @GetLastError()
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pFindActCtxSectionStringW(i32, i32*, i32, i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
