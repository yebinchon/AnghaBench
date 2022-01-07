; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_find_box_max_score.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_find_box_max_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.box* (%struct.box*, i32)* @find_box_max_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.box* @find_box_max_score(%struct.box* %0, i32 %1) #0 {
  %3 = alloca %struct.box*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.box*, align 8
  store %struct.box* %0, %struct.box** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.box* null, %struct.box** %5, align 8
  br label %6

6:                                                ; preds = %29, %2
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.box*, %struct.box** %3, align 8
  %12 = getelementptr inbounds %struct.box, %struct.box* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.box*, %struct.box** %5, align 8
  %17 = icmp ne %struct.box* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.box*, %struct.box** %3, align 8
  %20 = getelementptr inbounds %struct.box, %struct.box* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.box*, %struct.box** %5, align 8
  %23 = getelementptr inbounds %struct.box, %struct.box* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18, %15
  %27 = load %struct.box*, %struct.box** %3, align 8
  store %struct.box* %27, %struct.box** %5, align 8
  br label %28

28:                                               ; preds = %26, %18, %10
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.box*, %struct.box** %3, align 8
  %31 = getelementptr inbounds %struct.box, %struct.box* %30, i32 1
  store %struct.box* %31, %struct.box** %3, align 8
  br label %6

32:                                               ; preds = %6
  %33 = load %struct.box*, %struct.box** %5, align 8
  ret %struct.box* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
