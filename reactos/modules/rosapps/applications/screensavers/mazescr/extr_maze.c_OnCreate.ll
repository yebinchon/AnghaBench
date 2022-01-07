; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_OnCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_OnCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@size = common dso_local global i32 0, align 4
@grid_height = common dso_local global i32 0, align 4
@grid_width = common dso_local global i32 0, align 4
@bw = common dso_local global i32 0, align 4
@hBrushDead = common dso_local global i8* null, align 8
@hBrushLiving = common dso_local global i8* null, align 8
@PS_SOLID = common dso_local global i32 0, align 4
@hPenWall = common dso_local global i32 0, align 4
@hDC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @OnCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnCreate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i64 @time(i32* null)
  %6 = trunc i64 %5 to i32
  %7 = call i32 @srand(i32 %6)
  %8 = call i32 (...) @ReadRegistry()
  %9 = load i32, i32* @size, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 (...) @rand()
  %13 = srem i32 %12, 30
  %14 = add nsw i32 7, %13
  store i32 %14, i32* @size, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @size, align 4
  store i32 %16, i32* @grid_height, align 4
  store i32 %16, i32* @grid_width, align 4
  %17 = load i32, i32* @size, align 4
  %18 = icmp sgt i32 %17, 6
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @size, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sdiv i32 %22, 2
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i32 [ 3, %19 ], [ %23, %20 ]
  store i32 %25, i32* @bw, align 4
  %26 = call i32 @RGB(i32 255, i32 0, i32 0)
  %27 = call i8* @CreateSolidBrush(i32 %26)
  store i8* %27, i8** @hBrushDead, align 8
  %28 = call i32 @RGB(i32 0, i32 255, i32 0)
  %29 = call i8* @CreateSolidBrush(i32 %28)
  store i8* %29, i8** @hBrushLiving, align 8
  %30 = load i32, i32* @PS_SOLID, align 4
  %31 = call i32 @RGB(i32 150, i32 150, i32 150)
  %32 = call i32 @CreatePen(i32 %30, i32 3, i32 %31)
  store i32 %32, i32* @hPenWall, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @GetDC(i32 %33)
  store i32 %34, i32* @hDC, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @start_timer(i32 %35, i32 1)
  %37 = load i32, i32* @TRUE, align 4
  ret i32 %37
}

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @ReadRegistry(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i8* @CreateSolidBrush(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @start_timer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
