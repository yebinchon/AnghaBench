; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_resize_box.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_resize_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_box = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlr_box*, i32, i32)* @resize_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_box(%struct.wlr_box* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wlr_box*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wlr_box* %0, %struct.wlr_box** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %69 [
    i32 128, label %8
    i32 131, label %12
    i32 129, label %16
    i32 132, label %31
    i32 130, label %46
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %11 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  br label %69

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %15 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %18 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %21 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %27 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %30 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %69

31:                                               ; preds = %3
  %32 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %33 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %36 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %42 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %45 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %69

46:                                               ; preds = %3
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %49 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %54 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 2
  %59 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %60 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %66 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %3, %46, %31, %16, %12, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
