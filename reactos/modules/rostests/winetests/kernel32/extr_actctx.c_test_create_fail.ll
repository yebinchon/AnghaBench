; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_create_fail.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_create_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"nonexistent.manifest\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"handle != INVALID_HANDLE_VALUE\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"GetLastError == %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wrong_manifest1\0A\00", align 1
@wrong_manifest1 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"wrong_manifest2\0A\00", align 1
@wrong_manifest2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"wrong_manifest3\0A\00", align 1
@wrong_manifest3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"wrong_manifest4\0A\00", align 1
@wrong_manifest4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"wrong_manifest5\0A\00", align 1
@wrong_manifest5 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"wrong_manifest6\0A\00", align 1
@wrong_manifest6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"wrong_manifest7\0A\00", align 1
@wrong_manifest7 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"wrong_manifest8\0A\00", align 1
@wrong_manifest8 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"wrong_manifest9\0A\00", align 1
@wrong_manifest9 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"wrong_manifest10\0A\00", align 1
@wrong_manifest10 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"UTF-16 manifest1 without BOM\0A\00", align 1
@manifest1 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"manifest2\0A\00", align 1
@manifest2 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"manifest2+depmanifest1\0A\00", align 1
@wrong_depmanifest1 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_create_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create_fail() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* @CP_ACP, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = call i32 @MultiByteToWideChar(i32 %9, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 -1, i32* %8, i32 %10)
  %12 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 16, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* %8, i32** %14, align 8
  %15 = call i64 @pCreateActCtxW(%struct.TYPE_4__* %1)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* @wrong_manifest1, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @test_create_and_fail(i32 %28, i32* null, i32 0, i32 %29)
  %31 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32, i32* @wrong_manifest2, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @test_create_and_fail(i32 %32, i32* null, i32 0, i32 %33)
  %35 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32, i32* @wrong_manifest3, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @test_create_and_fail(i32 %36, i32* null, i32 1, i32 %37)
  %39 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32, i32* @wrong_manifest4, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @test_create_and_fail(i32 %40, i32* null, i32 1, i32 %41)
  %43 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i32, i32* @wrong_manifest5, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @test_create_and_fail(i32 %44, i32* null, i32 0, i32 %45)
  %47 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %48 = load i32, i32* @wrong_manifest6, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @test_create_and_fail(i32 %48, i32* null, i32 0, i32 %49)
  %51 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %52 = load i32, i32* @wrong_manifest7, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @test_create_and_fail(i32 %52, i32* null, i32 1, i32 %53)
  %55 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %56 = load i32, i32* @wrong_manifest8, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @test_create_and_fail(i32 %56, i32* null, i32 0, i32 %57)
  %59 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %60 = load i32, i32* @wrong_manifest9, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @test_create_and_fail(i32 %60, i32* null, i32 0, i32 %61)
  %63 = call i32 @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %64 = load i32, i32* @wrong_manifest10, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @test_create_and_fail(i32 %64, i32* null, i32 0, i32 %65)
  %67 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %68 = load i32, i32* @manifest1, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32 @test_create_wide_and_fail(i32 %68, i32 %69)
  %71 = call i32 @trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %72 = load i32, i32* @manifest2, align 4
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i32 @test_create_and_fail(i32 %72, i32* null, i32 0, i32 %73)
  %75 = call i32 @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %76 = load i32, i32* @manifest2, align 4
  %77 = load i32*, i32** @wrong_depmanifest1, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @test_create_and_fail(i32 %76, i32* %77, i32 0, i32 %78)
  %80 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i64 @pCreateActCtxW(%struct.TYPE_4__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @test_create_and_fail(i32, i32*, i32, i32) #2

declare dso_local i32 @test_create_wide_and_fail(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
