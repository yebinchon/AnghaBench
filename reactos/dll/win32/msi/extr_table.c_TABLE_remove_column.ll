; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_remove_column.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_remove_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*)* }

@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@szColumns = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i32, i64)* @TABLE_remove_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TABLE_remove_column(%struct.tagMSIVIEW* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tagMSIVIEW*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %14 = bitcast %struct.tagMSIVIEW* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  %15 = call %struct.TYPE_16__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %9, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %19, i64* %4, align 8
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MSI_RecordSetStringW(%struct.TYPE_16__* %21, i32 1, i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @MSI_RecordSetInteger(%struct.TYPE_16__* %24, i32 2, i64 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @szColumns, align 4
  %31 = call i64 @TABLE_CreateView(i32 %29, i32 %30, %struct.TYPE_14__** %10)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = call i32 @msiobj_release(i32* %37)
  %39 = load i64, i64* %12, align 8
  store i64 %39, i64* %4, align 8
  br label %75

40:                                               ; preds = %20
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = bitcast %struct.TYPE_14__* %41 to %struct.TYPE_15__*
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = call i64 @msi_table_find_row(%struct.TYPE_15__* %42, %struct.TYPE_16__* %43, i64* %11, i32* null)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %63

49:                                               ; preds = %40
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @TABLE_delete_row(%struct.TYPE_14__* %50, i64 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @msi_update_table_columns(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %56, %48
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = call i32 @msiobj_release(i32* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = call i32 %71(%struct.TYPE_14__* %72)
  %74 = load i64, i64* %12, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %63, %35, %18
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local %struct.TYPE_16__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i64 @TABLE_CreateView(i32, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @msi_table_find_row(%struct.TYPE_15__*, %struct.TYPE_16__*, i64*, i32*) #1

declare dso_local i64 @TABLE_delete_row(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @msi_update_table_columns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
