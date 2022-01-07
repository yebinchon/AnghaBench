; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_scrollregion.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_scrollregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_scrollregion(%struct.screen_write_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.screen*, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %8, i32 0, i32 0
  %10 = load %struct.screen*, %struct.screen** %9, align 8
  store %struct.screen* %10, %struct.screen** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.screen*, %struct.screen** %7, align 8
  %13 = call i32 @screen_size_y(%struct.screen* %12)
  %14 = sub nsw i32 %13, 1
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.screen*, %struct.screen** %7, align 8
  %18 = call i32 @screen_size_y(%struct.screen* %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.screen*, %struct.screen** %7, align 8
  %23 = call i32 @screen_size_y(%struct.screen* %22)
  %24 = sub nsw i32 %23, 1
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.screen*, %struct.screen** %7, align 8
  %28 = call i32 @screen_size_y(%struct.screen* %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %46

35:                                               ; preds = %30
  %36 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %37 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %36, i32 0)
  %38 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %39 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %38, i32 0, i32 0)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.screen*, %struct.screen** %7, align 8
  %42 = getelementptr inbounds %struct.screen, %struct.screen* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.screen*, %struct.screen** %7, align 8
  %45 = getelementptr inbounds %struct.screen, %struct.screen* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
