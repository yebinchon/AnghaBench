; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_amt_rcv_relay_adv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_amt_rcv_relay_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.pollfd = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.anon = type { i64, i64, i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@RELAY_ADV_MSG_LEN = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"AMT relay advertisement receive time-out\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Received message length less than zero\00", align 1
@MSG_TYPE_LEN = common dso_local global i32 0, align 4
@AMT_RELAY_ADV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"Received message not an AMT relay advertisement, ignoring. \00", align 1
@NONCE_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Discovery nonces differ! currNonce:%x rcvd%x\00", align 1
@AMT_PORT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Error connecting AMT UDP socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @amt_rcv_relay_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amt_rcv_relay_adv(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca [1 x %struct.pollfd], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.anon, align 8
  %13 = alloca %struct.sockaddr_in, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %15 = load i32, i32* @RELAY_ADV_MSG_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %6, align 8
  %22 = load i32, i32* @RELAY_ADV_MSG_LEN, align 4
  %23 = call i32 @memset(i8* %18, i32 0, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @POLLIN, align 4
  %30 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vlc_poll_i11e(%struct.pollfd* %32, i32 1, i32 %35)
  switch i32 %36, label %41 [
    i32 0, label %37
    i32 -1, label %40
  ]

37:                                               ; preds = %1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %1, %37
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %112

41:                                               ; preds = %1
  store i32 4, i32* %10, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RELAY_ADV_MSG_LEN, align 4
  %46 = call i64 @recvfrom(i32 %44, i8* %18, i32 %45, i32 0, %struct.sockaddr* %9, i32* %10)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %112

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %54 = getelementptr inbounds i8, i8* %18, i64 0
  %55 = load i32, i32* @MSG_TYPE_LEN, align 4
  %56 = call i32 @memcpy(i64* %53, i8* %54, i32 %55)
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AMT_RELAY_ADV, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %112

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %66 = load i64, i64* @NONCE_LEN, align 8
  %67 = getelementptr inbounds i8, i8* %18, i64 %66
  %68 = load i64, i64* @NONCE_LEN, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(i64* %65, i8* %67, i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %64
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @ntohl(i64 %83)
  %85 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %81, i64 %84)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %112

86:                                               ; preds = %64
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %88 = getelementptr inbounds i8, i8* %18, i64 8
  %89 = call i32 @memcpy(i64* %87, i8* %88, i32 4)
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %91 = load i32, i32* @AMT_PORT, align 4
  %92 = call i32 @htons(i32 %91)
  store i32 %92, i32* %90, align 8
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %98 = load i32, i32* @AF_INET, align 4
  store i32 %98, i32* %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %103 = call i32 @connect(i32 %101, %struct.sockaddr* %102, i32 24)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %86
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = load i32, i32* @errno, align 4
  %109 = call i32 @vlc_strerror(i32 %108)
  %110 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %112

111:                                              ; preds = %86
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %112

112:                                              ; preds = %111, %106, %77, %61, %49, %40
  %113 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, ...) #2

declare dso_local i64 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @memcpy(i64*, i8*, i32) #2

declare dso_local i64 @ntohl(i64) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @vlc_strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
