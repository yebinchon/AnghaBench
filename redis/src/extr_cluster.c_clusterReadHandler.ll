; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterReadHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterReadHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"RCmb\00", align 1
@CLUSTERMSG_MIN_LEN = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Bad message length or signature received from Cluster bus.\00", align 1
@CONN_STATE_CONNECTED = common dso_local global i64 0, align 8
@LL_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"I/O error reading from node link: %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"connection closed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterReadHandler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [1 x %struct.TYPE_8__], align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_9__* @connGetPrivateData(i32* %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  br label %11

11:                                               ; preds = %1, %128
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @sdslen(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %8, align 4
  %20 = sub i32 8, %19
  store i32 %20, i32* %7, align 4
  br label %59

21:                                               ; preds = %11
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @memcmp(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohl(i32 %37)
  %39 = load i32, i32* @CLUSTERMSG_MIN_LEN, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34, %28
  %42 = load i32, i32* @LL_WARNING, align 4
  %43 = call i32 (i32, i8*, ...) @serverLog(i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = call i32 @handleLinkIOError(%struct.TYPE_9__* %44)
  br label %129

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %51, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp ugt i64 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 8, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %18
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds [1 x %struct.TYPE_8__], [1 x %struct.TYPE_8__]* %3, i64 0, i64 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @connRead(i32* %60, %struct.TYPE_8__* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32*, i32** %2, align 8
  %68 = call i64 @connGetState(i32* %67)
  %69 = load i64, i64* @CONN_STATE_CONNECTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %129

72:                                               ; preds = %66, %59
  %73 = load i32, i32* %4, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32, i32* @LL_DEBUG, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %83

80:                                               ; preds = %75
  %81 = load i32*, i32** %2, align 8
  %82 = call i8* @connGetLastError(i32* %81)
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %79 ], [ %82, %80 ]
  %85 = call i32 (i32, i8*, ...) @serverLog(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = call i32 @handleLinkIOError(%struct.TYPE_9__* %86)
  br label %129

88:                                               ; preds = %72
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds [1 x %struct.TYPE_8__], [1 x %struct.TYPE_8__]* %3, i64 0, i64 0
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @sdscatlen(i64 %91, %struct.TYPE_8__* %92, i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %5, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %88
  %105 = load i32, i32* %8, align 4
  %106 = icmp uge i32 %105, 8
  br i1 %106, label %107, label %128

107:                                              ; preds = %104
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ntohl(i32 %111)
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %107
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = call i64 @clusterProcessPacket(%struct.TYPE_9__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @sdsfree(i64 %121)
  %123 = call i64 (...) @sdsempty()
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %127

126:                                              ; preds = %114
  br label %129

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %107, %104
  br label %11

129:                                              ; preds = %126, %83, %71, %41
  ret void
}

declare dso_local %struct.TYPE_9__* @connGetPrivateData(i32*) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @handleLinkIOError(%struct.TYPE_9__*) #1

declare dso_local i32 @connRead(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @connGetState(i32*) #1

declare dso_local i8* @connGetLastError(i32*) #1

declare dso_local i64 @sdscatlen(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @clusterProcessPacket(%struct.TYPE_9__*) #1

declare dso_local i32 @sdsfree(i64) #1

declare dso_local i64 @sdsempty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
