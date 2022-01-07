; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_async.c_asynchronous_job.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_async.c_asynchronous_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asynchronous_job(i8* (i8*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8* (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* (i8*)* %0, i8* (i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = call i32 @pthread_attr_init(i32* %8)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %20 = call i32 @pthread_attr_setdetachstate(i32* %8, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %58

26:                                               ; preds = %18
  %27 = call i64 @sigfillset(i32* %6)
  %28 = icmp sge i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = load i32, i32* @SIG_BLOCK, align 4
  %32 = call i32 @pthread_sigmask(i32 %31, i32* %6, i32* %7)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %58

38:                                               ; preds = %26
  %39 = load i8* (i8*)*, i8* (i8*)** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @pthread_create(i32* %9, i32* %8, i8* (i8*)* %39, i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @SIG_SETMASK, align 4
  %43 = call i32 @pthread_sigmask(i32 %42, i32* %7, i32* null)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %57

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %56

55:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %35, %23
  %59 = call i32 @pthread_attr_destroy(i32* %8)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigfillset(i32*) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
