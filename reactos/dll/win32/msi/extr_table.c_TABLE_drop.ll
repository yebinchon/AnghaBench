; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_drop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"dropping table %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@szTables = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*)* @TABLE_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TABLE_drop(%struct.tagMSIVIEW* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tagMSIVIEW*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %3, align 8
  %10 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %3, align 8
  %11 = bitcast %struct.tagMSIVIEW* %10 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @debugstr_w(i32 %14)
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, 1
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %53, %1
  %24 = load i64, i64* %9, align 8
  %25 = icmp uge i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  %27 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %3, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @TABLE_remove_column(%struct.tagMSIVIEW* %27, i32 %36, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %26
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %2, align 8
  br label %120

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %9, align 8
  br label %23

56:                                               ; preds = %23
  %57 = call %struct.TYPE_18__* @MSI_CreateRecord(i32 1)
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %6, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = icmp ne %struct.TYPE_18__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %61, i64* %2, align 8
  br label %120

62:                                               ; preds = %56
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @MSI_RecordSetStringW(%struct.TYPE_18__* %63, i32 1, i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @szTables, align 4
  %72 = call i64 @TABLE_CreateView(i32 %70, i32 %71, %struct.TYPE_16__** %5)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %62
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = call i32 @msiobj_release(i32* %78)
  %80 = load i64, i64* %7, align 8
  store i64 %80, i64* %2, align 8
  br label %120

81:                                               ; preds = %62
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = bitcast %struct.TYPE_16__* %82 to %struct.TYPE_17__*
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = call i64 @msi_table_find_row(%struct.TYPE_17__* %83, %struct.TYPE_18__* %84, i64* %8, i32* null)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %108

90:                                               ; preds = %81
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i64 @TABLE_delete_row(%struct.TYPE_16__* %91, i64 %92)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @ERROR_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %108

98:                                               ; preds = %90
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = call i32 @list_remove(i32* %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = call i32 @free_table(%struct.TYPE_19__* %106)
  br label %108

108:                                              ; preds = %98, %97, %89
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = call i32 @msiobj_release(i32* %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = call i32 %116(%struct.TYPE_16__* %117)
  %119 = load i64, i64* %7, align 8
  store i64 %119, i64* %2, align 8
  br label %120

120:                                              ; preds = %108, %76, %60, %50
  %121 = load i64, i64* %2, align 8
  ret i64 %121
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @TABLE_remove_column(%struct.tagMSIVIEW*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @TABLE_CreateView(i32, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @msi_table_find_row(%struct.TYPE_17__*, %struct.TYPE_18__*, i64*, i32*) #1

declare dso_local i64 @TABLE_delete_row(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @free_table(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
