; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_lremCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_lremCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32** }
%struct.TYPE_12__ = type { i32 }

@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@OBJ_LIST = common dso_local global i32 0, align 4
@LIST_HEAD = common dso_local global i32 0, align 4
@LIST_TAIL = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@NOTIFY_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lrem\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lremCommand(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 3
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  store i64 0, i64* %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @getLongFromObjectOrReply(%struct.TYPE_11__* %14, i32* %19, i64* %5, i32* null)
  %21 = load i64, i64* @C_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %137

24:                                               ; preds = %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 0), align 4
  %32 = call i32* @lookupKeyWriteOrReply(%struct.TYPE_11__* %25, i32* %30, i32 %31)
  store i32* %32, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @OBJ_LIST, align 4
  %39 = call i64 @checkType(%struct.TYPE_11__* %36, i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %24
  br label %137

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i64, i64* %5, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %5, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @LIST_HEAD, align 4
  %50 = call i32* @listTypeInitIterator(i32* %48, i32 -1, i32 %49)
  store i32* %50, i32** %7, align 8
  br label %55

51:                                               ; preds = %42
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @LIST_TAIL, align 4
  %54 = call i32* @listTypeInitIterator(i32* %52, i32 0, i32 %53)
  store i32* %54, i32** %7, align 8
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %79, %55
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @listTypeNext(i32* %57, i32* %8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i32*, i32** %4, align 8
  %62 = call i64 @listTypeEqual(i32* %8, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @listTypeDelete(i32* %65, i32* %8)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 4
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %80

78:                                               ; preds = %73, %64
  br label %79

79:                                               ; preds = %78, %60
  br label %56

80:                                               ; preds = %77, %56
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @listTypeReleaseIterator(i32* %81)
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @signalModifiedKey(%struct.TYPE_12__* %88, i32* %93)
  %95 = load i32, i32* @NOTIFY_LIST, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @notifyKeyspaceEvent(i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %100, i32 %105)
  br label %107

107:                                              ; preds = %85, %80
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @listTypeLength(i32* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @dbDelete(%struct.TYPE_12__* %114, i32* %119)
  %121 = load i32, i32* @NOTIFY_GENERIC, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @notifyKeyspaceEvent(i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %126, i32 %131)
  br label %133

133:                                              ; preds = %111, %107
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @addReplyLongLong(%struct.TYPE_11__* %134, i64 %135)
  br label %137

137:                                              ; preds = %133, %41, %23
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_11__*, i32*, i64*, i32*) #1

declare dso_local i32* @lookupKeyWriteOrReply(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32* @listTypeInitIterator(i32*, i32, i32) #1

declare dso_local i64 @listTypeNext(i32*, i32*) #1

declare dso_local i64 @listTypeEqual(i32*, i32*) #1

declare dso_local i32 @listTypeDelete(i32*, i32*) #1

declare dso_local i32 @listTypeReleaseIterator(i32*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

declare dso_local i64 @listTypeLength(i32*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
