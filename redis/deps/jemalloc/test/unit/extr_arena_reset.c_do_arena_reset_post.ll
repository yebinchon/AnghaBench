; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_arena_reset.c_do_arena_reset_post.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_arena_reset.c_do_arena_reset_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@have_background_thread = common dso_local global i64 0, align 8
@background_thread_info = common dso_local global %struct.TYPE_2__* null, align 8
@ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Allocation should no longer exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32)* @do_arena_reset_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_arena_reset_post(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32* (...) @tsdn_fetch()
  store i32* %9, i32** %7, align 8
  %10 = load i64, i64* @have_background_thread, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @background_thread_info, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ncpus, align 4
  %17 = urem i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @malloc_mutex_lock(i32* %13, i32* %20)
  br label %22

22:                                               ; preds = %12, %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i8**, i8*** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @vsalloc(i32* %28, i8* %33)
  %35 = call i32 @assert_zu_eq(i32 %34, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load i64, i64* @have_background_thread, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @background_thread_info, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ncpus, align 4
  %47 = urem i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @malloc_mutex_unlock(i32* %43, i32* %50)
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i8**, i8*** %4, align 8
  %54 = call i32 @free(i8** %53)
  ret void
}

declare dso_local i32* @tsdn_fetch(...) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @assert_zu_eq(i32, i32, i8*) #1

declare dso_local i32 @vsalloc(i32*, i8*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
