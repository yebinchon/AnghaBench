; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_prng.c_test_prng_lg_range_u64.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_prng.c_test_prng_lg_range_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"Repeated generation should produce repeated results\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Equivalent generation should produce equivalent results\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Full-width results must not immediately repeat\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"High order bits should be 0, lg_range=%u\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Expected high order bits of full-width result, lg_range=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_prng_lg_range_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_prng_lg_range_u64() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 42, i32* %1, align 4
  %6 = call i32 @prng_lg_range_u64(i32* %1, i32 64)
  store i32 %6, i32* %3, align 4
  store i32 42, i32* %1, align 4
  %7 = call i32 @prng_lg_range_u64(i32* %1, i32 64)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i32, i32, i8*, ...) @assert_u64_eq(i32 %8, i32 %9, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 42, i32* %2, align 4
  %11 = call i32 @prng_lg_range_u64(i32* %2, i32 64)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, i32, i8*, ...) @assert_u64_eq(i32 %12, i32 %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i32 42, i32* %1, align 4
  %15 = call i32 @prng_lg_range_u64(i32* %1, i32 64)
  store i32 %15, i32* %3, align 4
  %16 = call i32 @prng_lg_range_u64(i32* %1, i32 64)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @assert_u64_ne(i32 %17, i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 42, i32* %1, align 4
  %20 = call i32 @prng_lg_range_u64(i32* %1, i32 64)
  store i32 %20, i32* %3, align 4
  store i32 63, i32* %5, align 4
  br label %21

21:                                               ; preds = %41, %0
  %22 = load i32, i32* %5, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  store i32 42, i32* %2, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @prng_lg_range_u64(i32* %2, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @UINT64_C(i32 -1)
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i32, i8*, ...) @assert_u64_eq(i32 %31, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub i32 64, %36
  %38 = lshr i32 %35, %37
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i32, i8*, ...) @assert_u64_eq(i32 %34, i32 %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %21

44:                                               ; preds = %21
  ret void
}

declare dso_local i32 @prng_lg_range_u64(i32*, i32) #1

declare dso_local i32 @assert_u64_eq(i32, i32, i8*, ...) #1

declare dso_local i32 @assert_u64_ne(i32, i32, i8*) #1

declare dso_local i32 @UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
