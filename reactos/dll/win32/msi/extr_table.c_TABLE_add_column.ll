; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_add_column.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_add_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i32, i64, i32, i64, i32)* @TABLE_add_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TABLE_add_column(%struct.tagMSIVIEW* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tagMSIVIEW*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %8, align 8
  %20 = bitcast %struct.tagMSIVIEW* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %14, align 8
  %21 = call %struct.TYPE_13__* @MSI_CreateRecord(i32 4)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %16, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %25, i64* %7, align 8
  br label %98

26:                                               ; preds = %6
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @MSI_RecordSetStringW(%struct.TYPE_13__* %27, i32 1, i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @MSI_RecordSetInteger(%struct.TYPE_13__* %30, i32 2, i64 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @MSI_RecordSetStringW(%struct.TYPE_13__* %33, i32 3, i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @MSI_RecordSetInteger(%struct.TYPE_13__* %36, i32 4, i64 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i64 @TABLE_insert_row(i32* %40, %struct.TYPE_13__* %41, i32 -1, i32 %42)
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %93

48:                                               ; preds = %26
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @msi_update_table_columns(i32 %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %93

57:                                               ; preds = %48
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call %struct.TYPE_12__* @find_cached_table(i32 %60, i32 %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %15, align 8
  store i64 0, i64* %18, align 8
  br label %63

63:                                               ; preds = %89, %57
  %64 = load i64, i64* %18, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i64, i64* %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @strcmpW(i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %69
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i64, i64* %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = call i32 @InterlockedIncrement(i32* %86)
  br label %92

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %18, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %18, align 8
  br label %63

92:                                               ; preds = %80, %63
  br label %93

93:                                               ; preds = %92, %56, %47
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = call i32 @msiobj_release(i32* %95)
  %97 = load i64, i64* %17, align 8
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %93, %24
  %99 = load i64, i64* %7, align 8
  ret i64 %99
}

declare dso_local %struct.TYPE_13__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i64 @TABLE_insert_row(i32*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @msi_update_table_columns(i32, i32) #1

declare dso_local %struct.TYPE_12__* @find_cached_table(i32, i32) #1

declare dso_local i32 @strcmpW(i32, i32) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
