; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.grid_cell = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.window_pane = type { i32 }

@TERM_EARLYWRAP = common dso_local global i32 0, align 4
@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.grid_cell*, %struct.window_pane*)* @tty_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_cell(%struct.tty* %0, %struct.grid_cell* %1, %struct.window_pane* %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca %struct.grid_cell*, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  store %struct.window_pane* %2, %struct.window_pane** %6, align 8
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TERM_EARLYWRAP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.tty*, %struct.tty** %4, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tty*, %struct.tty** %4, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.tty*, %struct.tty** %4, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.tty*, %struct.tty** %4, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %94

35:                                               ; preds = %25, %16, %3
  %36 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %37 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %94

43:                                               ; preds = %35
  %44 = load %struct.tty*, %struct.tty** %4, align 8
  %45 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %46 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %47 = call i32 @tty_attributes(%struct.tty* %44, %struct.grid_cell* %45, %struct.window_pane* %46)
  %48 = load %struct.tty*, %struct.tty** %4, align 8
  %49 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %50 = call %struct.grid_cell* @tty_check_codeset(%struct.tty* %48, %struct.grid_cell* %49)
  store %struct.grid_cell* %50, %struct.grid_cell** %7, align 8
  %51 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %52 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %79

56:                                               ; preds = %43
  %57 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %58 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %65 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 127
  br i1 %69, label %70, label %71

70:                                               ; preds = %63, %56
  br label %94

71:                                               ; preds = %63
  %72 = load %struct.tty*, %struct.tty** %4, align 8
  %73 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %74 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @tty_putc(%struct.tty* %72, i32 %77)
  br label %94

79:                                               ; preds = %43
  %80 = load %struct.tty*, %struct.tty** %4, align 8
  %81 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %82 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %86 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %90 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @tty_putn(%struct.tty* %80, i32* %84, i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %79, %71, %70, %42, %34
  ret void
}

declare dso_local i32 @tty_attributes(%struct.tty*, %struct.grid_cell*, %struct.window_pane*) #1

declare dso_local %struct.grid_cell* @tty_check_codeset(%struct.tty*, %struct.grid_cell*) #1

declare dso_local i32 @tty_putc(%struct.tty*, i32) #1

declare dso_local i32 @tty_putn(%struct.tty*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
