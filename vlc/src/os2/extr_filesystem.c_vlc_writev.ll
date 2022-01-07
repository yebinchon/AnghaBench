; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_filesystem.c_vlc_writev.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_filesystem.c_vlc_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.timespec = type { i32, i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_writev(i32 %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 4
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
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EPIPE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 8, i1 false)
  br label %29

29:                                               ; preds = %38, %27
  %30 = call i64 @sigtimedwait(i32* %7, i32* %10, %struct.timespec* %11)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EAGAIN, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ true, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %29

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %23, %3
  %41 = load i32, i32* @SIGPIPE, align 4
  %42 = call i32 @sigismember(i32* %8, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @SIG_SETMASK, align 4
  %46 = call i32 @pthread_sigmask(i32 %45, i32* %8, i32* null)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i64, i64* %9, align 8
  ret i64 %48
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @sigtimedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @sigismember(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
