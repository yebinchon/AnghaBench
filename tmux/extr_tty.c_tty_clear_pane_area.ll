; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_clear_pane_area.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_clear_pane_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.tty_ctx*, i32, i32, i32, i32, i32)* @tty_clear_pane_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_clear_pane_area(%struct.tty* %0, %struct.tty_ctx* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.tty*, align 8
  %9 = alloca %struct.tty_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %8, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load %struct.tty*, %struct.tty** %8, align 8
  %22 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @tty_clamp_area(%struct.tty* %21, %struct.tty_ctx* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %7
  %30 = load %struct.tty*, %struct.tty** %8, align 8
  %31 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @tty_clear_area(%struct.tty* %30, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %7
  ret void
}

declare dso_local i64 @tty_clamp_area(%struct.tty*, %struct.tty_ctx*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @tty_clear_area(%struct.tty*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
