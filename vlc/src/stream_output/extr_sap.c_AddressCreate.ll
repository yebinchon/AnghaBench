; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_sap.c_AddressCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_sap.c_AddressCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@IPPORT_SAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sap-interval\00", align 1
@RunThread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to spawn SAP announce thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i8*)* @AddressCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @AddressCreate(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @IPPORT_SAP, align 4
  %11 = call i32 @net_ConnectUDP(i32* %8, i8* %9, i32 %10, i32 255)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %70

15:                                               ; preds = %2
  %16 = call %struct.TYPE_6__* @malloc(i32 56)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @net_Close(i32 %20)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %70

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlcpy(i32 %25, i8* %26, i32 4)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 4, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 8
  %36 = bitcast i32* %35 to %struct.sockaddr*
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = call i32 @getsockname(i32 %33, %struct.sockaddr* %36, i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @var_CreateGetInteger(i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 6
  %46 = call i32 @vlc_mutex_init(i32* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = call i32 @vlc_cond_init(i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* @RunThread, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %59 = call i64 @vlc_clone(i32* %55, i32 %56, %struct.TYPE_6__* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %22
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @msg_Err(i32* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @net_Close(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = call i32 @free(%struct.TYPE_6__* %66)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %70

68:                                               ; preds = %22
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %3, align 8
  br label %70

70:                                               ; preds = %68, %61, %19, %14
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %71
}

declare dso_local i32 @net_ConnectUDP(i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @net_Close(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @var_CreateGetInteger(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
