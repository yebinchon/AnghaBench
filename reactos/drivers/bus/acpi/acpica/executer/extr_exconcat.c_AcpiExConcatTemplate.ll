; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exconcat.c_AcpiExConcatTemplate.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exconcat.c_AcpiExConcatTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ExConcatTemplate = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_RESOURCE_NAME_END_TAG = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExConcatTemplate(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @ExConcatTemplate, align 4
  %18 = call i32 @ACPI_FUNCTION_TRACE(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = call i32 @AcpiUtGetResourceEndTag(%struct.TYPE_9__* %19, i32** %13)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i32*, i32** %13, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @ACPI_PTR_DIFF(i32* %28, i32* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = call i32 @AcpiUtGetResourceEndTag(%struct.TYPE_9__* %34, i32** %13)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @return_ACPI_STATUS(i32 %40)
  br label %42

42:                                               ; preds = %39, %27
  %43 = load i32*, i32** %13, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ACPI_PTR_DIFF(i32* %43, i32* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call %struct.TYPE_9__* @AcpiUtCreateBufferObject(i32 %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %11, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %42
  %60 = load i32, i32* @AE_NO_MEMORY, align 4
  %61 = call i32 @return_ACPI_STATUS(i32 %60)
  br label %62

62:                                               ; preds = %59, %42
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @memcpy(i32* %67, i32* %71, i32 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @memcpy(i32* %77, i32* %81, i32 %82)
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* @ACPI_RESOURCE_NAME_END_TAG, align 4
  %90 = or i32 %89, 1
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sub nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %97, align 8
  %98 = load i32, i32* @AE_OK, align 4
  %99 = call i32 @return_ACPI_STATUS(i32 %98)
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtGetResourceEndTag(%struct.TYPE_9__*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_PTR_DIFF(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @AcpiUtCreateBufferObject(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
