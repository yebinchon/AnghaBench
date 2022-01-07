; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_add_footer.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_add_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.stats_buffer }
%struct.stats_buffer = type { i64, i64, i8* }

@NC_ERROR = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stats*)* @stats_add_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_add_footer(%struct.stats* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stats*, align 8
  %4 = alloca %struct.stats_buffer*, align 8
  %5 = alloca i8*, align 8
  store %struct.stats* %0, %struct.stats** %3, align 8
  %6 = load %struct.stats*, %struct.stats** %3, align 8
  %7 = getelementptr inbounds %struct.stats, %struct.stats* %6, i32 0, i32 0
  store %struct.stats_buffer* %7, %struct.stats_buffer** %4, align 8
  %8 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @NC_ERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 125, i8* %27, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 10, i8* %29, align 1
  %30 = load %struct.stats_buffer*, %struct.stats_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.stats_buffer, %struct.stats_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* @NC_OK, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %17, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
