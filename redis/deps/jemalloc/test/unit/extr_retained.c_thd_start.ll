; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_retained.c_thd_start.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_retained.c_thd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEPOCHS = common dso_local global i32 0, align 4
@SPIN_INITIALIZER = common dso_local global i32 0, align 4
@epoch = common dso_local global i32 0, align 4
@ATOMIC_ACQUIRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unexpected epoch\00", align 1
@PER_THD_NALLOCS = common dso_local global i32 0, align 4
@sz = common dso_local global i32 0, align 4
@arena_ind = common dso_local global i32 0, align 4
@MALLOCX_TCACHE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unexpected mallocx() failure\0A\00", align 1
@nfinished = common dso_local global i32 0, align 4
@ATOMIC_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thd_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NEPOCHS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load i32, i32* @SPIN_INITIALIZER, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %19, %12
  %15 = load i32, i32* @ATOMIC_ACQUIRE, align 4
  %16 = call i32 @atomic_load_u(i32* @epoch, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @spin_adaptive(i32* %5)
  br label %14

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @assert_u_eq(i32 %22, i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %38, %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PER_THD_NALLOCS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* @sz, align 4
  %31 = load i32, i32* @arena_ind, align 4
  %32 = call i32 @MALLOCX_ARENA(i32 %31)
  %33 = load i32, i32* @MALLOCX_TCACHE_NONE, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @mallocx(i32 %30, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @assert_ptr_not_null(i8* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load i32, i32* @ATOMIC_RELEASE, align 4
  %43 = call i32 @atomic_fetch_add_u(i32* @nfinished, i32 1, i32 %42)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %8

47:                                               ; preds = %8
  ret i8* null
}

declare dso_local i32 @atomic_load_u(i32*, i32) #1

declare dso_local i32 @spin_adaptive(i32*) #1

declare dso_local i32 @assert_u_eq(i32, i32, i8*) #1

declare dso_local i8* @mallocx(i32, i32) #1

declare dso_local i32 @MALLOCX_ARENA(i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i32 @atomic_fetch_add_u(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
