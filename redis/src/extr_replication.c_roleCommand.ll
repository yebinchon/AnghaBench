; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_roleCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_roleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i64, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }

@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@SLAVE_STATE_ONLINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"connecting\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roleCommand(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %89

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = call i32 @addReplyArrayLen(%struct.TYPE_16__* %16, i32 3)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = call i32 @addReplyBulkCBuffer(%struct.TYPE_16__* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %22 = call i32 @addReplyLongLong(%struct.TYPE_16__* %20, i32 %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = call i8* @addReplyDeferredLen(%struct.TYPE_16__* %23)
  store i8* %24, i8** %5, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 5), align 8
  %26 = call i32 @listRewind(i32 %25, i32* %3)
  br label %27

27:                                               ; preds = %83, %80, %15
  %28 = call %struct.TYPE_15__* @listNext(i32* %3)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %4, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %7, align 8
  %34 = load i32, i32* @NET_IP_STR_LEN, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %8, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %9, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %30
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = trunc i64 %35 to i32
  %51 = call i32 @connPeerToString(i32 %49, i8* %37, i32 %50, i32* null)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 2, i32* %11, align 4
  br label %80

54:                                               ; preds = %46
  store i8* %37, i8** %10, align 8
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SLAVE_STATE_ONLINE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 2, i32* %11, align 4
  br label %80

62:                                               ; preds = %55
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = call i32 @addReplyArrayLen(%struct.TYPE_16__* %63, i32 3)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %65, i8* %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @addReplyBulkLongLong(%struct.TYPE_16__* %68, i32 %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @addReplyBulkLongLong(%struct.TYPE_16__* %73, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %62, %61, %53
  %81 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %11, align 4
  switch i32 %82, label %128 [
    i32 0, label %83
    i32 2, label %27
  ]

83:                                               ; preds = %80
  br label %27

84:                                               ; preds = %27
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @setDeferredArrayLen(%struct.TYPE_16__* %85, i8* %86, i32 %87)
  br label %127

89:                                               ; preds = %1
  store i8* null, i8** %12, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = call i32 @addReplyArrayLen(%struct.TYPE_16__* %90, i32 5)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %93 = call i32 @addReplyBulkCBuffer(%struct.TYPE_16__* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %96 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %94, i8* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 2), align 4
  %99 = call i32 @addReplyLongLong(%struct.TYPE_16__* %97, i32 %98)
  %100 = call i64 (...) @slaveIsInHandshakeState()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %112

103:                                              ; preds = %89
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 3), align 8
  switch i32 %104, label %110 [
    i32 129, label %105
    i32 132, label %106
    i32 130, label %107
    i32 128, label %108
    i32 131, label %109
  ]

105:                                              ; preds = %103
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %111

106:                                              ; preds = %103
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %111

107:                                              ; preds = %103
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %111

108:                                              ; preds = %103
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %111

109:                                              ; preds = %103
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %111

110:                                              ; preds = %103
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  br label %111

111:                                              ; preds = %110, %109, %108, %107, %106, %105
  br label %112

112:                                              ; preds = %111, %102
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %113, i8* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 4), align 8
  %118 = icmp ne %struct.TYPE_14__* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 4), align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  br label %124

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi i32 [ %122, %119 ], [ -1, %123 ]
  %126 = call i32 @addReplyLongLong(%struct.TYPE_16__* %116, i32 %125)
  br label %127

127:                                              ; preds = %124, %84
  ret void

128:                                              ; preds = %80
  unreachable
}

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @addReplyDeferredLen(%struct.TYPE_16__*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_15__* @listNext(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @connPeerToString(i32, i8*, i32, i32*) #1

declare dso_local i32 @addReplyBulkCString(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_16__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @setDeferredArrayLen(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i64 @slaveIsInHandshakeState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
