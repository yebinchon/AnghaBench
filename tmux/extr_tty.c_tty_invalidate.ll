; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_invalidate.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@grid_default_cell = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i8* null, align 8
@TTY_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\1B[?69h\00", align 1
@TTYC_SGR0 = common dso_local global i32 0, align 4
@ALL_MODES = common dso_local global i32 0, align 4
@MODE_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @tty_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_invalidate(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = getelementptr inbounds %struct.tty, %struct.tty* %3, i32 0, i32 10
  %5 = call i32 @memcpy(i32* %4, i32* @grid_default_cell, i32 4)
  %6 = load %struct.tty*, %struct.tty** %2, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 9
  %8 = call i32 @memcpy(i32* %7, i32* @grid_default_cell, i32 4)
  %9 = load %struct.tty*, %struct.tty** %2, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load i8*, i8** @UINT_MAX, align 8
  %12 = load %struct.tty*, %struct.tty** %2, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 7
  store i8* %11, i8** %13, align 8
  %14 = load %struct.tty*, %struct.tty** %2, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 8
  store i8* %11, i8** %15, align 8
  %16 = load i8*, i8** @UINT_MAX, align 8
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.tty*, %struct.tty** %2, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 6
  store i8* %16, i8** %20, align 8
  %21 = load i8*, i8** @UINT_MAX, align 8
  %22 = load %struct.tty*, %struct.tty** %2, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.tty*, %struct.tty** %2, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 4
  store i8* %21, i8** %25, align 8
  %26 = load %struct.tty*, %struct.tty** %2, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TTY_STARTED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %1
  %33 = load %struct.tty*, %struct.tty** %2, align 8
  %34 = call i64 @tty_use_margin(%struct.tty* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.tty*, %struct.tty** %2, align 8
  %38 = call i32 @tty_puts(%struct.tty* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.tty*, %struct.tty** %2, align 8
  %41 = load i32, i32* @TTYC_SGR0, align 4
  %42 = call i32 @tty_putcode(%struct.tty* %40, i32 %41)
  %43 = load i32, i32* @ALL_MODES, align 4
  %44 = load %struct.tty*, %struct.tty** %2, align 8
  %45 = getelementptr inbounds %struct.tty, %struct.tty* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tty*, %struct.tty** %2, align 8
  %47 = load i32, i32* @MODE_CURSOR, align 4
  %48 = call i32 @tty_update_mode(%struct.tty* %46, i32 %47, i32* null)
  %49 = load %struct.tty*, %struct.tty** %2, align 8
  %50 = call i32 @tty_cursor(%struct.tty* %49, i32 0, i32 0)
  %51 = load %struct.tty*, %struct.tty** %2, align 8
  %52 = call i32 @tty_region_off(%struct.tty* %51)
  %53 = load %struct.tty*, %struct.tty** %2, align 8
  %54 = call i32 @tty_margin_off(%struct.tty* %53)
  br label %59

55:                                               ; preds = %1
  %56 = load i32, i32* @MODE_CURSOR, align 4
  %57 = load %struct.tty*, %struct.tty** %2, align 8
  %58 = getelementptr inbounds %struct.tty, %struct.tty* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %39
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @tty_use_margin(%struct.tty*) #1

declare dso_local i32 @tty_puts(%struct.tty*, i8*) #1

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

declare dso_local i32 @tty_update_mode(%struct.tty*, i32, i32*) #1

declare dso_local i32 @tty_cursor(%struct.tty*, i32, i32) #1

declare dso_local i32 @tty_region_off(%struct.tty*) #1

declare dso_local i32 @tty_margin_off(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
