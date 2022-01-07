; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utcopy.c_AcpiUtCopyEpackageToIpackage.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utcopy.c_AcpiUtCopyEpackageToIpackage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__** }

@AE_OK = common dso_local global i32 0, align 4
@UtCopyEpackageToIpackage = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__**)* @AcpiUtCopyEpackageToIpackage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiUtCopyEpackageToIpackage(%struct.TYPE_13__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @UtCopyEpackageToIpackage, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.TYPE_12__* @AcpiUtCreatePackageObject(i64 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %7, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @AE_NO_MEMORY, align 4
  %22 = call i32 @return_ACPI_STATUS(i32 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %26, align 8
  store %struct.TYPE_12__** %27, %struct.TYPE_12__*** %8, align 8
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %62, %23
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %28
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %42, i64 %43
  %45 = call i32 @AcpiUtCopyEobjectToIobject(i32* %41, %struct.TYPE_12__** %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %35
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %54, i64 %55
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = call i32 @AcpiUtRemoveReference(%struct.TYPE_12__* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @return_ACPI_STATUS(i32 %59)
  br label %61

61:                                               ; preds = %49, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %28

65:                                               ; preds = %28
  %66 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @return_ACPI_STATUS(i32 %74)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.TYPE_12__* @AcpiUtCreatePackageObject(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiUtCopyEobjectToIobject(i32*, %struct.TYPE_12__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
