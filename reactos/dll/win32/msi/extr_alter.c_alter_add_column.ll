; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_alter.c_alter_add_column.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_alter.c_alter_add_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_16__*, i32, i64, i32, i32, i32)*, i32 (%struct.TYPE_16__*)* }

@alter_add_column.szColumns = internal constant [9 x i8] c"_Columns\00", align 1
@alter_add_column.query = internal constant [62 x i8] c"SELECT * FROM `_Columns` WHERE `Table`='%s' ORDER BY `Number`\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i64 0, align 8
@ITERATE_columns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*)* @alter_add_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alter_add_column(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i64 1, i64* %5, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @TABLE_CreateView(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @alter_add_column.szColumns, i64 0, i64 0), %struct.TYPE_16__** %7)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %117

17:                                               ; preds = %1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @check_column_exists(i32 %20, i32 %25, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %17
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = call i32 %38(%struct.TYPE_16__* %39)
  %41 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  store i64 %41, i64* %2, align 8
  br label %117

42:                                               ; preds = %17
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @MSI_OpenQuery(i32 %45, %struct.TYPE_17__** %6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @alter_add_column.query, i64 0, i64 0), i32 %50, i32 %55)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %42
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = load i32, i32* @ITERATE_columns, align 4
  %63 = call i64 @MSI_IterateRecords(%struct.TYPE_17__* %61, i32* null, i32 %62, i64* %5)
  store i64 %63, i64* %4, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = call i32 @msiobj_release(i32* %65)
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %74, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = call i32 %75(%struct.TYPE_16__* %76)
  %78 = load i64, i64* %4, align 8
  store i64 %78, i64* %2, align 8
  br label %117

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %42
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64 (%struct.TYPE_16__*, i32, i64, i32, i32, i32)*, i64 (%struct.TYPE_16__*, i32, i64, i32, i32, i32)** %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  %107 = zext i1 %106 to i32
  %108 = call i64 %85(%struct.TYPE_16__* %86, i32 %91, i64 %92, i32 %97, i32 %102, i32 %107)
  store i64 %108, i64* %4, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = call i32 %113(%struct.TYPE_16__* %114)
  %116 = load i64, i64* %4, align 8
  store i64 %116, i64* %2, align 8
  br label %117

117:                                              ; preds = %80, %70, %33, %15
  %118 = load i64, i64* %2, align 8
  ret i64 %118
}

declare dso_local i64 @TABLE_CreateView(i32, i8*, %struct.TYPE_16__**) #1

declare dso_local i64 @check_column_exists(i32, i32, i32) #1

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_17__**, i8*, i32, i32) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_17__*, i32*, i32, i64*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
