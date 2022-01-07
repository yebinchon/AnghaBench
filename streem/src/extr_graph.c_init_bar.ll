; ModuleID = '/home/carl/AnghaBench/streem/src/extr_graph.c_init_bar.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_graph.c_init_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bar_data = type { i32, i32, i32, i64*, i64, i64, i64 }

@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bar_data*)* @init_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_bar(%struct.bar_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bar_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bar_data* %0, %struct.bar_data** %3, align 8
  %5 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %6 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %5, i32 0, i32 4
  %7 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %8 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %7, i32 0, i32 0
  %9 = call i64 @get_winsize(i64* %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @STRM_NG, align 4
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %15 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %17 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %19 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 6
  %22 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %23 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %25 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 3
  %28 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %29 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  %30 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %31 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i64* @malloc(i32 %35)
  %37 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %38 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %37, i32 0, i32 3
  store i64* %36, i64** %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %52, %13
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %42 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %47 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load %struct.bar_data*, %struct.bar_data** %3, align 8
  %57 = call i32 @show_title(%struct.bar_data* %56)
  %58 = load i32, i32* @STRM_OK, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @get_winsize(i64*, i32*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @show_title(%struct.bar_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
