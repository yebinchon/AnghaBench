; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_main.c_TiCloseFileObject.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_main.c_TiCloseFileObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }

@MIN_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Parameters are invalid.\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TRANS_CONTEXT_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TiCloseFileObject(i32 %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %11 = call %struct.TYPE_23__* @IoGetCurrentIrpStackLocation(%struct.TYPE_22__* %10)
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %6, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %7, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %18 = icmp ne %struct.TYPE_21__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @MIN_TRACE, align 4
  %21 = call i32 @TI_DbgPrint(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %53 [
    i32 128, label %29
    i32 130, label %37
    i32 129, label %45
  ]

29:                                               ; preds = %23
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = call i32 @FileCloseAddress(%struct.TYPE_20__* %8)
  store i32 %36, i32* %9, align 4
  br label %55

37:                                               ; preds = %23
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = call i32 @FileCloseConnection(%struct.TYPE_20__* %8)
  store i32 %44, i32* %9, align 4
  br label %55

45:                                               ; preds = %23
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = call i32 @FileCloseControlChannel(%struct.TYPE_20__* %8)
  store i32 %52, i32* %9, align 4
  br label %55

53:                                               ; preds = %23
  %54 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %45, %37, %29
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @NT_SUCCESS(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %61 = load i32, i32* @TRANS_CONTEXT_TAG, align 4
  %62 = call i32 @ExFreePoolWithTag(%struct.TYPE_21__* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %63, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_23__* @IoGetCurrentIrpStackLocation(%struct.TYPE_22__*) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @FileCloseAddress(%struct.TYPE_20__*) #1

declare dso_local i32 @FileCloseConnection(%struct.TYPE_20__*) #1

declare dso_local i32 @FileCloseControlChannel(%struct.TYPE_20__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
