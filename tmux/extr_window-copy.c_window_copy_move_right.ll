; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_move_right.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_move_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen*, i32*, i32*, i32)* @window_copy_move_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_move_right(%struct.screen* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.screen*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.screen* %0, %struct.screen** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.screen*, %struct.screen** %5, align 8
  %12 = call i32 @screen_size_x(%struct.screen* %11)
  %13 = sub nsw i32 %12, 1
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.screen*, %struct.screen** %5, align 8
  %19 = call i32 @screen_hsize(%struct.screen* %18)
  %20 = load %struct.screen*, %struct.screen** %5, align 8
  %21 = call i32 @screen_size_y(%struct.screen* %20)
  %22 = add nsw i32 %19, %21
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %42

31:                                               ; preds = %15
  %32 = load i32*, i32** %6, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %42

37:                                               ; preds = %4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %30, %37, %31
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_hsize(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
