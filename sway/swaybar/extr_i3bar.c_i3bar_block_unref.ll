; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_i3bar.c_i3bar_block_unref.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_i3bar.c_i3bar_block_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3bar_block = type { i64, %struct.i3bar_block*, %struct.i3bar_block*, %struct.i3bar_block*, %struct.i3bar_block*, %struct.i3bar_block*, %struct.i3bar_block*, %struct.i3bar_block* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i3bar_block_unref(%struct.i3bar_block* %0) #0 {
  %2 = alloca %struct.i3bar_block*, align 8
  store %struct.i3bar_block* %0, %struct.i3bar_block** %2, align 8
  %3 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %4 = icmp eq %struct.i3bar_block* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %43

6:                                                ; preds = %1
  %7 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %8 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %6
  %13 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %14 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %13, i32 0, i32 7
  %15 = load %struct.i3bar_block*, %struct.i3bar_block** %14, align 8
  %16 = call i32 @free(%struct.i3bar_block* %15)
  %17 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %18 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %17, i32 0, i32 6
  %19 = load %struct.i3bar_block*, %struct.i3bar_block** %18, align 8
  %20 = call i32 @free(%struct.i3bar_block* %19)
  %21 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %22 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %21, i32 0, i32 5
  %23 = load %struct.i3bar_block*, %struct.i3bar_block** %22, align 8
  %24 = call i32 @free(%struct.i3bar_block* %23)
  %25 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %26 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %25, i32 0, i32 4
  %27 = load %struct.i3bar_block*, %struct.i3bar_block** %26, align 8
  %28 = call i32 @free(%struct.i3bar_block* %27)
  %29 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %30 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %29, i32 0, i32 3
  %31 = load %struct.i3bar_block*, %struct.i3bar_block** %30, align 8
  %32 = call i32 @free(%struct.i3bar_block* %31)
  %33 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %34 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %33, i32 0, i32 2
  %35 = load %struct.i3bar_block*, %struct.i3bar_block** %34, align 8
  %36 = call i32 @free(%struct.i3bar_block* %35)
  %37 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %38 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %37, i32 0, i32 1
  %39 = load %struct.i3bar_block*, %struct.i3bar_block** %38, align 8
  %40 = call i32 @free(%struct.i3bar_block* %39)
  %41 = load %struct.i3bar_block*, %struct.i3bar_block** %2, align 8
  %42 = call i32 @free(%struct.i3bar_block* %41)
  br label %43

43:                                               ; preds = %5, %12, %6
  ret void
}

declare dso_local i32 @free(%struct.i3bar_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
