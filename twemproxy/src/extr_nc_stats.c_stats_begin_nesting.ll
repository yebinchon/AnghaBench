; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_begin_nesting.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_begin_nesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.stats_buffer }
%struct.stats_buffer = type { i32, i32, i32* }
%struct.string = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"\22%.*s\22: {\00", align 1
@NC_ERROR = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stats*, %struct.string*)* @stats_begin_nesting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_begin_nesting(%struct.stats* %0, %struct.string* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stats*, align 8
  %5 = alloca %struct.string*, align 8
  %6 = alloca %struct.stats_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.stats* %0, %struct.stats** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  %10 = load %struct.stats*, %struct.stats** %4, align 8
  %11 = getelementptr inbounds %struct.stats, %struct.stats* %10, i32 0, i32 0
  store %struct.stats_buffer* %11, %struct.stats_buffer** %6, align 8
  %12 = load %struct.stats_buffer*, %struct.stats_buffer** %6, align 8
  %13 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.stats_buffer*, %struct.stats_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  store i32* %19, i32** %7, align 8
  %20 = load %struct.stats_buffer*, %struct.stats_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stats_buffer*, %struct.stats_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.string*, %struct.string** %5, align 8
  %32 = getelementptr inbounds %struct.string, %struct.string* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.string*, %struct.string** %5, align 8
  %35 = getelementptr inbounds %struct.string, %struct.string* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nc_snprintf(i32* %29, i64 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %2
  %46 = load i32, i32* @NC_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.stats_buffer*, %struct.stats_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load i32, i32* @NC_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %47, %45
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @nc_snprintf(i32*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
