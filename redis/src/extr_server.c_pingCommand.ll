; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_pingCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_pingCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"wrong number of arguments for '%s' command\00", align 1
@CLIENT_PUBSUB = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"pong\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pingCommand(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @addReplyErrorFormat(%struct.TYPE_10__* %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CLIENT_PUBSUB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %15
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 1), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @addReply(%struct.TYPE_10__* %28, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = call i32 @addReplyBulkCBuffer(%struct.TYPE_10__* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = call i32 @addReplyBulkCBuffer(%struct.TYPE_10__* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %50

42:                                               ; preds = %27
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @addReplyBulk(%struct.TYPE_10__* %43, i32 %48)
  br label %50

50:                                               ; preds = %42, %39
  br label %69

51:                                               ; preds = %22, %15
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 0), align 8
  %59 = call i32 @addReply(%struct.TYPE_10__* %57, i32 %58)
  br label %68

60:                                               ; preds = %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @addReplyBulk(%struct.TYPE_10__* %61, i32 %66)
  br label %68

68:                                               ; preds = %60, %56
  br label %69

69:                                               ; preds = %7, %68, %50
  ret void
}

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
