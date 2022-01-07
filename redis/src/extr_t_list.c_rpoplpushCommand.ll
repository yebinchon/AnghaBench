; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_rpoplpushCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_rpoplpushCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32**, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@shared = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@OBJ_LIST = common dso_local global i32 0, align 4
@LIST_TAIL = common dso_local global i32 0, align 4
@NOTIFY_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rpop\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@brpoplpushCommand = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpoplpushCommand(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = load i32**, i32*** %9, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 1), align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @lookupKeyWriteOrReply(%struct.TYPE_15__* %7, i32* %12, i32 %18)
  store i32* %19, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @OBJ_LIST, align 4
  %25 = call i64 @checkType(%struct.TYPE_15__* %22, i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %1
  br label %133

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @listTypeLength(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = call i32 @addReplyNull(%struct.TYPE_15__* %33)
  br label %133

35:                                               ; preds = %28
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32* @lookupKeyWrite(%struct.TYPE_16__* %38, i32* %43)
  store i32* %44, i32** %5, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %35
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @OBJ_LIST, align 4
  %56 = call i64 @checkType(%struct.TYPE_15__* %53, i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %133

59:                                               ; preds = %52, %35
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @LIST_TAIL, align 4
  %62 = call i32* @listTypePop(i32* %60, i32 %61)
  store i32* %62, i32** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @incrRefCount(i32* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @rpoplpushHandlePush(%struct.TYPE_15__* %65, i32* %70, i32* %71, i32* %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @decrRefCount(i32* %74)
  %76 = load i32, i32* @NOTIFY_LIST, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @notifyKeyspaceEvent(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %77, i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i64 @listTypeLength(i32* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %59
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @dbDelete(%struct.TYPE_16__* %90, i32* %91)
  %93 = load i32, i32* @NOTIFY_GENERIC, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @notifyKeyspaceEvent(i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %94, i32 %99)
  br label %101

101:                                              ; preds = %87, %59
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @signalModifiedKey(%struct.TYPE_16__* %104, i32* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @decrRefCount(i32* %107)
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @brpoplpushCommand, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %101
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 0), align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @rewriteClientCommandVector(%struct.TYPE_15__* %119, i32 3, i32 %120, i32* %125, i32* %130)
  br label %132

132:                                              ; preds = %118, %101
  br label %133

133:                                              ; preds = %27, %58, %132, %32
  ret void
}

declare dso_local i32* @lookupKeyWriteOrReply(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i64 @listTypeLength(i32*) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_15__*) #1

declare dso_local i32* @lookupKeyWrite(%struct.TYPE_16__*, i32*) #1

declare dso_local i32* @listTypePop(i32*, i32) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32 @rpoplpushHandlePush(%struct.TYPE_15__*, i32*, i32*, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

declare dso_local i32 @dbDelete(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @rewriteClientCommandVector(%struct.TYPE_15__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
