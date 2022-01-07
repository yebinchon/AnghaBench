; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_arena_reset.c_do_arena_reset_destroy.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_arena_reset.c_do_arena_reset_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Unexpected mallctlnametomib() failure\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unexpected mallctlbymib() failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @do_arena_reset_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_arena_reset_destroy(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i64], align 16
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 3, i64* %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %9 = call i32 @mallctlnametomib(i8* %7, i64* %8, i64* %6)
  %10 = call i32 @assert_d_eq(i32 %9, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @mallctlbymib(i64* %14, i64 %15, i32* null, i32* null, i32* null, i32 0)
  %17 = call i32 @assert_d_eq(i32 %16, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
