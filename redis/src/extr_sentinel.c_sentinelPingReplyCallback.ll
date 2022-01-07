; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelPingReplyCallback.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelPingReplyCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i64, i8*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@REDIS_REPLY_STATUS = common dso_local global i64 0, align 8
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LOADING\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"MASTERDOWN\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"BUSY\00", align 1
@SRI_S_DOWN = common dso_local global i32 0, align 4
@SRI_SCRIPT_KILL_SENT = common dso_local global i32 0, align 4
@sentinelDiscardReplyCallback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%s KILL\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@C_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelPingReplyCallback(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  br label %115

21:                                               ; preds = %17
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %9, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %111

39:                                               ; preds = %33, %21
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @strncmp(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @strncmp(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @strncmp(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51, %45, %39
  %58 = call i8* (...) @mstime()
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %110

63:                                               ; preds = %51
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @strncmp(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SRI_S_DOWN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %69
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SRI_SCRIPT_KILL_SENT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @sentinelDiscardReplyCallback, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = call i32 @sentinelInstanceMapCommand(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i64 @redisAsyncCommand(i32 %88, i32 %89, %struct.TYPE_10__* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i64, i64* @C_OK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %83
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96, %83
  %104 = load i32, i32* @SRI_SCRIPT_KILL_SENT, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %76, %69, %63
  br label %110

110:                                              ; preds = %109, %57
  br label %111

111:                                              ; preds = %110, %33
  %112 = call i8* (...) @mstime()
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %111, %20
  ret void
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i8* @mstime(...) #1

declare dso_local i64 @redisAsyncCommand(i32, i32, %struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @sentinelInstanceMapCommand(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
