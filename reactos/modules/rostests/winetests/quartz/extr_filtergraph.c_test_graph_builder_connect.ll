; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtergraph.c_test_graph_builder_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtergraph.c_test_graph_builder_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_graph_builder_connect.outputW = internal constant [7 x i8] c"Output\00", align 1
@test_graph_builder_connect.inW = internal constant [3 x i8] c"In\00", align 1
@CLSID_VideoRenderer = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IVideoWindow = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to create VideoRenderer: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"AddSourceFilter failed: %#x\0A\00", align 1
@IID_IBaseFilter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"QueryInterface(IBaseFilter) failed: %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"AddFilter failed: %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"FindPin failed: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @test_graph_builder_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_graph_builder_connect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = call i32* (...) @create_graph()
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %12 = bitcast i32** %8 to i8**
  %13 = call i64 @CoCreateInstance(i32* @CLSID_VideoRenderer, i32* null, i32 %11, i32* @IID_IVideoWindow, i8** %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @IFilterGraph2_AddSourceFilter(i32* %20, i8* %21, i32* null, i32** %3)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = bitcast i32** %4 to i8**
  %31 = call i64 @IVideoWindow_QueryInterface(i32* %29, i32* @IID_IBaseFilter, i8** %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @IFilterGraph2_AddFilter(i32* %38, i32* %39, i32* null)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @IBaseFilter_FindPin(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_graph_builder_connect.outputW, i64 0, i64 0), i32** %6)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @IBaseFilter_FindPin(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_graph_builder_connect.inW, i64 0, i64 0), i32** %5)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i64 @IFilterGraph2_Connect(i32* %63, i32* %64, i32* %65)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @SUCCEEDED(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %1
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @rungraph(i32* %71)
  br label %73

73:                                               ; preds = %70, %1
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @IPin_Release(i32* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @IPin_Release(i32* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @IBaseFilter_Release(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @IBaseFilter_Release(i32* %80)
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @IVideoWindow_Release(i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @IFilterGraph2_Release(i32* %84)
  %86 = load i64, i64* %9, align 8
  ret i64 %86
}

declare dso_local i32* @create_graph(...) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IFilterGraph2_AddSourceFilter(i32*, i8*, i32*, i32**) #1

declare dso_local i64 @IVideoWindow_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IFilterGraph2_AddFilter(i32*, i32*, i32*) #1

declare dso_local i64 @IBaseFilter_FindPin(i32*, i8*, i32**) #1

declare dso_local i64 @IFilterGraph2_Connect(i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @rungraph(i32*) #1

declare dso_local i32 @IPin_Release(i32*) #1

declare dso_local i32 @IBaseFilter_Release(i32*) #1

declare dso_local i32 @IVideoWindow_Release(i32*) #1

declare dso_local i32 @IFilterGraph2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
