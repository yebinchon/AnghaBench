; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_adjust_selection.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_adjust_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i32, i32, i32, %struct.screen }
%struct.screen = type { i32 }

@WINDOW_COPY_REL_POS_ABOVE = common dso_local global i32 0, align 4
@WINDOW_COPY_REL_POS_BELOW = common dso_local global i32 0, align 4
@WINDOW_COPY_REL_POS_ON_SCREEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_mode_entry*, i32*, i32*)* @window_copy_adjust_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_adjust_selection(%struct.window_mode_entry* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.window_copy_mode_data*, align 8
  %8 = alloca %struct.screen*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %14 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %13, i32 0, i32 0
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %14, align 8
  store %struct.window_copy_mode_data* %15, %struct.window_copy_mode_data** %7, align 8
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %17 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %16, i32 0, i32 3
  store %struct.screen* %17, %struct.screen** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %23 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @screen_hsize(i32 %24)
  %26 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %27 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load i32, i32* @WINDOW_COPY_REL_POS_ABOVE, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %36 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %33
  store i32 0, i32* %10, align 4
  br label %69

41:                                               ; preds = %3
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.screen*, %struct.screen** %8, align 8
  %45 = call i32 @screen_size_y(%struct.screen* %44)
  %46 = add nsw i32 %43, %45
  %47 = sub nsw i32 %46, 1
  %48 = icmp sgt i32 %42, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load i32, i32* @WINDOW_COPY_REL_POS_BELOW, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %52 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load %struct.screen*, %struct.screen** %8, align 8
  %57 = call i32 @screen_size_x(%struct.screen* %56)
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.screen*, %struct.screen** %8, align 8
  %61 = call i32 @screen_size_y(%struct.screen* %60)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %68

63:                                               ; preds = %41
  %64 = load i32, i32* @WINDOW_COPY_REL_POS_ON_SCREEN, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %59
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  ret i32 %74
}

declare dso_local i32 @screen_hsize(i32) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
