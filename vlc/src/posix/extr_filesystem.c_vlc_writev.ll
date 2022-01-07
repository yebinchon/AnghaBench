; ModuleID = '/home/carl/AnghaBench/vlc/src/posix/extr_filesystem.c_vlc_writev.c'
source_filename = "/home/carl/AnghaBench/vlc/src/posix/extr_filesystem.c_vlc_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_writev(i32 %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 @sigemptyset(i32* %7)
  %13 = load i32, i32* @SIGPIPE, align 4
  %14 = call i32 @sigaddset(i32* %7, i32 %13)
  %15 = load i32, i32* @SIG_BLOCK, align 4
  %16 = call i32 @pthread_sigmask(i32 %15, i32* %7, i32* %8)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.iovec*, %struct.iovec** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @writev(i32 %17, %struct.iovec* %18, i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %3
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EPIPE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %34, %27
  %29 = call i32 @sigpending(i32* %10)
  %30 = load i32, i32* @SIGPIPE, align 4
  %31 = call i32 @sigismember(i32* %10, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %41

34:                                               ; preds = %28
  %35 = call i32 @sigwait(i32* %7, i32* %11)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SIGPIPE, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  br label %28

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %23, %3
  %43 = load i32, i32* @SIGPIPE, align 4
  %44 = call i32 @sigismember(i32* %8, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @SIG_SETMASK, align 4
  %48 = call i32 @pthread_sigmask(i32 %47, i32* %8, i32* null)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64, i64* %9, align 8
  ret i64 %50
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @sigpending(i32*) #1

declare dso_local i32 @sigismember(i32*, i32) #1

declare dso_local i32 @sigwait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
