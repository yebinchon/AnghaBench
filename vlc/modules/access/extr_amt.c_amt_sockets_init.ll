; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_amt_sockets_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_amt_sockets_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.sockaddr_in = type { i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@AMT_PORT = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to create UDP socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Couldn't make socket reusable\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to bind UDP socket error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to create query socket\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to bind query socket\00", align 1
@LOCAL_LOOPBACK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Could not convert loopback address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @amt_sockets_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amt_sockets_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.sockaddr_in, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 24)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** @AF_INET, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* @AMT_PORT, align 4
  %19 = call i8* @htons(i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** @AF_INET, align 8
  %24 = load i32, i32* @SOCK_DGRAM, align 4
  %25 = load i32, i32* @IPPROTO_UDP, align 4
  %26 = call i8* @vlc_socket(i8* %23, i32 %24, i32 %25, i32 1)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %117

37:                                               ; preds = %1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SOL_SOCKET, align 4
  %42 = load i32, i32* @SO_REUSEADDR, align 4
  %43 = call i32 @setsockopt(i32 %40, i32 %41, i32 %42, i32* %6, i32 4)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %117

49:                                               ; preds = %37
  %50 = load i8*, i8** @AF_INET, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = call i8* @htons(i32 0)
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @INADDR_ANY, align 4
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %61 = call i64 @bind(i32 %59, %struct.sockaddr* %60, i32 24)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @vlc_strerror(i32 %65)
  %67 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %117

68:                                               ; preds = %49
  %69 = load i8*, i8** @AF_INET, align 8
  %70 = load i32, i32* @SOCK_DGRAM, align 4
  %71 = load i32, i32* @IPPROTO_UDP, align 4
  %72 = call i8* @vlc_socket(i8* %69, i32 %70, i32 %71, i32 1)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %117

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %85 = load i8*, i8** @AF_INET, align 8
  store i8* %85, i8** %84, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %87 = call i8* @htons(i32 0)
  store i8* %87, i8** %86, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* @INADDR_ANY, align 4
  store i32 %90, i32* %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %95 = call i64 @bind(i32 %93, %struct.sockaddr* %94, i32 4)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %117

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %102 = load i8*, i8** @AF_INET, align 8
  store i8* %102, i8** %101, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %104 = call i8* @htons(i32 9124)
  store i8* %104, i8** %103, align 8
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %106 = bitcast %struct.TYPE_10__* %105 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %106, i8 0, i64 4, i1 false)
  %107 = load i8*, i8** @AF_INET, align 8
  %108 = load i32, i32* @LOCAL_LOOPBACK, align 4
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %110 = call i32 @inet_pton(i8* %107, i32 %108, %struct.TYPE_10__* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %117

116:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %142

117:                                              ; preds = %113, %97, %80, %63, %46, %34
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @net_Close(i32 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 -1, i32* %128, align 8
  br label %129

129:                                              ; preds = %122, %117
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, -1
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @net_Close(i32 %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i32 -1, i32* %140, align 4
  br label %141

141:                                              ; preds = %134, %129
  store i32 -1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %116
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @vlc_socket(i8*, i32, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @vlc_strerror(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @inet_pton(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @net_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
