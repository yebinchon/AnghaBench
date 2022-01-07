; ModuleID = '/home/carl/AnghaBench/tmux/extr_client.c_client_get_lock.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_client.c_client_get_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"lock file is %s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"open failed: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"flock failed: %s\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"flock succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @client_get_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_get_lock(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_WRONLY, align 4
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @open(i8* %7, i32 %10, i32 384)
  store i32 %11, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i64, i64* @errno, align 8
  %15 = call i32 @strerror(i64 %14)
  %16 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LOCK_EX, align 4
  %20 = load i32, i32* @LOCK_NB, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @flock(i32 %18, i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %49

24:                                               ; preds = %17
  %25 = load i64, i64* @errno, align 8
  %26 = call i32 @strerror(i64 %25)
  %27 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EAGAIN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @LOCK_EX, align 4
  %37 = call i32 @flock(i32 %35, i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINTR, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i1 [ false, %34 ], [ %42, %39 ]
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %34

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @close(i32 %47)
  store i32 -2, i32* %2, align 4
  br label %52

49:                                               ; preds = %17
  %50 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %46, %31, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
