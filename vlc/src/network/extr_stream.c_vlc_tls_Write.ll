; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_stream.c_vlc_tls_Write.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_stream.c_vlc_tls_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.iovec*, i32)* }
%struct.iovec = type { i8*, i64 }
%struct.pollfd = type { i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_tls_Write(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pollfd, align 4
  %9 = alloca %struct.iovec, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @POLLOUT, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 0
  %16 = call i32 @vlc_tls_GetPollFD(%struct.TYPE_7__* %14, i32* %15)
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %88, %3
  %23 = call i64 (...) @vlc_killed()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* @EINTR, align 8
  store i64 %26, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %90

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_7__*, %struct.iovec*, i32)*, i32 (%struct.TYPE_7__*, %struct.iovec*, i32)** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = call i32 %32(%struct.TYPE_7__* %33, %struct.iovec* %9, i32 1)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %37, %27
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %53
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %90

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = call i64 (...) @vlc_killed()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %90

70:                                               ; preds = %66
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @EINTR, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @EAGAIN, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* %10, align 8
  %83 = trunc i64 %82 to i32
  br label %85

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %83, %81 ], [ -1, %84 ]
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %74, %70
  br label %88

88:                                               ; preds = %87, %63
  %89 = call i32 @vlc_poll_i11e(%struct.pollfd* %8, i32 1, i32 -1)
  br label %22

90:                                               ; preds = %85, %69, %60, %25
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @vlc_tls_GetPollFD(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @vlc_killed(...) #1

declare dso_local i32 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
