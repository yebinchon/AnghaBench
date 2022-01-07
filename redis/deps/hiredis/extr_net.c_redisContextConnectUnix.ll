; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_net.c_redisContextConnectUnix.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_net.c_redisContextConnectUnix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i8*, %struct.timeval*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.timeval = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@REDIS_BLOCK = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8
@REDIS_CONN_UNIX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@REDIS_CONNECTED = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisContextConnectUnix(%struct.TYPE_9__* %0, i8* %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_un*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @REDIS_BLOCK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  store i64 -1, i64* %10, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load i32, i32* @AF_UNIX, align 4
  %18 = call i64 @redisCreateSocket(%struct.TYPE_9__* %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @REDIS_ERR, align 4
  store i32 %21, i32* %4, align 4
  br label %143

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i64 @redisSetBlocking(%struct.TYPE_9__* %23, i32 0)
  %25 = load i64, i64* @REDIS_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @REDIS_ERR, align 4
  store i32 %28, i32* %4, align 4
  br label %143

29:                                               ; preds = %22
  %30 = load i32, i32* @REDIS_CONN_UNIX, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @strdup(i8* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  br label %45

45:                                               ; preds = %39, %29
  %46 = load %struct.timeval*, %struct.timeval** %7, align 8
  %47 = icmp ne %struct.timeval* %46, null
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = load %struct.timeval*, %struct.timeval** %50, align 8
  %52 = load %struct.timeval*, %struct.timeval** %7, align 8
  %53 = icmp ne %struct.timeval* %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load %struct.timeval*, %struct.timeval** %56, align 8
  %58 = icmp eq %struct.timeval* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = call i8* @malloc(i32 4)
  %61 = bitcast i8* %60 to %struct.timeval*
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  store %struct.timeval* %61, %struct.timeval** %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  %67 = load %struct.timeval*, %struct.timeval** %66, align 8
  %68 = load %struct.timeval*, %struct.timeval** %7, align 8
  %69 = call i32 @memcpy(%struct.timeval* %67, %struct.timeval* %68, i32 4)
  br label %70

70:                                               ; preds = %64, %48
  br label %78

71:                                               ; preds = %45
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load %struct.timeval*, %struct.timeval** %73, align 8
  %75 = call i32 @free(%struct.timeval* %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  store %struct.timeval* null, %struct.timeval** %77, align 8
  br label %78

78:                                               ; preds = %71, %70
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = call i64 @redisContextTimeoutMsec(%struct.TYPE_9__* %79, i64* %10)
  %81 = load i64, i64* @REDIS_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @REDIS_ERR, align 4
  store i32 %84, i32* %4, align 4
  br label %143

85:                                               ; preds = %78
  %86 = call i8* @malloc(i32 8)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = bitcast i8* %86 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %89, %struct.sockaddr_un** %9, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i32 8, i32* %91, align 4
  %92 = load i32, i32* @AF_UNIX, align 4
  %93 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %94 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %96 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @strncpy(i32 %97, i8* %98, i32 3)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %104 = bitcast %struct.sockaddr_un* %103 to %struct.sockaddr*
  %105 = call i32 @connect(i32 %102, %struct.sockaddr* %104, i32 8)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %125

107:                                              ; preds = %85
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @EINPROGRESS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %124

115:                                              ; preds = %111, %107
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @redisContextWaitReady(%struct.TYPE_9__* %116, i64 %117)
  %119 = load i64, i64* @REDIS_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @REDIS_ERR, align 4
  store i32 %122, i32* %4, align 4
  br label %143

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %114
  br label %125

125:                                              ; preds = %124, %85
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = call i64 @redisSetBlocking(%struct.TYPE_9__* %129, i32 1)
  %131 = load i64, i64* @REDIS_OK, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @REDIS_ERR, align 4
  store i32 %134, i32* %4, align 4
  br label %143

135:                                              ; preds = %128, %125
  %136 = load i32, i32* @REDIS_CONNECTED, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i64, i64* @REDIS_OK, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %135, %133, %121, %83, %27, %20
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @redisCreateSocket(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @redisSetBlocking(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i32 @free(%struct.timeval*) #1

declare dso_local i64 @redisContextTimeoutMsec(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @redisContextWaitReady(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
