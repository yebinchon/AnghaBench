; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32*, i32, i32, i32*, i32*, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@MSICONDITION_TRUE = common dso_local global i32 0, align 4
@szTables = common dso_local global i32 0, align 4
@szColumns = common dso_local global i32 0, align 4
@MSICONDITION_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32, %struct.TYPE_12__**)* @get_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_table(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_12__* @find_cached_table(%struct.TYPE_13__* %10, i32 %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %17, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %18, i64* %4, align 8
  br label %101

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @lstrlenW(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 56, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.TYPE_12__* @msi_alloc(i32 %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %8, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %30, i64* %4, align 8
  br label %101

31:                                               ; preds = %19
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 6
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @MSICONDITION_TRUE, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @lstrcpyW(i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @szTables, align 4
  %52 = call i32 @strcmpW(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %31
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @szColumns, align 4
  %57 = call i32 @strcmpW(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54, %31
  %60 = load i32, i32* @MSICONDITION_NONE, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = call i64 @table_get_column_info(%struct.TYPE_13__* %64, i32 %65, i32** %67, i64* %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @ERROR_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = call i32 @free_table(%struct.TYPE_12__* %75)
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %4, align 8
  br label %101

78:                                               ; preds = %63
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @read_table_from_storage(%struct.TYPE_13__* %79, %struct.TYPE_12__* %80, i32 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @ERROR_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = call i32 @free_table(%struct.TYPE_12__* %89)
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %4, align 8
  br label %101

92:                                               ; preds = %78
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = call i32 @list_add_head(i32* %94, i32* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %99, align 8
  %100 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %92, %88, %74, %29, %15
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

declare dso_local %struct.TYPE_12__* @find_cached_table(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @msi_alloc(i32) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @lstrcpyW(i32, i32) #1

declare dso_local i32 @strcmpW(i32, i32) #1

declare dso_local i64 @table_get_column_info(%struct.TYPE_13__*, i32, i32**, i64*) #1

declare dso_local i32 @free_table(%struct.TYPE_12__*) #1

declare dso_local i64 @read_table_from_storage(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
