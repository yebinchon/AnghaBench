; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_decay.c_do_arena_create.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_decay.c_do_arena_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"arenas.create\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected mallctl() failure\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"arena.0.dirty_decay_ms\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unexpected mallctlnametomib() failure\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unexpected mallctlbymib() failure\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"arena.0.muzzy_decay_ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_arena_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_arena_create(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [3 x i64], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64 4, i64* %6, align 8
  %9 = bitcast i32* %5 to i8*
  %10 = call i32 @mallctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %9, i64* %6, i32* null, i32 0)
  %11 = call i32 @assert_d_eq(i32 %10, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i64 3, i64* %8, align 8
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %13 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64* %12, i64* %8)
  %14 = call i32 @assert_d_eq(i32 %13, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %19 = load i64, i64* %8, align 8
  %20 = bitcast i32* %3 to i8*
  %21 = call i32 @mallctlbymib(i64* %18, i64 %19, i32* null, i32* null, i8* %20, i32 4)
  %22 = call i32 @assert_d_eq(i32 %21, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %24 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64* %23, i64* %8)
  %25 = call i32 @assert_d_eq(i32 %24, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %30 = load i64, i64* %8, align 8
  %31 = bitcast i32* %4 to i8*
  %32 = call i32 @mallctlbymib(i64* %29, i64 %30, i32* null, i32* null, i8* %31, i32 4)
  %33 = call i32 @assert_d_eq(i32 %32, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
