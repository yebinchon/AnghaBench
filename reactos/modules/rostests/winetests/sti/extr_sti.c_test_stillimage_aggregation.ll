; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/sti/extr_sti.c_test_stillimage_aggregation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/sti/extr_sti.c_test_stillimage_aggregation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@aggregator_vtbl = common dso_local global i32 0, align 4
@__const.test_stillimage_aggregation.aggregator = private unnamed_addr constant %struct.TYPE_5__ { i32* @aggregator_vtbl }, align 8
@STI_VERSION_REAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@aggregator_addref_called = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"the aggregated IStillImageW shouldn't delegate\0A\00", align 1
@IID_IStillImageW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"the aggregated IStillImageW and its queried IStillImageW unexpectedly match\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"the created IStillImageW's IStillImageW should delegate\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"could not query for IID_IStillImageW, hr = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"could not create StillImageW, hr = 0x%X\0A\00", align 1
@CLSID_Sti = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [91 x i8] c"CoCreateInstance unexpectedly succeeded when querying for IStillImageW during aggregation\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@CLASS_E_NOAGGREGATION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [95 x i8] c"CoCreateInstance unexpectedly failed when querying for IUnknown during aggregation, hr = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"No StiCreateInstanceW function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_stillimage_aggregation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stillimage_aggregation() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  br i1 true, label %6, label %94

6:                                                ; preds = %0
  %7 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_5__* @__const.test_stillimage_aggregation.aggregator to i8*), i64 8, i1 false)
  %8 = call i32 @GetModuleHandleA(i32* null)
  %9 = load i32, i32* @STI_VERSION_REAL, align 4
  %10 = call i64 @pStiCreateInstanceW(i32 %8, i32 %9, i32** %2, %struct.TYPE_5__* %1)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @SUCCEEDED(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %6
  store i32* null, i32** %5, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* @aggregator_addref_called, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @IStillImage_AddRef(i32* %16)
  %18 = load i32, i32* @aggregator_addref_called, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @IStillImage_Release(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = bitcast i32** %5 to i8**
  %27 = call i64 @IStillImage_QueryInterface(i32* %25, i32* @IID_IStillImageW, i8** %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @SUCCEEDED(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %14
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* @aggregator_addref_called, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @IStillImage_AddRef(i32* %38)
  %40 = load i32, i32* @aggregator_addref_called, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @IStillImage_Release(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @IStillImage_Release(i32* %44)
  br label %49

46:                                               ; preds = %14
  %47 = load i64, i64* %4, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %46, %31
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @IStillImage_Release(i32* %50)
  br label %55

52:                                               ; preds = %6
  %53 = load i64, i64* %4, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @CLSCTX_ALL, align 4
  %57 = bitcast i32** %2 to i8**
  %58 = call i64 @CoCreateInstance(i32* @CLSID_Sti, %struct.TYPE_5__* %1, i32 %56, i32* @IID_IStillImageW, i8** %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @FAILED(i64 %59)
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @SUCCEEDED(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @IStillImage_Release(i32* %66)
  br label %68

68:                                               ; preds = %65, %55
  %69 = load i32, i32* @CLSCTX_ALL, align 4
  %70 = bitcast %struct.TYPE_5__** %3 to i8**
  %71 = call i64 @CoCreateInstance(i32* @CLSID_Sti, %struct.TYPE_5__* %1, i32 %69, i32* @IID_IUnknown, i8** %70)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @SUCCEEDED(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @CLASS_E_NOAGGREGATION, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @broken(i32 %79)
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %75, %68
  %83 = phi i1 [ true, %68 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %4, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* %4, align 8
  %88 = call i64 @SUCCEEDED(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = call i32 @IUnknown_Release(%struct.TYPE_5__* %91)
  br label %93

93:                                               ; preds = %90, %82
  br label %96

94:                                               ; preds = %0
  %95 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %93
  ret void
}

declare dso_local i64 @pStiCreateInstanceW(i32, i32, i32**, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @IStillImage_AddRef(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IStillImage_Release(i32*) #1

declare dso_local i64 @IStillImage_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @CoCreateInstance(i32*, %struct.TYPE_5__*, i32, i32*, i8**) #1

declare dso_local i32 @FAILED(i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IUnknown_Release(%struct.TYPE_5__*) #1

declare dso_local i32 @skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
