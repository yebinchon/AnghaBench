; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_cursorright.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_cursorright.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_cursorright(%struct.screen_write_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.screen*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %8, i32 0, i32 0
  %10 = load %struct.screen*, %struct.screen** %9, align 8
  store %struct.screen* %10, %struct.screen** %5, align 8
  %11 = load %struct.screen*, %struct.screen** %5, align 8
  %12 = getelementptr inbounds %struct.screen, %struct.screen* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.screen*, %struct.screen** %5, align 8
  %15 = getelementptr inbounds %struct.screen, %struct.screen* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i64 1, i64* %4, align 8
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.screen*, %struct.screen** %5, align 8
  %23 = call i32 @screen_size_x(%struct.screen* %22)
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = sub nsw i64 %25, %26
  %28 = icmp sgt i64 %21, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.screen*, %struct.screen** %5, align 8
  %31 = call i32 @screen_size_x(%struct.screen* %30)
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %29, %20
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %48

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %44, i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
