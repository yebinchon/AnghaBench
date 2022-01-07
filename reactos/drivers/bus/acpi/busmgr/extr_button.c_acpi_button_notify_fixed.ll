; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_button.c_acpi_button_notify_fixed.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_button.c_acpi_button_notify_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_button = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"acpi_button_notify_fixed\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_BUTTON_NOTIFY_STATUS = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_button_notify_fixed(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.acpi_button*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.acpi_button*
  store %struct.acpi_button* %6, %struct.acpi_button** %4, align 8
  %7 = call i32 @ACPI_FUNCTION_TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.acpi_button*, %struct.acpi_button** %4, align 8
  %9 = icmp ne %struct.acpi_button* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %12 = call i32 @return_ACPI_STATUS(i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.acpi_button*, %struct.acpi_button** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ACPI_BUTTON_NOTIFY_STATUS, align 4
  %18 = load %struct.acpi_button*, %struct.acpi_button** %4, align 8
  %19 = call i32 @acpi_button_notify(i32 %16, i32 %17, %struct.acpi_button* %18)
  %20 = load i32, i32* @AE_OK, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i8*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_button_notify(i32, i32, %struct.acpi_button*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
