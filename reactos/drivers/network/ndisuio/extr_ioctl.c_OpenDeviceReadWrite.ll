; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_ioctl.c_OpenDeviceReadWrite.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_ioctl.c_OpenDeviceReadWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_22__, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_26__*, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_27__ = type { i64, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Binding file object 0x%x to device %wZ\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_29__*)* @OpenDeviceReadWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDeviceReadWrite(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_25__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %101

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = call %struct.TYPE_27__* @FindAdapterContextByName(%struct.TYPE_25__* %6)
  store %struct.TYPE_27__* %31, %struct.TYPE_27__** %9, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %33 = icmp ne %struct.TYPE_27__* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %22
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 3
  %38 = call i32 @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %35, i32* %37)
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 1
  %41 = call i32 @KeAcquireSpinLock(i32* %40, i32* %11)
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @KeReleaseSpinLock(i32* %48, i32 %49)
  %51 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %51, i32* %8, align 4
  br label %56

52:                                               ; preds = %34
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %54 = call i32 @ReferenceAdapterContext(%struct.TYPE_27__* %53)
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %46
  br label %59

57:                                               ; preds = %22
  %58 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load i32, i32* @NonPagedPool, align 4
  %65 = call %struct.TYPE_26__* @ExAllocatePool(i32 %64, i32 16)
  store %struct.TYPE_26__* %65, %struct.TYPE_26__** %10, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %67 = icmp ne %struct.TYPE_26__* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 2
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %71, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  store %struct.TYPE_27__* %75, %struct.TYPE_27__** %77, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  store %struct.TYPE_26__* %78, %struct.TYPE_26__** %80, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = call i32 @InsertTailList(i32* %82, i32* %84)
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @KeReleaseSpinLock(i32* %87, i32 %88)
  %90 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %90, i32* %8, align 4
  br label %99

91:                                               ; preds = %63
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @KeReleaseSpinLock(i32* %93, i32 %94)
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %97 = call i32 @DereferenceAdapterContextWithOpenEntry(%struct.TYPE_27__* %96, i32* null)
  %98 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %91, %68
  br label %100

100:                                              ; preds = %99, %59
  br label %103

101:                                              ; preds = %2
  %102 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %100
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %112 = load i32, i32* @IO_NO_INCREMENT, align 4
  %113 = call i32 @IoCompleteRequest(%struct.TYPE_28__* %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_27__* @FindAdapterContextByName(%struct.TYPE_25__*) #1

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @ReferenceAdapterContext(%struct.TYPE_27__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local %struct.TYPE_26__* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @DereferenceAdapterContextWithOpenEntry(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
