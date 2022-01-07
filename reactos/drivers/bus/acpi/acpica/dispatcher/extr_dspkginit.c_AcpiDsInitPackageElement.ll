; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dspkginit.c_AcpiDsInitPackageElement.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dspkginit.c_AcpiDsInitPackageElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__** }

@DsInitPackageElement = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsInitPackageElement(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @DsInitPackageElement, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @AE_OK, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_12__**
  store %struct.TYPE_12__** %23, %struct.TYPE_12__*** %10, align 8
  br label %29

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %27, align 8
  store %struct.TYPE_12__** %28, %struct.TYPE_12__*** %10, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %38 = call i32 @AcpiDsResolvePackageElement(%struct.TYPE_12__** %37)
  br label %54

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* @AE_OK, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsResolvePackageElement(%struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
