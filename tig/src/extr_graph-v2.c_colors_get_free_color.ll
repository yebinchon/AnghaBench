; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_colors_get_free_color.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_colors_get_free_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colors = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.colors*)* @colors_get_free_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @colors_get_free_color(%struct.colors* %0) #0 {
  %2 = alloca %struct.colors*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.colors* %0, %struct.colors** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 -1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.colors*, %struct.colors** %2, align 8
  %9 = getelementptr inbounds %struct.colors, %struct.colors* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = call i32 @ARRAY_SIZE(i64* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load %struct.colors*, %struct.colors** %2, align 8
  %15 = getelementptr inbounds %struct.colors, %struct.colors* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load %struct.colors*, %struct.colors** %2, align 8
  %25 = getelementptr inbounds %struct.colors, %struct.colors* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %23, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
