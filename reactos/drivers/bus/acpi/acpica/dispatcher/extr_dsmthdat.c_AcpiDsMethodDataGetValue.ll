; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsmthdat.c_AcpiDsMethodDataGetValue.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsmthdat.c_AcpiDsMethodDataGetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@DsMethodDataGetValue = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Null object descriptor pointer\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AcpiGbl_EnableInterpreterSlack = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Uninitialized Arg[%u] at node %p\00", align 1
@AE_AML_UNINITIALIZED_ARG = common dso_local global i32 0, align 4
@AE_AML_UNINITIALIZED_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Not a Arg/Local opcode: 0x%X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsMethodDataGetValue(i32 %0, i32 %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %13 = load i32, i32* @DsMethodDataGetValue, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load i32**, i32*** %9, align 8
  %16 = icmp ne i32** %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @AE_INFO, align 4
  %19 = call i32 @ACPI_ERROR(i32 ptrtoint ([31 x i8]* @.str to i32))
  %20 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  br label %22

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @AcpiDsMethodDataGetNode(i32 %23, i32 %24, i32* %25, %struct.TYPE_3__** %11)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %74, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* @AcpiGbl_EnableInterpreterSlack, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = call i32* @AcpiUtCreateIntegerObject(i32 0)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @AE_NO_MEMORY, align 4
  %48 = call i32 @return_ACPI_STATUS(i32 %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  br label %73

53:                                               ; preds = %39
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %66 [
    i32 129, label %55
    i32 128, label %63
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @AE_INFO, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %59 = ptrtoint %struct.TYPE_3__* %58 to i32
  %60 = call i32 @ACPI_ERROR(i32 %59)
  %61 = load i32, i32* @AE_AML_UNINITIALIZED_ARG, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  br label %63

63:                                               ; preds = %53, %55
  %64 = load i32, i32* @AE_AML_UNINITIALIZED_LOCAL, align 4
  %65 = call i32 @return_ACPI_STATUS(i32 %64)
  br label %66

66:                                               ; preds = %53, %63
  %67 = load i32, i32* @AE_INFO, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ACPI_ERROR(i32 %68)
  %70 = load i32, i32* @AE_AML_INTERNAL, align 4
  %71 = call i32 @return_ACPI_STATUS(i32 %70)
  br label %72

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %49
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32*, i32** %12, align 8
  %76 = load i32**, i32*** %9, align 8
  store i32* %75, i32** %76, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @AcpiUtAddReference(i32* %77)
  %79 = load i32, i32* @AE_OK, align 4
  %80 = call i32 @return_ACPI_STATUS(i32 %79)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsMethodDataGetNode(i32, i32, i32*, %struct.TYPE_3__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32* @AcpiUtCreateIntegerObject(i32) #1

declare dso_local i32 @AcpiUtAddReference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
