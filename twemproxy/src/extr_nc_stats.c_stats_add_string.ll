; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_add_string.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.stats_buffer }
%struct.stats_buffer = type { i32, i32, i32* }
%struct.string = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"\22%.*s\22:\22%.*s\22, \00", align 1
@NC_ERROR = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stats*, %struct.string*, %struct.string*)* @stats_add_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_add_string(%struct.stats* %0, %struct.string* %1, %struct.string* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stats*, align 8
  %6 = alloca %struct.string*, align 8
  %7 = alloca %struct.string*, align 8
  %8 = alloca %struct.stats_buffer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.stats* %0, %struct.stats** %5, align 8
  store %struct.string* %1, %struct.string** %6, align 8
  store %struct.string* %2, %struct.string** %7, align 8
  %12 = load %struct.stats*, %struct.stats** %5, align 8
  %13 = getelementptr inbounds %struct.stats, %struct.stats* %12, i32 0, i32 0
  store %struct.stats_buffer* %13, %struct.stats_buffer** %8, align 8
  %14 = load %struct.stats_buffer*, %struct.stats_buffer** %8, align 8
  %15 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.stats_buffer*, %struct.stats_buffer** %8, align 8
  %18 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %9, align 8
  %22 = load %struct.stats_buffer*, %struct.stats_buffer** %8, align 8
  %23 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.stats_buffer*, %struct.stats_buffer** %8, align 8
  %26 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.string*, %struct.string** %6, align 8
  %34 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.string*, %struct.string** %6, align 8
  %37 = getelementptr inbounds %struct.string, %struct.string* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.string*, %struct.string** %7, align 8
  %40 = getelementptr inbounds %struct.string, %struct.string* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.string*, %struct.string** %7, align 8
  %43 = getelementptr inbounds %struct.string, %struct.string* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nc_snprintf(i32* %31, i64 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %3
  %49 = load i32, i32* %11, align 4
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp sge i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %3
  %54 = load i32, i32* @NC_ERROR, align 4
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.stats_buffer*, %struct.stats_buffer** %8, align 8
  %59 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load i32, i32* @NC_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %55, %53
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @nc_snprintf(i32*, i64, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
