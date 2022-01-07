; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_clearstartofline.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_clearstartofline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32, i32, i32 }
%struct.tty_ctx = type { i32 }

@tty_cmd_clearstartofline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_clearstartofline(%struct.screen_write_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.screen*, align 8
  %6 = alloca %struct.tty_ctx, align 4
  %7 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %8, i32 0, i32 0
  %10 = load %struct.screen*, %struct.screen** %9, align 8
  store %struct.screen* %10, %struct.screen** %5, align 8
  %11 = load %struct.screen*, %struct.screen** %5, align 8
  %12 = call i32 @screen_size_x(%struct.screen* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %14 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %13, %struct.tty_ctx* %6)
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.screen*, %struct.screen** %5, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.screen*, %struct.screen** %5, align 8
  %25 = getelementptr inbounds %struct.screen, %struct.screen* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.screen*, %struct.screen** %5, align 8
  %28 = getelementptr inbounds %struct.screen, %struct.screen* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @grid_view_clear(i32 %26, i32 0, i32 %29, i32 %30, i32 1, i32 %31)
  br label %46

33:                                               ; preds = %2
  %34 = load %struct.screen*, %struct.screen** %5, align 8
  %35 = getelementptr inbounds %struct.screen, %struct.screen* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.screen*, %struct.screen** %5, align 8
  %38 = getelementptr inbounds %struct.screen, %struct.screen* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.screen*, %struct.screen** %5, align 8
  %41 = getelementptr inbounds %struct.screen, %struct.screen* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @grid_view_clear(i32 %36, i32 0, i32 %39, i32 %43, i32 1, i32 %44)
  br label %46

46:                                               ; preds = %33, %23
  %47 = load %struct.screen*, %struct.screen** %5, align 8
  %48 = getelementptr inbounds %struct.screen, %struct.screen* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %55 = load %struct.screen*, %struct.screen** %5, align 8
  %56 = getelementptr inbounds %struct.screen, %struct.screen* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @screen_write_collect_clear(%struct.screen_write_ctx* %54, i32 %57, i32 1)
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %61 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %60, i32 0)
  %62 = load i32, i32* @tty_cmd_clearstartofline, align 4
  %63 = call i32 @tty_write(i32 %62, %struct.tty_ctx* %6)
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_clear(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @screen_write_collect_clear(%struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
