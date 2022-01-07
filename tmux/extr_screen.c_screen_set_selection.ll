; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_set_selection.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8*, i64, i32 }
%struct.grid_cell = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_set_selection(%struct.screen* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, %struct.grid_cell* %7) #0 {
  %9 = alloca %struct.screen*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.grid_cell*, align 8
  store %struct.screen* %0, %struct.screen** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.grid_cell* %7, %struct.grid_cell** %16, align 8
  %17 = load %struct.screen*, %struct.screen** %9, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %8
  %22 = call %struct.TYPE_2__* @xcalloc(i32 1, i32 64)
  %23 = load %struct.screen*, %struct.screen** %9, align 8
  %24 = getelementptr inbounds %struct.screen, %struct.screen* %23, i32 0, i32 0
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  br label %25

25:                                               ; preds = %21, %8
  %26 = load %struct.screen*, %struct.screen** %9, align 8
  %27 = getelementptr inbounds %struct.screen, %struct.screen* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  %30 = load %struct.grid_cell*, %struct.grid_cell** %16, align 8
  %31 = call i32 @memcpy(i32* %29, %struct.grid_cell* %30, i32 4)
  %32 = load %struct.screen*, %struct.screen** %9, align 8
  %33 = getelementptr inbounds %struct.screen, %struct.screen* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load %struct.screen*, %struct.screen** %9, align 8
  %38 = getelementptr inbounds %struct.screen, %struct.screen* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.screen*, %struct.screen** %9, align 8
  %43 = getelementptr inbounds %struct.screen, %struct.screen* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.screen*, %struct.screen** %9, align 8
  %48 = getelementptr inbounds %struct.screen, %struct.screen* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i8* %46, i8** %50, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.screen*, %struct.screen** %9, align 8
  %53 = getelementptr inbounds %struct.screen, %struct.screen* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i8* %51, i8** %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.screen*, %struct.screen** %9, align 8
  %58 = getelementptr inbounds %struct.screen, %struct.screen* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i8* %56, i8** %60, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load %struct.screen*, %struct.screen** %9, align 8
  %63 = getelementptr inbounds %struct.screen, %struct.screen* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i8* %61, i8** %65, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @xcalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.grid_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
