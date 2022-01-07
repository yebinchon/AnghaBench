; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_selectCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_selectCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"invalid DB index\00", align 1
@C_OK = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"SELECT is not allowed in cluster mode\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"DB index is out of range\00", align 1
@shared = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selectCommand(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @getLongFromObjectOrReply(%struct.TYPE_9__* %4, i32 %9, i64* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @C_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %36

14:                                               ; preds = %1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32 @addReplyError(%struct.TYPE_9__* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %36

23:                                               ; preds = %17, %14
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @selectDb(%struct.TYPE_9__* %24, i64 %25)
  %27 = load i64, i64* @C_ERR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = call i32 @addReplyError(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 4
  %35 = call i32 @addReply(%struct.TYPE_9__* %33, i32 %34)
  br label %36

36:                                               ; preds = %13, %20, %32, %29
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_9__*, i32, i64*, i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @selectDb(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @addReply(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
