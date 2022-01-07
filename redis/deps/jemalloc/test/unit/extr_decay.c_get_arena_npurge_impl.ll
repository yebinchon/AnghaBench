; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_decay.c_get_arena_npurge_impl.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_decay.c_get_arena_npurge_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Unexpected mallctlnametomib() failure\00", align 1
@config_stats = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unexpected mallctlbymib() failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @get_arena_npurge_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_arena_npurge_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 4, i64* %6, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %11 = call i32 @mallctlnametomib(i8* %9, i64* %10, i64* %6)
  %12 = call i32 @assert_d_eq(i32 %11, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  store i64 %14, i64* %15, align 16
  store i64 0, i64* %7, align 8
  store i64 8, i64* %8, align 8
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %17 = load i64, i64* %6, align 8
  %18 = bitcast i64* %7 to i8*
  %19 = call i32 @mallctlbymib(i64* %16, i64 %17, i8* %18, i64* %8, i32* null, i32 0)
  %20 = load i64, i64* @config_stats, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOENT, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 0, %22 ], [ %24, %23 ]
  %27 = call i32 @assert_d_eq(i32 %19, i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* %7, align 8
  ret i64 %28
}

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i8*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
