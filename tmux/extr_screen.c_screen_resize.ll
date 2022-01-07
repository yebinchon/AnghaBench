; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_resize.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_resize(%struct.screen* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.screen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.screen* %0, %struct.screen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %11, %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.screen*, %struct.screen** %5, align 8
  %19 = call i32 @screen_size_x(%struct.screen* %18)
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.screen*, %struct.screen** %5, align 8
  %24 = getelementptr inbounds %struct.screen, %struct.screen* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.screen*, %struct.screen** %5, align 8
  %28 = call i32 @screen_reset_tabs(%struct.screen* %27)
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.screen*, %struct.screen** %5, align 8
  %33 = call i32 @screen_size_y(%struct.screen* %32)
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.screen*, %struct.screen** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @screen_resize_y(%struct.screen* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.screen*, %struct.screen** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @screen_reflow(%struct.screen* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_reset_tabs(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_resize_y(%struct.screen*, i32) #1

declare dso_local i32 @screen_reflow(%struct.screen*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
