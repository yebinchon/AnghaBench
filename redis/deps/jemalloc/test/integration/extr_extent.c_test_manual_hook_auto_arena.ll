; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_extent.c_test_manual_hook_auto_arena.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_extent.c_test_manual_hook_auto_arena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"opt.narenas\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected mallctl() failure\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"arena.0.extent_hooks\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unexpected mallctlnametomib() failure\00", align 1
@hooks = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Unexpected extent_hooks error\00", align 1
@test_manual_hook_auto_arena.auto_arena_created = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Expected auto arena 1 created only once.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_manual_hook_auto_arena to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_manual_hook_auto_arena() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = call i32 (...) @extent_hooks_prep()
  store i64 4, i64* %4, align 8
  %10 = bitcast i32* %1 to i8*
  %11 = call i32 @mallctl(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %10, i64* %4, i32* null, i32 0)
  %12 = call i32 @assert_d_eq(i32 %11, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %33

16:                                               ; preds = %0
  store i64 3, i64* %6, align 8
  %17 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %18 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64* %17, i64* %6)
  %19 = call i32 @assert_d_eq(i32 %18, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %20 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 1, i64* %20, align 8
  store i64 8, i64* %2, align 8
  store i32* @hooks, i32** %7, align 8
  store i64 8, i64* %3, align 8
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %22 = load i64, i64* %6, align 8
  %23 = bitcast i32** %8 to i8*
  %24 = bitcast i32** %7 to i8*
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @mallctlbymib(i64* %21, i64 %22, i8* %23, i64* %2, i8* %24, i64 %25)
  %27 = call i32 @assert_d_eq(i32 %26, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, @hooks
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @test_manual_hook_auto_arena.auto_arena_created, align 4
  %32 = call i32 @assert_b_eq(i32 %31, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* @test_manual_hook_auto_arena.auto_arena_created, align 4
  br label %33

33:                                               ; preds = %15, %30, %16
  ret void
}

declare dso_local i32 @extent_hooks_prep(...) #1

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i8*, i64*, i8*, i64) #1

declare dso_local i32 @assert_b_eq(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
