; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_stream.c_vlc_tls_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_stream.c_vlc_tls_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.iovec*, i32)* }
%struct.iovec = type { i8*, i64 }
%struct.pollfd = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_tls_Read(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pollfd, align 4
  %11 = alloca %struct.iovec, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @POLLIN, align 4
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  %18 = call i32 @vlc_tls_GetPollFD(%struct.TYPE_7__* %16, i32* %17)
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %95, %4
  %25 = call i64 (...) @vlc_killed()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* @EINTR, align 8
  store i64 %28, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %97

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_7__*, %struct.iovec*, i32)*, i32 (%struct.TYPE_7__*, %struct.iovec*, i32)** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = call i32 %34(%struct.TYPE_7__* %35, %struct.iovec* %11, i32 1)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %97

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %44, %29
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %60
  %68 = load i64, i64* %12, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %97

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = call i64 (...) @vlc_killed()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 -1, i32* %5, align 4
  br label %97

77:                                               ; preds = %73
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @EINTR, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @EAGAIN, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, i64* %12, align 8
  %90 = trunc i64 %89 to i32
  br label %92

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32 [ %90, %88 ], [ -1, %91 ]
  store i32 %93, i32* %5, align 4
  br label %97

94:                                               ; preds = %81, %77
  br label %95

95:                                               ; preds = %94, %70
  %96 = call i32 @vlc_poll_i11e(%struct.pollfd* %10, i32 1, i32 -1)
  br label %24

97:                                               ; preds = %92, %76, %67, %42, %27
  %98 = load i32, i32* %5, align 4
  ret i32 %98
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
