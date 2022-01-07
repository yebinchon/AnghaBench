; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_restore_state.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32, i32, i32, i32, i32, %struct.screen_write_ctx }
%struct.screen_write_ctx = type { i32 }

@MODE_ORIGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*)* @input_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_restore_state(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.input_ctx*, align 8
  %3 = alloca %struct.screen_write_ctx*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %2, align 8
  %4 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %4, i32 0, i32 5
  store %struct.screen_write_ctx* %5, %struct.screen_write_ctx** %3, align 8
  %6 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %6, i32 0, i32 4
  %8 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %8, i32 0, i32 3
  %10 = call i32 @memcpy(i32* %7, i32* %9, i32 4)
  %11 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MODE_ORIGIN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %19 = load i32, i32* @MODE_ORIGIN, align 4
  %20 = call i32 @screen_write_mode_set(%struct.screen_write_ctx* %18, i32 %19)
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %23 = load i32, i32* @MODE_ORIGIN, align 4
  %24 = call i32 @screen_write_mode_clear(%struct.screen_write_ctx* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %27 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %26, i32 %29, i32 %32, i32 0)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @screen_write_mode_set(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_write_mode_clear(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
