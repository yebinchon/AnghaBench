; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_send_rsp.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_send_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"accept on m %d failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@NC_ERROR = common dso_local global i64 0, align 8
@LOG_VERB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"send stats on sd %d %d bytes\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"send stats on sd %d failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stats*)* @stats_send_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stats_send_rsp(%struct.stats* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stats*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.stats* %0, %struct.stats** %3, align 8
  %7 = load %struct.stats*, %struct.stats** %3, align 8
  %8 = call i64 @stats_make_rsp(%struct.stats* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @NC_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %2, align 8
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.stats*, %struct.stats** %3, align 8
  %16 = getelementptr inbounds %struct.stats, %struct.stats* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @accept(i32 %17, i32* null, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.stats*, %struct.stats** %3, align 8
  %23 = getelementptr inbounds %struct.stats, %struct.stats* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load i64, i64* @NC_ERROR, align 8
  store i64 %28, i64* %2, align 8
  br label %61

29:                                               ; preds = %14
  %30 = load i32, i32* @LOG_VERB, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.stats*, %struct.stats** %3, align 8
  %33 = getelementptr inbounds %struct.stats, %struct.stats* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @log_debug(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.stats*, %struct.stats** %3, align 8
  %39 = getelementptr inbounds %struct.stats, %struct.stats* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.stats*, %struct.stats** %3, align 8
  %43 = getelementptr inbounds %struct.stats, %struct.stats* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @nc_sendn(i32 %37, i32 %41, i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %29
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i64, i64* @NC_ERROR, align 8
  store i64 %56, i64* %2, align 8
  br label %61

57:                                               ; preds = %29
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i64, i64* @NC_OK, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %57, %49, %21, %12
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i64 @stats_make_rsp(%struct.stats*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @log_error(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32) #1

declare dso_local i64 @nc_sendn(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
