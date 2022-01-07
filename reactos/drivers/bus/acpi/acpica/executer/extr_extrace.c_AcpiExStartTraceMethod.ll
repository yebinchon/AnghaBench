; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_extrace.c_AcpiExStartTraceMethod.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_extrace.c_AcpiExStartTraceMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@ExStartTraceMethod = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_TraceMethodObject = common dso_local global %struct.TYPE_6__* null, align 8
@AcpiDbgLevel = common dso_local global i64 0, align 8
@AcpiGbl_OriginalDbgLevel = common dso_local global i64 0, align 8
@AcpiDbgLayer = common dso_local global i64 0, align 8
@AcpiGbl_OriginalDbgLayer = common dso_local global i64 0, align 8
@ACPI_TRACE_LEVEL_ALL = common dso_local global i64 0, align 8
@ACPI_TRACE_LAYER_ALL = common dso_local global i64 0, align 8
@AcpiGbl_TraceDbgLevel = common dso_local global i64 0, align 8
@AcpiGbl_TraceDbgLayer = common dso_local global i64 0, align 8
@ACPI_TRACE_AML_METHOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiExStartTraceMethod(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i32, i32* @ExStartTraceMethod, align 4
  %11 = call i32 @ACPI_FUNCTION_NAME(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i8* @AcpiNsGetNormalizedPathname(i32* %15, i32 %16)
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @AcpiExInterpreterTraceEnabled(i8* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_TraceMethodObject, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** @AcpiGbl_TraceMethodObject, align 8
  %28 = load i64, i64* @AcpiDbgLevel, align 8
  store i64 %28, i64* @AcpiGbl_OriginalDbgLevel, align 8
  %29 = load i64, i64* @AcpiDbgLayer, align 8
  store i64 %29, i64* @AcpiGbl_OriginalDbgLayer, align 8
  %30 = load i64, i64* @ACPI_TRACE_LEVEL_ALL, align 8
  store i64 %30, i64* @AcpiDbgLevel, align 8
  %31 = load i64, i64* @ACPI_TRACE_LAYER_ALL, align 8
  store i64 %31, i64* @AcpiDbgLayer, align 8
  %32 = load i64, i64* @AcpiGbl_TraceDbgLevel, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* @AcpiGbl_TraceDbgLevel, align 8
  store i64 %35, i64* @AcpiDbgLevel, align 8
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i64, i64* @AcpiGbl_TraceDbgLayer, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i64, i64* @AcpiGbl_TraceDbgLayer, align 8
  store i64 %40, i64* @AcpiDbgLayer, align 8
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41, %23, %18
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* @ACPI_TRACE_AML_METHOD, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %50
  %57 = phi i32* [ %54, %50 ], [ null, %55 ]
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @ACPI_TRACE_POINT(i32 %46, i32 %47, i32* %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %42
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @ACPI_FREE(i8* %64)
  br label %66

66:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i8* @AcpiNsGetNormalizedPathname(i32*, i32) #1

declare dso_local i64 @AcpiExInterpreterTraceEnabled(i8*) #1

declare dso_local i32 @ACPI_TRACE_POINT(i32, i32, i32*, i8*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
