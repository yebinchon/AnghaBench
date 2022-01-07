; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_create.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i32*, i8*, i64, i64, i32, i8* }

@GRID_HISTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.grid* @grid_create(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.grid*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call %struct.grid* @xmalloc(i32 56)
  store %struct.grid* %8, %struct.grid** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.grid*, %struct.grid** %7, align 8
  %11 = getelementptr inbounds %struct.grid, %struct.grid* %10, i32 0, i32 6
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load %struct.grid*, %struct.grid** %7, align 8
  %15 = getelementptr inbounds %struct.grid, %struct.grid* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @GRID_HISTORY, align 4
  %17 = load %struct.grid*, %struct.grid** %7, align 8
  %18 = getelementptr inbounds %struct.grid, %struct.grid* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.grid*, %struct.grid** %7, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.grid*, %struct.grid** %7, align 8
  %22 = getelementptr inbounds %struct.grid, %struct.grid* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.grid*, %struct.grid** %7, align 8
  %25 = getelementptr inbounds %struct.grid, %struct.grid* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.grid*, %struct.grid** %7, align 8
  %27 = getelementptr inbounds %struct.grid, %struct.grid* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.grid*, %struct.grid** %7, align 8
  %32 = getelementptr inbounds %struct.grid, %struct.grid* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32* @xcalloc(i64 %33, i32 4)
  %35 = load %struct.grid*, %struct.grid** %7, align 8
  %36 = getelementptr inbounds %struct.grid, %struct.grid* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  br label %40

37:                                               ; preds = %3
  %38 = load %struct.grid*, %struct.grid** %7, align 8
  %39 = getelementptr inbounds %struct.grid, %struct.grid* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.grid*, %struct.grid** %7, align 8
  ret %struct.grid* %41
}

declare dso_local %struct.grid* @xmalloc(i32) #1

declare dso_local i32* @xcalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
