; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_videorenderer.c_test_basefilter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_videorenderer.c_test_basefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pVideoRenderer = common dso_local global i32 0, align 4
@IID_IBaseFilter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"No IBaseFilter\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"hr = %08x and not E_POINTER\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"hr = %08x and not S_OK\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"hr = %08x and not E_INVALIDARG\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"hr = %08x instead of S_FALSE\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"pins[0] = %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"pins[1] = %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ref is %u and not 0!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_basefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basefilter() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %6 = load i32, i32* @pVideoRenderer, align 4
  %7 = bitcast i32** %2 to i8**
  %8 = call i32 @IUnknown_QueryInterface(i32 %6, i32* @IID_IBaseFilter, i8** %7)
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @skip(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %107

13:                                               ; preds = %0
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @IBaseFilter_EnumPins(i32* %14, i32** null)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @E_POINTER, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @IBaseFilter_EnumPins(i32* %23, i32** %1)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @IEnumPins_Next(i32* %32, i32 1, i8** null, i8** null)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @E_POINTER, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %5, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %1, align 8
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %43 = call i64 @IEnumPins_Next(i32* %41, i32 2, i8** %42, i8** null)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @E_INVALIDARG, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  store i8* inttoptr (i64 57005 to i8*), i8** %51, align 16
  %52 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1
  store i8* inttoptr (i64 57069 to i8*), i8** %52, align 8
  %53 = load i32*, i32** %1, align 8
  %54 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %55 = call i64 @IEnumPins_Next(i32* %53, i32 2, i8** %54, i8** %4)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @S_FALSE, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %5, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %64 = load i8*, i8** %63, align 16
  %65 = icmp ne i8* %64, inttoptr (i64 57005 to i8*)
  br i1 %65, label %66, label %70

66:                                               ; preds = %13
  %67 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %68 = load i8*, i8** %67, align 16
  %69 = icmp ne i8* %68, null
  br label %70

70:                                               ; preds = %66, %13
  %71 = phi i1 [ false, %13 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %74 = load i8*, i8** %73, align 16
  %75 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %77 = load i8*, i8** %76, align 16
  %78 = icmp ne i8* %77, inttoptr (i64 57005 to i8*)
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %81 = load i8*, i8** %80, align 16
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %85 = load i8*, i8** %84, align 16
  %86 = call i32 @test_pin(i8* %85)
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %88 = load i8*, i8** %87, align 16
  %89 = call i32 @IPin_Release(i8* %88)
  br label %90

90:                                               ; preds = %83, %79, %70
  %91 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp eq i8* %92, inttoptr (i64 57069 to i8*)
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i8* @IEnumPins_Release(i32* %98)
  store i8* %99, i8** %4, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = icmp eq i8* %100, null
  %102 = zext i1 %101 to i32
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @IBaseFilter_Release(i32* %105)
  br label %107

107:                                              ; preds = %90, %11
  ret void
}

declare dso_local i32 @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IBaseFilter_EnumPins(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i64 @IEnumPins_Next(i32*, i32, i8**, i8**) #1

declare dso_local i32 @test_pin(i8*) #1

declare dso_local i32 @IPin_Release(i8*) #1

declare dso_local i8* @IEnumPins_Release(i32*) #1

declare dso_local i32 @IBaseFilter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
