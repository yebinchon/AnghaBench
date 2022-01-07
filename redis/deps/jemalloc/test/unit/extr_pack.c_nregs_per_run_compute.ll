; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_pack.c_nregs_per_run_compute.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_pack.c_nregs_per_run_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"arenas.bin.0.nregs\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unexpected mallctlnametomb failure\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unexpected mallctlbymib failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @nregs_per_run_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nregs_per_run_compute() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i64], align 16
  %5 = alloca i64, align 8
  %6 = call i32 (...) @binind_compute()
  store i32 %6, i32* %3, align 4
  store i64 4, i64* %5, align 8
  %7 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %8 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* %7, i64* %5)
  %9 = call i32 @assert_d_eq(i32 %8, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 %11, i64* %12, align 16
  store i64 8, i64* %2, align 8
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %14 = load i64, i64* %5, align 8
  %15 = bitcast i64* %1 to i8*
  %16 = call i32 @mallctlbymib(i64* %13, i64 %14, i8* %15, i64* %2, i32* null, i32 0)
  %17 = call i32 @assert_d_eq(i32 %16, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i64, i64* %1, align 8
  ret i64 %18
}

declare dso_local i32 @binind_compute(...) #1

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i8*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
