; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_https_send.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_https_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_7__*, %struct.iovec*, i32)* }
%struct.iovec = type { i8*, i64 }
%struct.pollfd = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i64)* @vlc_https_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlc_https_send(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iovec, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.pollfd, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i64 %15, i64* %16, align 8
  br label %17

17:                                               ; preds = %67, %34, %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = call i32 (...) @vlc_savecancel()
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64 (%struct.TYPE_7__*, %struct.iovec*, i32)*, i64 (%struct.TYPE_7__*, %struct.iovec*, i32)** %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i64 %27(%struct.TYPE_7__* %28, %struct.iovec* %8, i32 1)
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @vlc_restorecancel(i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %42, %40
  store i64 %43, i64* %41, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %9, align 8
  br label %17

47:                                               ; preds = %21
  %48 = load i64, i64* %11, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %75

51:                                               ; preds = %47
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EINTR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EAGAIN, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  br label %65

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i64 [ %63, %62 ], [ -1, %64 ]
  store i64 %66, i64* %4, align 8
  br label %77

67:                                               ; preds = %55, %51
  %68 = load i32, i32* @POLLOUT, align 4
  %69 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 0
  %72 = call i32 @vlc_tls_GetPollFD(%struct.TYPE_7__* %70, i32* %71)
  %73 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = call i32 @poll(%struct.pollfd* %12, i32 1, i32 -1)
  br label %17

75:                                               ; preds = %50, %17
  %76 = load i64, i64* %9, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %65
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @vlc_tls_GetPollFD(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
