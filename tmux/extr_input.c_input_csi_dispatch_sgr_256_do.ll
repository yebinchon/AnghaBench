; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_csi_dispatch_sgr_256_do.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_csi_dispatch_sgr_256_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.grid_cell }
%struct.grid_cell = type { i32, i32, i32 }

@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_ctx*, i32, i32)* @input_csi_dispatch_sgr_256_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_csi_dispatch_sgr_256_do(%struct.input_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.grid_cell*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.grid_cell* %10, %struct.grid_cell** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %30

16:                                               ; preds = %13, %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 38
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %21 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 0
  store i32 8, i32* %21, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %27 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %26, i32 0, i32 1
  store i32 8, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %19
  br label %60

30:                                               ; preds = %13
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 38
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @COLOUR_FLAG_256, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %38 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %59

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @COLOUR_FLAG_256, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %47 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %58

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 58
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @COLOUR_FLAG_256, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %56 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %29
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
