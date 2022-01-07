; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exresolv.c_AcpiExResolveToValue.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exresolv.c_AcpiExResolveToValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ExResolveToValue = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Internal - null pointer\00", align 1
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@ACPI_NAMESPACE_NODE = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Resolved object %p\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExResolveToValue(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @ExResolveToValue, align 4
  %8 = load i32**, i32*** %4, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, i32** %8)
  %10 = load i32**, i32*** %4, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32**, i32*** %4, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @AE_INFO, align 4
  %18 = call i32 @ACPI_ERROR(i32 ptrtoint ([24 x i8]* @.str to i32))
  %19 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32**, i32*** %4, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(i32* %23)
  %25 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @AcpiExResolveObjectToValue(i32** %28, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32**, i32*** %4, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @AE_INFO, align 4
  %43 = call i32 @ACPI_ERROR(i32 ptrtoint ([24 x i8]* @.str to i32))
  %44 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32**, i32*** %4, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(i32* %49)
  %51 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i32, i32* @ACPI_NAMESPACE_NODE, align 4
  %55 = load i32**, i32*** %4, align 8
  %56 = call i32 @ACPI_CAST_INDIRECT_PTR(i32 %54, i32** %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @AcpiExResolveNodeToValue(i32 %56, i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @return_ACPI_STATUS(i32 %63)
  br label %65

65:                                               ; preds = %62, %53
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32, i32* @ACPI_DB_EXEC, align 4
  %68 = load i32**, i32*** %4, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = ptrtoint i32* %69 to i32
  %71 = call i32 @ACPI_DEBUG_PRINT(i32 %70)
  %72 = load i32, i32* @AE_OK, align 4
  %73 = call i32 @return_ACPI_STATUS(i32 %72)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32**) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(i32*) #1

declare dso_local i32 @AcpiExResolveObjectToValue(i32**, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiExResolveNodeToValue(i32, i32*) #1

declare dso_local i32 @ACPI_CAST_INDIRECT_PTR(i32, i32**) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
