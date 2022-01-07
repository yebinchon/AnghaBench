; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_cache_max.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_cache_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_max.cached = internal global i64 -1, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot query /proc/meminfo for MemTotal: %m\00", align 1
@CACHE_MAX_FALLBACK = common dso_local global i64 0, align 8
@CACHE_MAX_MIN = common dso_local global i32 0, align 4
@CACHE_MAX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @cache_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cache_max() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @cache_max.cached, align 8
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %5, label %22

5:                                                ; preds = %0
  %6 = call i32 @procfs_memory_get(i32* %1, i32* null)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @log_warning_errno(i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @CACHE_MAX_FALLBACK, align 8
  store i64 %12, i64* @cache_max.cached, align 8
  br label %21

13:                                               ; preds = %5
  %14 = load i32, i32* %1, align 4
  %15 = sdiv i32 %14, 8
  %16 = call i32 (...) @sc_arg_max()
  %17 = sdiv i32 %15, %16
  %18 = load i32, i32* @CACHE_MAX_MIN, align 4
  %19 = load i32, i32* @CACHE_MAX_MAX, align 4
  %20 = call i64 @CLAMP(i32 %17, i32 %18, i32 %19)
  store i64 %20, i64* @cache_max.cached, align 8
  br label %21

21:                                               ; preds = %13, %9
  br label %22

22:                                               ; preds = %21, %0
  %23 = load i64, i64* @cache_max.cached, align 8
  ret i64 %23
}

declare dso_local i32 @procfs_memory_get(i32*, i32*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i64 @CLAMP(i32, i32, i32) #1

declare dso_local i32 @sc_arg_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
