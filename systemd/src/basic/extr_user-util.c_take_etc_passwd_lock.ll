; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_take_etc_passwd_lock.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_take_etc_passwd_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i32, i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@ETC_PASSWD_LOCK_PATH = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Cannot open %s: %m\00", align 1
@F_SETLKW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Locking %s failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @take_etc_passwd_lock(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.flock, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = getelementptr inbounds %struct.flock, %struct.flock* %4, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.flock, %struct.flock* %4, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.flock, %struct.flock* %4, i32 0, i32 2
  %11 = load i32, i32* @SEEK_SET, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.flock, %struct.flock* %4, i32 0, i32 3
  %13 = load i32, i32* @F_WRLCK, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** @ETC_PASSWD_LOCK_PATH, align 8
  %19 = call i8* @prefix_roota(i8* %17, i8* %18)
  store i8* %19, i8** %5, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i8*, i8** @ETC_PASSWD_LOCK_PATH, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @O_WRONLY, align 4
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @O_CLOEXEC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @O_NOCTTY, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_NOFOLLOW, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open(i8* %23, i32 %32, i32 384)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load i32, i32* @errno, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @log_debug_errno(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @F_SETLKW, align 4
  %43 = call i32 @fcntl(i32 %41, i32 %42, %struct.flock* %4)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @safe_close(i32 %47)
  %49 = load i32, i32* @errno, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @log_debug_errno(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %46, %36
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @prefix_roota(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i8*) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @safe_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
