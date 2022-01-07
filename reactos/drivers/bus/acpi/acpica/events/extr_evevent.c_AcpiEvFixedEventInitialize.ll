; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evevent.c_AcpiEvFixedEventInitialize.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evevent.c_AcpiEvFixedEventInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@AcpiGbl_FixedEventHandlers = common dso_local global %struct.TYPE_4__* null, align 8
@AcpiGbl_FixedEventInfo = common dso_local global %struct.TYPE_3__* null, align 8
@ACPI_DISABLE_EVENT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @AcpiEvFixedEventInitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiEvFixedEventInitialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_FixedEventHandlers, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_FixedEventHandlers, align 8
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AcpiGbl_FixedEventInfo, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 255
  br i1 %22, label %23, label %37

23:                                               ; preds = %8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AcpiGbl_FixedEventInfo, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ACPI_DISABLE_EVENT, align 4
  %30 = call i32 @AcpiWriteBitRegister(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %1, align 4
  br label %43

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %8
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %2, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %2, align 8
  br label %4

41:                                               ; preds = %4
  %42 = load i32, i32* @AE_OK, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @AcpiWriteBitRegister(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
