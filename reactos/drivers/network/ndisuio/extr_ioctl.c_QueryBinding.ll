; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_ioctl.c_QueryBinding.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_ioctl.c_QueryBinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_24__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@GlobalAdapterListLock = common dso_local global i32 0, align 4
@GlobalAdapterList = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@NDISUIO_ADAPTER_CONTEXT = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Query binding for index %d is adapter %wZ\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@STATUS_NO_MORE_ENTRIES = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_26__*)* @QueryBinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryBinding(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %5, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %6, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %23 = icmp ne %struct.TYPE_22__* %22, null
  br i1 %23, label %24, label %112

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 4
  br i1 %27, label %28, label %112

28:                                               ; preds = %24
  %29 = call i32 @KeAcquireSpinLock(i32* @GlobalAdapterListLock, i32* %10)
  store i32 0, i32* %11, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @GlobalAdapterList, i32 0, i32 0), align 8
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %9, align 8
  br label %31

31:                                               ; preds = %45, %28
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %33 = icmp ne %struct.TYPE_24__* %32, @GlobalAdapterList
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %42 = load i32, i32* @NDISUIO_ADAPTER_CONTEXT, align 4
  %43 = load i32, i32* @ListEntry, align 4
  %44 = call %struct.TYPE_23__* @CONTAINING_RECORD(%struct.TYPE_24__* %41, i32 %42, i32 %43)
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %5, align 8
  br label %51

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  store %struct.TYPE_24__* %50, %struct.TYPE_24__** %9, align 8
  br label %31

51:                                               ; preds = %40, %31
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @KeReleaseSpinLock(i32* @GlobalAdapterListLock, i32 %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = icmp ne %struct.TYPE_23__* %54, null
  br i1 %55, label %56, label %109

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = call i32 @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %57, %struct.TYPE_17__* %59)
  store i32 4, i32* %12, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp sle i32 %64, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %56
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = ptrtoint %struct.TYPE_22__* %79 to i64
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @RtlCopyMemory(i64 %85, i32 %89, i32 %92)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %105, i32* %8, align 4
  br label %108

106:                                              ; preds = %56
  %107 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %106, %69
  br label %111

109:                                              ; preds = %51
  %110 = load i32, i32* @STATUS_NO_MORE_ENTRIES, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %109, %108
  br label %114

112:                                              ; preds = %24, %2
  %113 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %111
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %124 = load i32, i32* @IO_NO_INCREMENT, align 4
  %125 = call i32 @IoCompleteRequest(%struct.TYPE_25__* %123, i32 %124)
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @CONTAINING_RECORD(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @DPRINT(i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @RtlCopyMemory(i64, i32, i32) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
