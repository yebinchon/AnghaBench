; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_tiny_xpm.c_find_color.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_tiny_xpm.c_find_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index = type { i8, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index*, i32, i8, i64*)* @find_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_color(%struct.index* %0, i32 %1, i8 signext %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.index* %0, %struct.index** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %35, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.index*, %struct.index** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.index, %struct.index* %16, i64 %18
  %20 = getelementptr inbounds %struct.index, %struct.index* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load %struct.index*, %struct.index** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.index, %struct.index* %27, i64 %29
  %31 = getelementptr inbounds %struct.index, %struct.index* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  store i32 1, i32* %5, align 4
  br label %40

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load i64*, i64** %9, align 8
  store i64 0, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
