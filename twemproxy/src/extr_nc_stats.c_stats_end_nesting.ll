; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_end_nesting.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_end_nesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.stats_buffer }
%struct.stats_buffer = type { i32*, i32, i32 }

@NC_ERROR = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stats*)* @stats_end_nesting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_end_nesting(%struct.stats* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stats*, align 8
  %4 = alloca %struct.stats_buffer*, align 8
  %5 = alloca i32*, align 8
  store %struct.stats* %0, %struct.stats** %3, align 8
  %6 = load %struct.stats*, %struct.stats** %3, align 8
  %7 = getelementptr inbounds %struct.stats, %struct.stats* %6, i32 0, i32 0
  store %struct.stats_buffer* %7, %struct.stats_buffer** %4, align 8
  %8 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 -2
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %57 [
    i32 44, label %21
    i32 125, label %32
  ]

21:                                               ; preds = %1
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 32
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 125, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 44, i32* %31, align 4
  br label %59

32:                                               ; preds = %1
  %33 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @NC_ERROR, align 4
  store i32 %41, i32* %2, align 4
  br label %61

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 44
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 125, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 44, i32* %52, align 4
  %53 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %59

57:                                               ; preds = %1
  %58 = call i32 (...) @NOT_REACHED()
  br label %59

59:                                               ; preds = %57, %42, %21
  %60 = load i32, i32* @NC_OK, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %40
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
