; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_QueryBusInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_PDO_QueryBusInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@PagedPool = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@GUID_ACPI_INTERFACE_STANDARD = common dso_local global i32 0, align 4
@InternalPowerBus = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Bus_PDO_QueryBusInformation(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = call i32 (...) @PAGED_CODE()
  %8 = load i32, i32* @PagedPool, align 4
  %9 = call %struct.TYPE_7__* @ExAllocatePoolWithTag(i32 %8, i32 4, i8 signext 65)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* @GUID_ACPI_INTERFACE_STANDARD, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @InternalPowerBus, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = ptrtoint %struct.TYPE_7__* %23 to i64
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %14, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local %struct.TYPE_7__* @ExAllocatePoolWithTag(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
