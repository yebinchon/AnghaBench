; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_pushxGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_pushxGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32 }

@shared = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@OBJ_LIST = common dso_local global i32 0, align 4
@LIST_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lpush\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rpush\00", align 1
@NOTIFY_LIST = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pushxGenericCommand(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 0), align 4
  %16 = call i32* @lookupKeyWriteOrReply(%struct.TYPE_9__* %9, i32 %14, i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @OBJ_LIST, align 4
  %22 = call i64 @checkType(%struct.TYPE_9__* %19, i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  br label %87

25:                                               ; preds = %18
  store i32 2, i32* %5, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @listTypePush(i32* %33, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @listTypeLength(i32* %50)
  %52 = call i32 @addReplyLongLong(%struct.TYPE_9__* %49, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @LIST_HEAD, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %60, i8** %8, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @signalModifiedKey(%struct.TYPE_10__* %63, i32 %68)
  %70 = load i32, i32* @NOTIFY_LIST, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @notifyKeyspaceEvent(i32 %70, i8* %71, i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %55, %48
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 4
  br label %87

87:                                               ; preds = %83, %24
  ret void
}

declare dso_local i32* @lookupKeyWriteOrReply(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @listTypePush(i32*, i32, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @listTypeLength(i32*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
