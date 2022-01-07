; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsrepair2.c_AcpiNsCheckSortedList.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsrepair2.c_AcpiNsCheckSortedList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__** }
%struct.TYPE_9__ = type { i64 }

@NsCheckSortedList = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_AML_PACKAGE_LIMIT = common dso_local global i32 0, align 4
@ACPI_SORT_DESCENDING = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_SORT_ASCENDING = common dso_local global i32 0, align 4
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: Repaired unsorted list - now sorted by %s\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i64, i64, i64, i32, i8*)* @AcpiNsCheckSortedList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiNsCheckSortedList(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i64 %2, i64 %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__**, align 8
  %18 = alloca %struct.TYPE_12__**, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %22 = load i32, i32* @NsCheckSortedList, align 4
  %23 = call i32 @ACPI_FUNCTION_NAME(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %31, i32* %8, align 4
  br label %161

32:                                               ; preds = %7
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %16, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %32
  %44 = load i32, i32* @AE_AML_PACKAGE_LIMIT, align 4
  store i32 %44, i32* %8, align 4
  br label %161

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %49, i64 %50
  store %struct.TYPE_12__** %51, %struct.TYPE_12__*** %17, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %16, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %16, align 8
  store i64 0, i64* %21, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @ACPI_SORT_DESCENDING, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %59, i64* %21, align 8
  br label %60

60:                                               ; preds = %58, %45
  store i64 0, i64* %20, align 8
  br label %61

61:                                               ; preds = %156, %60
  %62 = load i64, i64* %20, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %159

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %74, i32* %8, align 4
  br label %161

75:                                               ; preds = %65
  %76 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @AE_AML_PACKAGE_LIMIT, align 4
  store i32 %84, i32* %8, align 4
  br label %161

85:                                               ; preds = %75
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %89, align 8
  store %struct.TYPE_12__** %90, %struct.TYPE_12__*** %18, align 8
  %91 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %91, i64 %92
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %19, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %102, i32* %8, align 4
  br label %161

103:                                              ; preds = %85
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @ACPI_SORT_ASCENDING, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %21, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %125, label %114

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @ACPI_SORT_DESCENDING, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %21, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %118, %107
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %129, i64 %130
  %132 = load i64, i64* %16, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @AcpiNsSortList(%struct.TYPE_12__** %131, i64 %132, i64 %133, i32 %134)
  %136 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %15, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = call i32 @ACPI_DEBUG_PRINT(i32 %146)
  %148 = load i32, i32* @AE_OK, align 4
  store i32 %148, i32* %8, align 4
  br label %161

149:                                              ; preds = %118, %114
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %21, align 8
  %154 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %154, i32 1
  store %struct.TYPE_12__** %155, %struct.TYPE_12__*** %17, align 8
  br label %156

156:                                              ; preds = %149
  %157 = load i64, i64* %20, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %20, align 8
  br label %61

159:                                              ; preds = %61
  %160 = load i32, i32* @AE_OK, align 4
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %159, %125, %101, %83, %73, %43, %30
  %162 = load i32, i32* %8, align 4
  ret i32 %162
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @AcpiNsSortList(%struct.TYPE_12__**, i64, i64, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
