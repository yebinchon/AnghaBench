; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_AVISaveOptions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_AVISaveOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVIERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"0: got 0x%x and %p (expected AVIERR_OK)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"1: got 0x%x and %p (expected AVIERR_OK)\0A\00", align 1
@winetest0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"0: got 0x%x (expected AVIERR_OK)\0A\00", align 1
@winetest1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"1: got 0x%x (expected AVIERR_OK)\0A\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@ICMF_CHOOSE_DATARATE = common dso_local global i32 0, align 4
@ICMF_CHOOSE_KEYFRAME = common dso_local global i32 0, align 4
@ICMF_CHOOSE_ALLCOMPRESSORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"got %u with 0x%x/%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"got 0x%x with 0x%x/%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"0: got refcount %u (expected 0)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"1: got refcount %u (expected 0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AVISaveOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AVISaveOptions() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca [2 x i32*], align 16
  %3 = alloca [2 x i32*], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = bitcast [2 x i32*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %9 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  store i32* %8, i32** %9, align 16
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %11 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  store i32* %10, i32** %11, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %13 = call i32 @ZeroMemory(i32* %12, i32 8)
  %14 = call i32 @SetLastError(i32 -559038737)
  %15 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %16 = call i64 @CreateEditableStream(i32** %15, i32* null)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @AVIERR_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %23 = load i32*, i32** %22, align 16
  %24 = call i32 (i32, i8*, i64, ...) @ok(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %21, i32* %23)
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %27 = call i64 @CreateEditableStream(i32** %26, i32* null)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @AVIERR_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 (i32, i8*, i64, ...) @ok(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32* %34)
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %38 = load i32*, i32** %37, align 16
  %39 = load i32, i32* @winetest0, align 4
  %40 = call i64 @EditStreamSetNameA(i32* %38, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @AVIERR_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %4, align 8
  %46 = call i32 (i32, i8*, i64, ...) @ok(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = call i32 @SetLastError(i32 -559038737)
  %48 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @winetest1, align 4
  %51 = call i64 @EditStreamSetNameA(i32* %49, i32 %50)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @AVIERR_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %4, align 8
  %57 = call i32 (i32, i8*, i64, ...) @ok(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* @winetest_interactive, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %0
  %61 = call i32 @SetLastError(i32 -559038737)
  %62 = load i32, i32* @ICMF_CHOOSE_DATARATE, align 4
  %63 = load i32, i32* @ICMF_CHOOSE_KEYFRAME, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ICMF_CHOOSE_ALLCOMPRESSORS, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %68 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %69 = call i64 @AVISaveOptions(i32 0, i32 %66, i32 2, i32** %67, i32** %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 (...) @GetLastError()
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %60, %0
  %75 = call i32 @SetLastError(i32 -559038737)
  %76 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %77 = call i64 @AVISaveOptionsFree(i32 2, i32** %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @AVIERR_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %6, align 8
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (...) @GetLastError()
  %85 = call i32 (i32, i8*, i64, ...) @ok(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %82, i32 %83, i32 %84)
  %86 = call i32 @SetLastError(i32 -559038737)
  %87 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %88 = load i32*, i32** %87, align 16
  %89 = call i64 @AVIStreamRelease(i32* %88)
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %5, align 8
  %94 = call i32 (i32, i8*, i64, ...) @ok(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %93)
  %95 = call i32 @SetLastError(i32 -559038737)
  %96 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @AVIStreamRelease(i32* %97)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %5, align 8
  %103 = call i32 (i32, i8*, i64, ...) @ok(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %102)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @CreateEditableStream(i32**, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @EditStreamSetNameA(i32*, i32) #2

declare dso_local i64 @AVISaveOptions(i32, i32, i32, i32**, i32**) #2

declare dso_local i32 @trace(i8*, i64, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @AVISaveOptionsFree(i32, i32**) #2

declare dso_local i64 @AVIStreamRelease(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
