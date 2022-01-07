; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_prof_active.c_mallctl_bool_set.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_prof_active.c_mallctl_bool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"%s():%d: Unexpected mallctl failure reading/writing %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s():%d: Unexpected %s value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i32)* @mallctl_bool_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mallctl_bool_set(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 4, i64* %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i32* %11 to i8*
  %15 = bitcast i32* %8 to i8*
  %16 = call i32 @mallctl(i8* %13, i8* %14, i64* %12, i8* %15, i32 4)
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @assert_d_eq(i32 %16, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i8* %19)
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @assert_b_eq(i32 %21, i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %24, i8* %25)
  ret void
}

declare dso_local i32 @assert_d_eq(i32, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i8*, i32) #1

declare dso_local i32 @assert_b_eq(i32, i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
