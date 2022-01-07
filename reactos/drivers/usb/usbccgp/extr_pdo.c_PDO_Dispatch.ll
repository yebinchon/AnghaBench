; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_PDO_Dispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_PDO_Dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"PDO_Dispatch Function %x not implemented\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PDO_Dispatch(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = call %struct.TYPE_13__* @IoGetCurrentIrpStackLocation(%struct.TYPE_12__* %8)
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %32 [
    i32 129, label %13
    i32 130, label %17
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = call i32 @PDO_HandlePnp(i32 %14, %struct.TYPE_12__* %15)
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = call i32 @PDO_HandleInternalDeviceControl(i32 %18, %struct.TYPE_12__* %19)
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call i32 @PoStartNextPowerIrp(%struct.TYPE_12__* %22)
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = load i32, i32* @IO_NO_INCREMENT, align 4
  %30 = call i32 @IoCompleteRequest(%struct.TYPE_12__* %28, i32 %29)
  %31 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = load i32, i32* @IO_NO_INCREMENT, align 4
  %43 = call i32 @IoCompleteRequest(%struct.TYPE_12__* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %21, %17, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_13__* @IoGetCurrentIrpStackLocation(%struct.TYPE_12__*) #1

declare dso_local i32 @PDO_HandlePnp(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @PDO_HandleInternalDeviceControl(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @PoStartNextPowerIrp(%struct.TYPE_12__*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
