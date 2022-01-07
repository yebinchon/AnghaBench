; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_replicationFeedMonitors.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_replicationFeedMonitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%ld.%06ld \00", align 1
@CLIENT_LUA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"[%d lua] \00", align 1
@CLIENT_UNIX_SOCKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"[%d unix:%s] \00", align 1
@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"[%d %s] \00", align 1
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"\22%ld\22\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@OBJ_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replicationFeedMonitors(%struct.TYPE_15__* %0, i32* %1, i32 %2, %struct.TYPE_13__** %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.timeval, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = call i32 @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %14, align 4
  %19 = call i32 @gettimeofday(%struct.timeval* %16, i32* null)
  %20 = load i32, i32* %14, align 4
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %22, i64 %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CLIENT_LUA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  store i32 %36, i32* %14, align 4
  br label %58

37:                                               ; preds = %5
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CLIENT_UNIX_SOCKET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 4
  %49 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  br label %57

50:                                               ; preds = %37
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = call i32 @getClientPeerId(%struct.TYPE_15__* %54)
  %56 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %53, i32 %55)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %50, %44
  br label %58

58:                                               ; preds = %57, %32
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %111, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %59
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %64, i64 %66
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %75, i64 %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %81)
  store i32 %82, i32* %14, align 4
  br label %102

83:                                               ; preds = %63
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %85, i64 %87
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %93, i64 %95
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @sdslen(i64 %99)
  %101 = call i32 @sdscatrepr(i32 %84, i8* %92, i32 %100)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %83, %73
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @sdscatlen(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %59

114:                                              ; preds = %59
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @sdscatlen(i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* @OBJ_STRING, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call %struct.TYPE_13__* @createObject(i32 %117, i32 %118)
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %15, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @listRewind(i32* %120, i32* %12)
  br label %122

122:                                              ; preds = %125, %114
  %123 = call %struct.TYPE_14__* @listNext(i32* %12)
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %11, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  store %struct.TYPE_15__* %128, %struct.TYPE_15__** %17, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %131 = call i32 @addReply(%struct.TYPE_15__* %129, %struct.TYPE_13__* %130)
  br label %122

132:                                              ; preds = %122
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %134 = call i32 @decrRefCount(%struct.TYPE_13__* %133)
  ret void
}

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @getClientPeerId(%struct.TYPE_15__*) #1

declare dso_local i32 @sdscatrepr(i32, i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @createObject(i32, i32) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @listNext(i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
