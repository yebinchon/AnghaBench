; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_default.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { %union.options_value }
%union.options_value = type { i32 }
%struct.options = type { i32 }
%struct.options_table_entry = type { i32, i32, i32, i32, i32** }

@OPTIONS_TABLE_IS_ARRAY = common dso_local global i32 0, align 4
@grid_default_cell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.options_entry* @options_default(%struct.options* %0, %struct.options_table_entry* %1) #0 {
  %3 = alloca %struct.options_entry*, align 8
  %4 = alloca %struct.options*, align 8
  %5 = alloca %struct.options_table_entry*, align 8
  %6 = alloca %struct.options_entry*, align 8
  %7 = alloca %union.options_value*, align 8
  %8 = alloca i64, align 8
  store %struct.options* %0, %struct.options** %4, align 8
  store %struct.options_table_entry* %1, %struct.options_table_entry** %5, align 8
  %9 = load %struct.options*, %struct.options** %4, align 8
  %10 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %11 = call %struct.options_entry* @options_empty(%struct.options* %9, %struct.options_table_entry* %10)
  store %struct.options_entry* %11, %struct.options_entry** %6, align 8
  %12 = load %struct.options_entry*, %struct.options_entry** %6, align 8
  %13 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %12, i32 0, i32 0
  store %union.options_value* %13, %union.options_value** %7, align 8
  %14 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %15 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OPTIONS_TABLE_IS_ARRAY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %22 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %21, i32 0, i32 4
  %23 = load i32**, i32*** %22, align 8
  %24 = icmp eq i32** %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.options_entry*, %struct.options_entry** %6, align 8
  %27 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %28 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @options_array_assign(%struct.options_entry* %26, i32 %29, i32* null)
  %31 = load %struct.options_entry*, %struct.options_entry** %6, align 8
  store %struct.options_entry* %31, %struct.options_entry** %3, align 8
  br label %85

32:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %51, %32
  %34 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %35 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %34, i32 0, i32 4
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.options_entry*, %struct.options_entry** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %45 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %44, i32 0, i32 4
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @options_array_set(%struct.options_entry* %42, i64 %43, i32* %49, i32 0, i32* null)
  br label %51

51:                                               ; preds = %41
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %33

54:                                               ; preds = %33
  %55 = load %struct.options_entry*, %struct.options_entry** %6, align 8
  store %struct.options_entry* %55, %struct.options_entry** %3, align 8
  br label %85

56:                                               ; preds = %2
  %57 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %58 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %77 [
    i32 129, label %60
    i32 128, label %67
  ]

60:                                               ; preds = %56
  %61 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %62 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @xstrdup(i32 %63)
  %65 = load %union.options_value*, %union.options_value** %7, align 8
  %66 = bitcast %union.options_value* %65 to i32*
  store i32 %64, i32* %66, align 4
  br label %83

67:                                               ; preds = %56
  %68 = load %union.options_value*, %union.options_value** %7, align 8
  %69 = bitcast %union.options_value* %68 to i32*
  %70 = call i32 @style_set(i32* %69, i32* @grid_default_cell)
  %71 = load %union.options_value*, %union.options_value** %7, align 8
  %72 = bitcast %union.options_value* %71 to i32*
  %73 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %74 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @style_parse(i32* %72, i32* @grid_default_cell, i32 %75)
  br label %83

77:                                               ; preds = %56
  %78 = load %struct.options_table_entry*, %struct.options_table_entry** %5, align 8
  %79 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %union.options_value*, %union.options_value** %7, align 8
  %82 = bitcast %union.options_value* %81 to i32*
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %67, %60
  %84 = load %struct.options_entry*, %struct.options_entry** %6, align 8
  store %struct.options_entry* %84, %struct.options_entry** %3, align 8
  br label %85

85:                                               ; preds = %83, %54, %25
  %86 = load %struct.options_entry*, %struct.options_entry** %3, align 8
  ret %struct.options_entry* %86
}

declare dso_local %struct.options_entry* @options_empty(%struct.options*, %struct.options_table_entry*) #1

declare dso_local i32 @options_array_assign(%struct.options_entry*, i32, i32*) #1

declare dso_local i32 @options_array_set(%struct.options_entry*, i64, i32*, i32, i32*) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @style_set(i32*, i32*) #1

declare dso_local i32 @style_parse(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
