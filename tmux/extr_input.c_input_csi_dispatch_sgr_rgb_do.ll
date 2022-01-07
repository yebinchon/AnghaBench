; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_csi_dispatch_sgr_rgb_do.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_csi_dispatch_sgr_rgb_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.grid_cell }
%struct.grid_cell = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_ctx*, i32, i32, i32, i32)* @input_csi_dispatch_sgr_rgb_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_csi_dispatch_sgr_rgb_do(%struct.input_ctx* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.grid_cell*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.input_ctx*, %struct.input_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.grid_cell* %15, %struct.grid_cell** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %5
  store i32 0, i32* %6, align 4
  br label %69

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  store i32 0, i32* %6, align 4
  br label %69

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  store i32 0, i32* %6, align 4
  br label %69

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 38
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i8* @colour_join_rgb(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.grid_cell*, %struct.grid_cell** %12, align 8
  %45 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %68

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 48
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i8* @colour_join_rgb(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.grid_cell*, %struct.grid_cell** %12, align 8
  %55 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %67

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 58
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i8* @colour_join_rgb(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.grid_cell*, %struct.grid_cell** %12, align 8
  %65 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %59, %56
  br label %67

67:                                               ; preds = %66, %49
  br label %68

68:                                               ; preds = %67, %39
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %35, %28, %21
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i8* @colour_join_rgb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
