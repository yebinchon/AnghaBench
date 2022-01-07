; ModuleID = '/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_put.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.screen = type { i32 }
%struct.format_ranges = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_write_ctx*, i64, i64, %struct.screen*, %struct.format_ranges*, i64, i64, i64)* @format_draw_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_draw_put(%struct.screen_write_ctx* %0, i64 %1, i64 %2, %struct.screen* %3, %struct.format_ranges* %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.screen_write_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.screen*, align 8
  %13 = alloca %struct.format_ranges*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.screen* %3, %struct.screen** %12, align 8
  store %struct.format_ranges* %4, %struct.format_ranges** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %14, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %17, i64 %20, i64 %21, i32 0)
  %23 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %9, align 8
  %24 = load %struct.screen*, %struct.screen** %12, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* %16, align 8
  %27 = call i32 @screen_write_fast_copy(%struct.screen_write_ctx* %23, %struct.screen* %24, i64 %25, i32 0, i64 %26, i32 1)
  %28 = load %struct.format_ranges*, %struct.format_ranges** %13, align 8
  %29 = load %struct.screen*, %struct.screen** %12, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i32 @format_update_ranges(%struct.format_ranges* %28, %struct.screen* %29, i64 %30, i64 %31, i64 %32)
  ret void
}

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i64, i64, i32) #1

declare dso_local i32 @screen_write_fast_copy(%struct.screen_write_ctx*, %struct.screen*, i64, i32, i64, i32) #1

declare dso_local i32 @format_update_ranges(%struct.format_ranges*, %struct.screen*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
