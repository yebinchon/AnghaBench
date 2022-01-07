; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_Send.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_Send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32* }
%struct.TYPE_2__ = type { i64, i32, i32, i64 }

@noErr = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@errSSLWouldBlock = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.iovec*, i32)* @st_Send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_Send(i32* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i64, i64* @noErr, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

21:                                               ; preds = %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @vlc_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @EAGAIN, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @EINTR, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @SSLWrite(i32 %42, i32* null, i64 0, i64* %11)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @noErr, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %63

53:                                               ; preds = %39
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @errSSLWouldBlock, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = call i32 @vlc_mutex_unlock(i32* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %106

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %47
  br label %89

64:                                               ; preds = %33
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iovec*, %struct.iovec** %6, align 8
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.iovec*, %struct.iovec** %6, align 8
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @SSLWrite(i32 %67, i32* %70, i64 %73, i64* %11)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @errSSLWouldBlock, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %64
  %79 = load %struct.iovec*, %struct.iovec** %6, align 8
  %80 = getelementptr inbounds %struct.iovec, %struct.iovec* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* @errno, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = call i32 @vlc_mutex_unlock(i32* %86)
  store i32 -1, i32* %4, align 4
  br label %106

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = call i32 @vlc_mutex_unlock(i32* %91)
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @noErr, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @st_Error(i32* %97, i64 %98)
  %100 = sext i32 %99 to i64
  br label %103

101:                                              ; preds = %89
  %102 = load i64, i64* %11, align 8
  br label %103

103:                                              ; preds = %101, %96
  %104 = phi i64 [ %100, %96 ], [ %102, %101 ]
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %78, %57, %20
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @SSLWrite(i32, i32*, i64, i64*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @st_Error(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
