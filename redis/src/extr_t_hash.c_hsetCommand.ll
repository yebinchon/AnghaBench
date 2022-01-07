; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hsetCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hsetCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8* }

@.str = private unnamed_addr constant [36 x i8] c"wrong number of arguments for HMSET\00", align 1
@HASH_SET_COPY = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@NOTIFY_HASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hset\00", align 1
@server = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsetCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = srem i32 %9, 2
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = call i32 @addReplyError(%struct.TYPE_14__* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %123

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %19, i64 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = call i32* @hashTypeLookupWriteOrCreate(%struct.TYPE_14__* %16, %struct.TYPE_16__* %21)
  store i32* %22, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %123

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @hashTypeTryConversion(i32* %26, %struct.TYPE_16__** %29, i32 2, i32 %33)
  store i32 2, i32* %3, align 4
  br label %35

35:                                               ; preds = %69, %25
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %45, i64 %47
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %54, i64 %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @HASH_SET_COPY, align 4
  %63 = call i32 @hashTypeSet(i32* %42, i8* %51, i8* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %41
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %3, align 4
  br label %35

72:                                               ; preds = %35
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %75, i64 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 115
  br i1 %84, label %91, label %85

85:                                               ; preds = %72
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 83
  br i1 %90, label %91, label %95

91:                                               ; preds = %85, %72
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @addReplyLongLong(%struct.TYPE_14__* %92, i32 %93)
  br label %99

95:                                               ; preds = %85
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 0), align 4
  %98 = call i32 @addReply(%struct.TYPE_14__* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %105, i64 1
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = call i32 @signalModifiedKey(%struct.TYPE_15__* %102, %struct.TYPE_16__* %107)
  %109 = load i32, i32* @NOTIFY_HASH, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %112, i64 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @notifyKeyspaceEvent(i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %114, i32 %119)
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 4
  br label %123

123:                                              ; preds = %99, %24, %12
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_14__*, i8*) #1

declare dso_local i32* @hashTypeLookupWriteOrCreate(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @hashTypeTryConversion(i32*, %struct.TYPE_16__**, i32, i32) #1

declare dso_local i32 @hashTypeSet(i32*, i8*, i8*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
