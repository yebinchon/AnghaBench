; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/strmbase/extr_pin.c_BaseInputPin_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/strmbase/extr_pin.c_BaseInputPin_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@PINDIR_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Pin direction(%x) != PINDIR_INPUT\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BaseInputPin_Construct(i32* %0, i32 %1, %struct.TYPE_15__* %2, %struct.TYPE_16__* %3, i32 %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  %17 = load i32**, i32*** %15, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 4
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PINDIR_INPUT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %7
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %38, i32* %8, align 4
  br label %66

39:                                               ; preds = %7
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.TYPE_17__* @CoTaskMemAlloc(i32 %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %16, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %43 = icmp ne %struct.TYPE_17__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %45, i32* %8, align 4
  br label %66

46:                                               ; preds = %39
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %53 = call i32 @InputPin_Init(i32* %47, %struct.TYPE_15__* %48, %struct.TYPE_16__* %49, i32 %50, i32* %51, %struct.TYPE_17__* %52)
  %54 = call i64 @SUCCEEDED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %15, align 8
  store i32* %59, i32** %60, align 8
  %61 = load i32, i32* @S_OK, align 4
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %46
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %64 = call i32 @CoTaskMemFree(%struct.TYPE_17__* %63)
  %65 = load i32, i32* @E_FAIL, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %56, %44, %33
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local %struct.TYPE_17__* @CoTaskMemAlloc(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @InputPin_Init(i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
