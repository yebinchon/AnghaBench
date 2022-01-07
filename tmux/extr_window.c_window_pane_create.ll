; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_create.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i32*, i32*, i64, i64, i64, i32*, i32, i32*, i32*, i32*, i32*, i64, i64, i32, i32, %struct.window* }
%struct.window = type { i32 }

@HOST_NAME_MAX = common dso_local global i32 0, align 4
@PANE_STYLECHANGED = common dso_local global i32 0, align 4
@next_window_pane_id = common dso_local global i32 0, align 4
@window_pane_tree = common dso_local global i32 0, align 4
@all_window_panes = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.window_pane* (%struct.window*, i32, i32, i32)* @window_pane_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.window_pane* @window_pane_create(%struct.window* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.window*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.window_pane*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.window* %0, %struct.window** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @HOST_NAME_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = call %struct.window_pane* @xcalloc(i32 1, i32 176)
  store %struct.window_pane* %17, %struct.window_pane** %9, align 8
  %18 = load %struct.window*, %struct.window** %5, align 8
  %19 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %20 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %19, i32 0, i32 25
  store %struct.window* %18, %struct.window** %20, align 8
  %21 = load %struct.window*, %struct.window** %5, align 8
  %22 = getelementptr inbounds %struct.window, %struct.window* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @options_create(i32 %23)
  %25 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %26 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %25, i32 0, i32 24
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PANE_STYLECHANGED, align 4
  %28 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %29 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %28, i32 0, i32 23
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @next_window_pane_id, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @next_window_pane_id, align 4
  %32 = sext i32 %30 to i64
  %33 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %34 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %33, i32 0, i32 22
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @window_pane_tree, align 4
  %36 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %37 = call i32 @RB_INSERT(i32 %35, i32* @all_window_panes, %struct.window_pane* %36)
  %38 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %39 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %38, i32 0, i32 21
  store i64 0, i64* %39, align 8
  %40 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %41 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %40, i32 0, i32 20
  store i32* null, i32** %41, align 8
  %42 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %43 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %42, i32 0, i32 19
  store i32* null, i32** %43, align 8
  %44 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %45 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %44, i32 0, i32 18
  store i32* null, i32** %45, align 8
  %46 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %47 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %49 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %48, i32 0, i32 17
  store i32* null, i32** %49, align 8
  %50 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %51 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %50, i32 0, i32 16
  %52 = call i32 @TAILQ_INIT(i32* %51)
  %53 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %54 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %53, i32 0, i32 15
  store i32* null, i32** %54, align 8
  %55 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %56 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %55, i32 0, i32 14
  store i64 0, i64* %56, align 8
  %57 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %58 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %57, i32 0, i32 13
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %61 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %63 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %66 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %68 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %67, i32 0, i32 3
  store i32 %64, i32* %68, align 4
  %69 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %70 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %69, i32 0, i32 4
  store i32 -1, i32* %70, align 8
  %71 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %72 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %71, i32 0, i32 12
  store i64 0, i64* %72, align 8
  %73 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %74 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %73, i32 0, i32 11
  store i32* null, i32** %74, align 8
  %75 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %76 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %75, i32 0, i32 10
  store i32* null, i32** %76, align 8
  %77 = load i8*, i8** @UINT_MAX, align 8
  %78 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %79 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %78, i32 0, i32 9
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @UINT_MAX, align 8
  %81 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %82 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %84 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %83, i32 0, i32 5
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @screen_init(i32* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %90 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %89, i32 0, i32 5
  %91 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %92 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %91, i32 0, i32 7
  store i32* %90, i32** %92, align 8
  %93 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %94 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %93, i32 0, i32 6
  %95 = call i32 @screen_init(i32* %94, i32 1, i32 1, i32 0)
  %96 = trunc i64 %14 to i32
  %97 = call i64 @gethostname(i8* %16, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %4
  %100 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %101 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %100, i32 0, i32 5
  %102 = call i32 @screen_set_title(i32* %101, i8* %16)
  br label %103

103:                                              ; preds = %99, %4
  %104 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %105 = call i32 @input_init(%struct.window_pane* %104)
  %106 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %107 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %107)
  ret %struct.window_pane* %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.window_pane* @xcalloc(i32, i32) #2

declare dso_local i32 @options_create(i32) #2

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.window_pane*) #2

declare dso_local i32 @TAILQ_INIT(i32*) #2

declare dso_local i32 @screen_init(i32*, i32, i32, i32) #2

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local i32 @screen_set_title(i32*, i8*) #2

declare dso_local i32 @input_init(%struct.window_pane*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
