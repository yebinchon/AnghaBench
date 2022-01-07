; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_colours_fg.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_colours_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.grid_cell }
%struct.grid_cell = type { i32 }

@COLOUR_FLAG_RGB = common dso_local global i32 0, align 4
@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"38\00", align 1
@TERM_256COLOURS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[%dm\00", align 1
@TTYC_SETAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.grid_cell*)* @tty_colours_fg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_colours_fg(%struct.tty* %0, %struct.grid_cell* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.grid_cell*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca [32 x i8], align 16
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %4, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 1
  store %struct.grid_cell* %8, %struct.grid_cell** %5, align 8
  %9 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %10 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @COLOUR_FLAG_RGB, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %17 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @COLOUR_FLAG_256, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15, %2
  %23 = load %struct.tty*, %struct.tty** %3, align 8
  %24 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %25 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @tty_try_colour(%struct.tty* %23, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %74

30:                                               ; preds = %22
  br label %80

31:                                               ; preds = %15
  %32 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %33 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 90
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %38 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 97
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.tty*, %struct.tty** %3, align 8
  %43 = getelementptr inbounds %struct.tty, %struct.tty* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TERM_256COLOURS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %50 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %51 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xsnprintf(i8* %49, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %56 = call i32 @tty_puts(%struct.tty* %54, i8* %55)
  br label %66

57:                                               ; preds = %41
  %58 = load %struct.tty*, %struct.tty** %3, align 8
  %59 = load i32, i32* @TTYC_SETAF, align 4
  %60 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %61 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 90
  %64 = add nsw i32 %63, 8
  %65 = call i32 @tty_putcode1(%struct.tty* %58, i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %57, %48
  br label %74

67:                                               ; preds = %36, %31
  %68 = load %struct.tty*, %struct.tty** %3, align 8
  %69 = load i32, i32* @TTYC_SETAF, align 4
  %70 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %71 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @tty_putcode1(%struct.tty* %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %67, %66, %29
  %75 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %76 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %79 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %30
  ret void
}

declare dso_local i64 @tty_try_colour(%struct.tty*, i32, i8*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @tty_puts(%struct.tty*, i8*) #1

declare dso_local i32 @tty_putcode1(%struct.tty*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
