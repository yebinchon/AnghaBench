; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_check_codeset.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_check_codeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_cell = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i64 }
%struct.tty = type { i32 }

@tty_check_codeset.new = internal global %struct.grid_cell zeroinitializer, align 8
@TTY_UTF8 = common dso_local global i32 0, align 4
@UTF8_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grid_cell* (%struct.tty*, %struct.grid_cell*)* @tty_check_codeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grid_cell* @tty_check_codeset(%struct.tty* %0, %struct.grid_cell* %1) #0 {
  %3 = alloca %struct.grid_cell*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  %7 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %8 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %14 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 127
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  store %struct.grid_cell* %20, %struct.grid_cell** %3, align 8
  br label %48

21:                                               ; preds = %12, %2
  %22 = load %struct.tty*, %struct.tty** %4, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TTY_UTF8, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  store %struct.grid_cell* %29, %struct.grid_cell** %3, align 8
  br label %48

30:                                               ; preds = %21
  %31 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %32 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @UTF8_SIZE, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i64, i64* @UTF8_SIZE, align 8
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %38, %30
  %41 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %42 = call i32 @memcpy(%struct.grid_cell* @tty_check_codeset.new, %struct.grid_cell* %41, i32 24)
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* getelementptr inbounds (%struct.grid_cell, %struct.grid_cell* @tty_check_codeset.new, i32 0, i32 0, i32 0), align 8
  %45 = load i32*, i32** getelementptr inbounds (%struct.grid_cell, %struct.grid_cell* @tty_check_codeset.new, i32 0, i32 0, i32 1), align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @memset(i32* %45, i8 signext 95, i64 %46)
  store %struct.grid_cell* @tty_check_codeset.new, %struct.grid_cell** %3, align 8
  br label %48

48:                                               ; preds = %40, %28, %19
  %49 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  ret %struct.grid_cell* %49
}

declare dso_local i32 @memcpy(%struct.grid_cell*, %struct.grid_cell*, i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
