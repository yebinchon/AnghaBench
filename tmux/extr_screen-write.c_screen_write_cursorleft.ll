; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_cursorleft.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_cursorleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_cursorleft(%struct.screen_write_ctx* %0, i64 %1) #0 {
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
  %22 = load i64, i64* %6, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %38

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %34, i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
