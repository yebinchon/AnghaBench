; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_move_left.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_move_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen*, i64*, i64*, i32)* @window_copy_move_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_move_left(%struct.screen* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.screen*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.screen* %0, %struct.screen** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %4
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.screen*, %struct.screen** %5, align 8
  %21 = call i64 @screen_size_x(%struct.screen* %20)
  %22 = sub nsw i64 %21, 1
  %23 = load i64*, i64** %6, align 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.screen*, %struct.screen** %5, align 8
  %25 = call i64 @screen_hsize(%struct.screen* %24)
  %26 = load %struct.screen*, %struct.screen** %5, align 8
  %27 = call i64 @screen_size_y(%struct.screen* %26)
  %28 = add nsw i64 %25, %27
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %19, %16
  br label %45

31:                                               ; preds = %12
  %32 = load %struct.screen*, %struct.screen** %5, align 8
  %33 = call i64 @screen_size_x(%struct.screen* %32)
  %34 = sub nsw i64 %33, 1
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  br label %45

40:                                               ; preds = %4
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %30, %40, %31
  ret void
}

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
