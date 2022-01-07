; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_Recv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_Recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@errSSLWouldBlock = common dso_local global i64 0, align 8
@errSSLClosedNoNotify = common dso_local global i64 0, align 8
@errSSLClosedGraceful = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Got close notification with code %i\00", align 1
@noErr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.iovec*, i32)* @st_Recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @st_Recv(i32* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %77

19:                                               ; preds = %3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @vlc_mutex_lock(i32* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iovec*, %struct.iovec** %6, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iovec*, %struct.iovec** %6, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @SSLRead(i32 %25, i32 %28, i32 %31, i64* %9)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @errSSLWouldBlock, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %19
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @vlc_mutex_unlock(i32* %41)
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %4, align 8
  br label %77

44:                                               ; preds = %36, %19
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @errSSLClosedNoNotify, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @errSSLClosedGraceful, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48, %44
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @msg_Dbg(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @vlc_mutex_unlock(i32* %60)
  store i64 0, i64* %4, align 8
  br label %77

62:                                               ; preds = %48
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @vlc_mutex_unlock(i32* %64)
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @noErr, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @st_Error(i32* %70, i64 %71)
  br label %75

73:                                               ; preds = %62
  %74 = load i64, i64* %9, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i64 [ %72, %69 ], [ %74, %73 ]
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %52, %39, %18
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @SSLRead(i32, i32, i32, i64*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i32) #1

declare dso_local i64 @st_Error(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
