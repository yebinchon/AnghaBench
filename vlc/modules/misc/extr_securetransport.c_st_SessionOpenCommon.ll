; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_SessionOpenCommon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_SessionOpenCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32*, %struct.TYPE_8__, i32*, i32, %struct.TYPE_8__*, i64, i32* }

@st_ops = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"error calling SSLNewContext\00", align 1
@st_SocketReadFunc = common dso_local global i32 0, align 4
@st_SocketWriteFunc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot set io functions\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot set connection\00", align 1
@kSSLClientSide = common dso_local global i32 0, align 4
@kSSLServerSide = common dso_local global i32 0, align 4
@kSSLStreamType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32*, %struct.TYPE_8__*, i32)* @st_SessionOpenCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @st_SessionOpenCommon(i32* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = call %struct.TYPE_9__* @malloc(i32 72)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %85

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 9
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 7
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  %41 = call i32 @vlc_mutex_init(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %11, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32* @st_ops, i32** %48, align 8
  store i32* null, i32** %12, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @SSLNewContext(i32 %49, i32** %12)
  %51 = load i64, i64* @noErr, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %21
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @msg_Err(i32* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %82

56:                                               ; preds = %21
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @st_SocketReadFunc, align 4
  %62 = load i32, i32* @st_SocketWriteFunc, align 4
  %63 = call i64 @SSLSetIOFuncs(i32* %60, i32 %61, i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @noErr, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @msg_Err(i32* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %82

70:                                               ; preds = %56
  %71 = load i32*, i32** %12, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = call i64 @SSLSetConnection(i32* %71, %struct.TYPE_8__* %72)
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @noErr, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @msg_Err(i32* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %82

80:                                               ; preds = %70
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %5, align 8
  br label %85

82:                                               ; preds = %77, %67, %53
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = call i32 @st_SessionClose(%struct.TYPE_8__* %83)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %85

85:                                               ; preds = %82, %80, %20
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %86
}

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i64 @SSLNewContext(i32, i32**) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i64 @SSLSetIOFuncs(i32*, i32, i32) #1

declare dso_local i64 @SSLSetConnection(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @st_SessionClose(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
