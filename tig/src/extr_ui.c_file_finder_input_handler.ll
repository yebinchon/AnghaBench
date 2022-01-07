; ModuleID = '/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_input_handler.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_input_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { %struct.file_finder* }
%struct.file_finder = type { i64, i32**, i32 }
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INPUT_DELETE = common dso_local global i32 0, align 4
@INPUT_SKIP = common dso_local global i32 0, align 4
@INPUT_CANCEL = common dso_local global i32 0, align 4
@INPUT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input*, %struct.key*)* @file_finder_input_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_finder_input_handler(%struct.input* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.file_finder*, align 8
  %7 = alloca i32, align 4
  store %struct.input* %0, %struct.input** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %8 = load %struct.input*, %struct.input** %4, align 8
  %9 = getelementptr inbounds %struct.input, %struct.input* %8, i32 0, i32 0
  %10 = load %struct.file_finder*, %struct.file_finder** %9, align 8
  store %struct.file_finder* %10, %struct.file_finder** %6, align 8
  %11 = load %struct.input*, %struct.input** %4, align 8
  %12 = load %struct.key*, %struct.key** %5, align 8
  %13 = call i32 @prompt_default_handler(%struct.input* %11, %struct.key* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @INPUT_DELETE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %19 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %24 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %28 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %31 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 @free(i8* %35)
  %37 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %38 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %41 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %22, %17
  %45 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %46 = call i32 @file_finder_update(%struct.file_finder* %45)
  %47 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %48 = call i32 @file_finder_move(%struct.file_finder* %47, i32 0)
  %49 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %50 = call i32 @file_finder_draw(%struct.file_finder* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %103

52:                                               ; preds = %2
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @INPUT_SKIP, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %103

58:                                               ; preds = %52
  %59 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %60 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.key*, %struct.key** %5, align 8
  %63 = call i32 @get_keybinding(i32 %61, %struct.key* %62, i32 1, i32* null)
  switch i32 %63, label %78 [
    i32 131, label %64
    i32 132, label %70
    i32 133, label %76
    i32 130, label %76
    i32 129, label %76
    i32 128, label %76
  ]

64:                                               ; preds = %58
  %65 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %66 = call i32 @file_finder_move(%struct.file_finder* %65, i32 -1)
  %67 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %68 = call i32 @file_finder_draw(%struct.file_finder* %67)
  %69 = load i32, i32* @INPUT_SKIP, align 4
  store i32 %69, i32* %3, align 4
  br label %103

70:                                               ; preds = %58
  %71 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %72 = call i32 @file_finder_move(%struct.file_finder* %71, i32 1)
  %73 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %74 = call i32 @file_finder_draw(%struct.file_finder* %73)
  %75 = load i32, i32* @INPUT_SKIP, align 4
  store i32 %75, i32* %3, align 4
  br label %103

76:                                               ; preds = %58, %58, %58, %58
  %77 = load i32, i32* @INPUT_CANCEL, align 4
  store i32 %77, i32* %3, align 4
  br label %103

78:                                               ; preds = %58
  %79 = load %struct.key*, %struct.key** %5, align 8
  %80 = call i32 @key_to_value(%struct.key* %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %84 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %83, i32 0, i32 1
  %85 = load %struct.key*, %struct.key** %5, align 8
  %86 = getelementptr inbounds %struct.key, %struct.key* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @argv_append(i32*** %84, i32 %88)
  %90 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %91 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %95 = call i32 @file_finder_update(%struct.file_finder* %94)
  %96 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %97 = call i32 @file_finder_move(%struct.file_finder* %96, i32 0)
  %98 = load %struct.file_finder*, %struct.file_finder** %6, align 8
  %99 = call i32 @file_finder_draw(%struct.file_finder* %98)
  %100 = load i32, i32* @INPUT_OK, align 4
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %78
  %102 = load i32, i32* @INPUT_SKIP, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %82, %76, %70, %64, %56, %44
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @prompt_default_handler(%struct.input*, %struct.key*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @file_finder_update(%struct.file_finder*) #1

declare dso_local i32 @file_finder_move(%struct.file_finder*, i32) #1

declare dso_local i32 @file_finder_draw(%struct.file_finder*) #1

declare dso_local i32 @get_keybinding(i32, %struct.key*, i32, i32*) #1

declare dso_local i32 @key_to_value(%struct.key*) #1

declare dso_local i32 @argv_append(i32***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
