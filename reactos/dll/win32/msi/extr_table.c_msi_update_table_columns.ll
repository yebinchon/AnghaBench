; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_update_table_columns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_update_table_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@LONG_STR_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @msi_update_table_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi_update_table_columns(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_7__* @find_cached_table(i32* %10, i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %106

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @msi_free_colinfo(%struct.TYPE_8__* %21, i64 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i32 @msi_free(%struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @table_get_column_info(i32* %32, i32 %33, %struct.TYPE_8__** %35, i64* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %15
  br label %106

44:                                               ; preds = %15
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @LONG_STR_BYTES, align 4
  %53 = call i64 @msi_table_get_row_size(i32* %45, %struct.TYPE_8__* %48, i64 %51, i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %103, %44
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32* @msi_realloc(i32* %76, i64 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32**, i32*** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32*, i32** %81, i64 %82
  store i32* %78, i32** %83, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %70
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = sub i64 %98, %99
  %101 = call i32 @memset(i32* %97, i32 0, i64 %100)
  br label %102

102:                                              ; preds = %89, %70
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  br label %64

106:                                              ; preds = %14, %43, %64
  ret void
}

declare dso_local %struct.TYPE_7__* @find_cached_table(i32*, i32) #1

declare dso_local i32 @msi_free_colinfo(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @msi_free(%struct.TYPE_8__*) #1

declare dso_local i32 @table_get_column_info(i32*, i32, %struct.TYPE_8__**, i64*) #1

declare dso_local i64 @msi_table_get_row_size(i32*, %struct.TYPE_8__*, i64, i32) #1

declare dso_local i32* @msi_realloc(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
