; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_util.c_create_recursive_mutex.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_util.c_create_recursive_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_recursive_mutex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = call i64 @pthread_mutexattr_init(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

8:                                                ; preds = %1
  %9 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %10 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @pthread_mutexattr_destroy(i32* %4)
  store i32 -1, i32* %2, align 4
  br label %22

14:                                               ; preds = %8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @pthread_mutex_init(i32* %15, i32* %4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @pthread_mutexattr_destroy(i32* %4)
  store i32 -1, i32* %2, align 4
  br label %22

20:                                               ; preds = %14
  %21 = call i32 @pthread_mutexattr_destroy(i32* %4)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18, %12, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
