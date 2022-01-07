; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_linsertCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_linsertCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_17__** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"after\00", align 1
@LIST_TAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@LIST_HEAD = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@OBJ_LIST = common dso_local global i32 0, align 4
@NOTIFY_LIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"linsert\00", align 1
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linsertCommand(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %10, i64 2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strcasecmp(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @LIST_TAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %22, i64 2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcasecmp(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @LIST_HEAD, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 1), align 4
  %34 = call i32 @addReply(%struct.TYPE_15__* %32, i32 %33)
  br label %115

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %40, i64 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %44 = call i32* @lookupKeyWriteOrReply(%struct.TYPE_15__* %37, %struct.TYPE_17__* %42, i32 %43)
  store i32* %44, i32** %4, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @OBJ_LIST, align 4
  %50 = call i64 @checkType(%struct.TYPE_15__* %47, i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %36
  br label %115

53:                                               ; preds = %46
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @LIST_TAIL, align 4
  %56 = call i32* @listTypeInitIterator(i32* %54, i32 0, i32 %55)
  store i32* %56, i32** %5, align 8
  br label %57

57:                                               ; preds = %77, %53
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @listTypeNext(i32* %58, i32* %6)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %64, i64 3
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = call i64 @listTypeEqual(i32* %6, %struct.TYPE_17__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %72, i64 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @listTypeInsert(i32* %6, %struct.TYPE_17__* %74, i32 %75)
  store i32 1, i32* %7, align 4
  br label %78

77:                                               ; preds = %61
  br label %57

78:                                               ; preds = %69, %57
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @listTypeReleaseIterator(i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %78
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %89, i64 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = call i32 @signalModifiedKey(%struct.TYPE_16__* %86, %struct.TYPE_17__* %91)
  %93 = load i32, i32* @NOTIFY_LIST, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %96, i64 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @notifyKeyspaceEvent(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* %98, i32 %103)
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  br label %110

107:                                              ; preds = %78
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %109 = call i32 @addReplyLongLong(%struct.TYPE_15__* %108, i32 -1)
  br label %115

110:                                              ; preds = %83
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @listTypeLength(i32* %112)
  %114 = call i32 @addReplyLongLong(%struct.TYPE_15__* %111, i32 %113)
  br label %115

115:                                              ; preds = %110, %107, %52, %31
  ret void
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @lookupKeyWriteOrReply(%struct.TYPE_15__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32* @listTypeInitIterator(i32*, i32, i32) #1

declare dso_local i64 @listTypeNext(i32*, i32*) #1

declare dso_local i64 @listTypeEqual(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @listTypeInsert(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @listTypeReleaseIterator(i32*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @listTypeLength(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
