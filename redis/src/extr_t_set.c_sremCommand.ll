; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_sremCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_sremCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@shared = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@OBJ_SET = common dso_local global i32 0, align 4
@NOTIFY_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"srem\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sremCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %10, i64 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 0), align 4
  %14 = call i32* @lookupKeyWriteOrReply(%struct.TYPE_14__* %7, %struct.TYPE_16__* %12, i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @OBJ_SET, align 4
  %20 = call i64 @checkType(%struct.TYPE_14__* %17, i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  br label %112

23:                                               ; preds = %16
  store i32 2, i32* %4, align 4
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %34, i64 %36
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @setTypeRemove(i32* %31, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @setTypeSize(i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %55, i64 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = call i32 @dbDelete(%struct.TYPE_15__* %52, %struct.TYPE_16__* %57)
  store i32 1, i32* %6, align 4
  br label %64

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %30
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %24

64:                                               ; preds = %49, %24
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %108

67:                                               ; preds = %64
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %73, i64 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = call i32 @signalModifiedKey(%struct.TYPE_15__* %70, %struct.TYPE_16__* %75)
  %77 = load i32, i32* @NOTIFY_SET, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %80, i64 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @notifyKeyspaceEvent(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %82, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %67
  %92 = load i32, i32* @NOTIFY_GENERIC, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %95, i64 1
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @notifyKeyspaceEvent(i32 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %97, i32 %102)
  br label %104

104:                                              ; preds = %91, %67
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 4
  br label %108

108:                                              ; preds = %104, %64
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @addReplyLongLong(%struct.TYPE_14__* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %22
  ret void
}

declare dso_local i32* @lookupKeyWriteOrReply(%struct.TYPE_14__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i64 @setTypeRemove(i32*, i32) #1

declare dso_local i64 @setTypeSize(i32*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
