; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterStartHandshake.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterStartHandshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@CLUSTER_NODE_MEET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterStartHandshake(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr_storage, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @NET_IP_STR_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = call i64 @inet_pton(i64 %17, i8* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i64, i64* @AF_INET, align 8
  %25 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  br label %39

26:                                               ; preds = %3
  %27 = load i64, i64* @AF_INET6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr_in6*
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 0
  %31 = call i64 @inet_pton(i64 %27, i8* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i64, i64* @AF_INET6, align 8
  %35 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 65535
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 65535
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %45, %42, %39
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

53:                                               ; preds = %48
  %54 = load i32, i32* @NET_IP_STR_LEN, align 4
  %55 = call i32 @memset(i8* %16, i32 0, i32 %54)
  %56 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_INET, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i64, i64* @AF_INET, align 8
  %62 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr_in*
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %62, i32 0, i32 0
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* @NET_IP_STR_LEN, align 4
  %66 = call i32 @inet_ntop(i64 %61, i8* %64, i8* %16, i32 %65)
  br label %74

67:                                               ; preds = %53
  %68 = load i64, i64* @AF_INET6, align 8
  %69 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr_in6*
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i32 0, i32 0
  %71 = bitcast i32* %70 to i8*
  %72 = load i32, i32* @NET_IP_STR_LEN, align 4
  %73 = call i32 @inet_ntop(i64 %68, i8* %71, i8* %16, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @clusterHandshakeInProgress(i8* %16, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @EAGAIN, align 4
  store i32 %80, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

81:                                               ; preds = %74
  %82 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %83 = load i32, i32* @CLUSTER_NODE_MEET, align 4
  %84 = or i32 %82, %83
  %85 = call %struct.TYPE_4__* @createClusterNode(i32* null, i32 %84)
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %8, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32 %88, i8* %16, i32 4)
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = call i32 @clusterAddNode(%struct.TYPE_4__* %96)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %81, %79, %51, %36
  %99 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @inet_pton(i64, i8*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @inet_ntop(i64, i8*, i8*, i32) #2

declare dso_local i64 @clusterHandshakeInProgress(i8*, i32, i32) #2

declare dso_local %struct.TYPE_4__* @createClusterNode(i32*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @clusterAddNode(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
