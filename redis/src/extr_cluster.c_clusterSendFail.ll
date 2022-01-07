; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSendFail.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSendFail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CLUSTERMSG_TYPE_FAIL = common dso_local global i32 0, align 4
@CLUSTER_NAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSendFail(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.TYPE_10__], align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.TYPE_10__], [1 x %struct.TYPE_10__]* %3, i64 0, i64 0
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %7 = load i32, i32* @CLUSTERMSG_TYPE_FAIL, align 4
  %8 = call i32 @clusterBuildMessageHdr(%struct.TYPE_10__* %6, i32 %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %17 = call i32 @memcpy(i32 %14, i8* %15, i32 %16)
  %18 = getelementptr inbounds [1 x %struct.TYPE_10__], [1 x %struct.TYPE_10__]* %3, i64 0, i64 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  %23 = call i32 @clusterBroadcastMessage(%struct.TYPE_10__* %18, i32 %22)
  ret void
}

declare dso_local i32 @clusterBuildMessageHdr(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @clusterBroadcastMessage(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
