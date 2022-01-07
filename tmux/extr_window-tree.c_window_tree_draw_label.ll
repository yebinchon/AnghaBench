; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_draw_label.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_draw_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.grid_cell = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_write_ctx*, i32, i32, i32, i32, %struct.grid_cell*, i8*)* @window_tree_draw_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_tree_draw_label(%struct.screen_write_ctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.grid_cell* %5, i8* %6) #0 {
  %8 = alloca %struct.screen_write_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.grid_cell*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.grid_cell* %5, %struct.grid_cell** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %15, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %22, %7
  br label %84

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %15, align 8
  %35 = sub i64 %33, %34
  %36 = add i64 %35, 1
  %37 = udiv i64 %36, 2
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %71

44:                                               ; preds = %31
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %54, 3
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %57, i32 %61, i32 %65, i32 0)
  %67 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %8, align 8
  %68 = load i64, i64* %15, align 8
  %69 = add i64 %68, 2
  %70 = call i32 @screen_write_box(%struct.screen_write_ctx* %67, i64 %69, i32 3)
  br label %71

71:                                               ; preds = %56, %53, %44, %31
  %72 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %72, i32 %75, i32 %78, i32 0)
  %80 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %8, align 8
  %81 = load %struct.grid_cell*, %struct.grid_cell** %13, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @screen_write_puts(%struct.screen_write_ctx* %80, %struct.grid_cell* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %71, %30
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @screen_write_box(%struct.screen_write_ctx*, i64, i32) #1

declare dso_local i32 @screen_write_puts(%struct.screen_write_ctx*, %struct.grid_cell*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
