; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/resources/extr_rsxface.c_AcpiRsValidateParameters.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/resources/extr_rsxface.c_AcpiRsValidateParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@RsValidateParameters = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@AE_TYPE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_4__**)* @AcpiRsValidateParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiRsValidateParameters(i32 %0, i32* %1, %struct.TYPE_4__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %7, align 8
  %10 = load i32, i32* @RsValidateParameters, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.TYPE_4__* @AcpiNsValidateHandle(i32 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %9, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @AE_TYPE, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @AcpiUtValidateBuffer(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %45, align 8
  %46 = load i32, i32* @AE_OK, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.TYPE_4__* @AcpiNsValidateHandle(i32) #1

declare dso_local i32 @AcpiUtValidateBuffer(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
