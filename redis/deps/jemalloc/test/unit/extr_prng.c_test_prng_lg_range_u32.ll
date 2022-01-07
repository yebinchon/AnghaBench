; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_prng.c_test_prng_lg_range_u32.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_prng.c_test_prng_lg_range_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Repeated generation should produce repeated results\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Equivalent generation should produce equivalent results\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Full-width results must not immediately repeat\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"High order bits should be 0, lg_range=%u\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Expected high order bits of full-width result, lg_range=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_prng_lg_range_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_prng_lg_range_u32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @ATOMIC_RELAXED, align 4
  %9 = call i32 @atomic_store_u32(i32* %3, i32 42, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @prng_lg_range_u32(i32* %3, i32 32, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @ATOMIC_RELAXED, align 4
  %13 = call i32 @atomic_store_u32(i32* %3, i32 42, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @prng_lg_range_u32(i32* %3, i32 32, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32, i32, i8*, ...) @assert_u32_eq(i32 %16, i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ATOMIC_RELAXED, align 4
  %20 = call i32 @atomic_store_u32(i32* %4, i32 42, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @prng_lg_range_u32(i32* %4, i32 32, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32, i32, i8*, ...) @assert_u32_eq(i32 %23, i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ATOMIC_RELAXED, align 4
  %27 = call i32 @atomic_store_u32(i32* %3, i32 42, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @prng_lg_range_u32(i32* %3, i32 32, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @prng_lg_range_u32(i32* %3, i32 32, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @assert_u32_ne(i32 %32, i32 %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @ATOMIC_RELAXED, align 4
  %36 = call i32 @atomic_store_u32(i32* %3, i32 42, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @prng_lg_range_u32(i32* %3, i32 32, i32 %37)
  store i32 %38, i32* %5, align 4
  store i32 31, i32* %7, align 4
  br label %39

39:                                               ; preds = %62, %1
  %40 = load i32, i32* %7, align 4
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32, i32* @ATOMIC_RELAXED, align 4
  %44 = call i32 @atomic_store_u32(i32* %4, i32 42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @prng_lg_range_u32(i32* %4, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @UINT32_C(i32 -1)
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %49, %50
  %52 = and i32 %48, %51
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i32, i8*, ...) @assert_u32_eq(i32 %52, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub i32 32, %57
  %59 = lshr i32 %56, %58
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32, i32, i8*, ...) @assert_u32_eq(i32 %55, i32 %59, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %7, align 4
  br label %39

65:                                               ; preds = %39
  ret void
}

declare dso_local i32 @atomic_store_u32(i32*, i32, i32) #1

declare dso_local i32 @prng_lg_range_u32(i32*, i32, i32) #1

declare dso_local i32 @assert_u32_eq(i32, i32, i8*, ...) #1

declare dso_local i32 @assert_u32_ne(i32, i32, i8*) #1

declare dso_local i32 @UINT32_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
