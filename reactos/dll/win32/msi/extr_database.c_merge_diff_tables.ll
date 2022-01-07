; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_merge_diff_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_merge_diff_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@merge_diff_tables.query = internal constant [19 x i8] c"SELECT * FROM `%s`\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@merge_diff_row = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_15__*)* @merge_diff_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @merge_diff_tables(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @MSI_RecordGetString(i32* %12, i32 1)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @MSI_OpenQuery(i32 %16, %struct.TYPE_13__** %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @merge_diff_tables.query, i64 0, i64 0), i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %96

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @TABLE_Exists(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @MSI_OpenQuery(i32 %33, %struct.TYPE_13__** %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @merge_diff_tables.query, i64 0, i64 0), i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %96

40:                                               ; preds = %30
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = call i64 @merge_verify_colnames(%struct.TYPE_13__* %41, %struct.TYPE_13__* %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %96

48:                                               ; preds = %40
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @merge_verify_primary_keys(i32 %51, i32 %54, i32 %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %96

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %23
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @msi_get_merge_table(i32 %65, i32 %66, %struct.TYPE_14__** %6)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %96

72:                                               ; preds = %62
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = load i32, i32* @merge_diff_row, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = call i64 @MSI_IterateRecords(%struct.TYPE_13__* %79, i32* null, i32 %80, %struct.TYPE_15__* %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = call i32 @free_merge_table(%struct.TYPE_14__* %87)
  br label %96

89:                                               ; preds = %72
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = call i32 @list_add_tail(i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %89, %86, %71, %60, %47, %39, %22
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = call i32 @msiobj_release(i32* %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = call i32 @msiobj_release(i32* %101)
  %103 = load i64, i64* %10, align 8
  ret i64 %103
}

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_13__**, i8*, i32) #1

declare dso_local i64 @TABLE_Exists(i32, i32) #1

declare dso_local i64 @merge_verify_colnames(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @merge_verify_primary_keys(i32, i32, i32) #1

declare dso_local i64 @msi_get_merge_table(i32, i32, %struct.TYPE_14__**) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_13__*, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @free_merge_table(%struct.TYPE_14__*) #1

declare dso_local i32 @list_add_tail(i32, i32*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
