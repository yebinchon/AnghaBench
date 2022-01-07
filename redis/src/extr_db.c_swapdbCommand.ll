; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_swapdbCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_swapdbCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"SWAPDB is not allowed in cluster mode\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid first DB index\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid second DB index\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"DB index is out of range\00", align 1
@shared = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swapdbCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 1), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @addReplyError(%struct.TYPE_8__* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @getLongFromObjectOrReply(%struct.TYPE_8__* %11, i32 %16, i64* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @C_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %47

21:                                               ; preds = %10
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @getLongFromObjectOrReply(%struct.TYPE_8__* %22, i32 %27, i64* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i64, i64* @C_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %47

32:                                               ; preds = %21
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @dbSwapDatabases(i64 %33, i64 %34)
  %36 = load i64, i64* @C_ERR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = call i32 @addReplyError(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shared, i32 0, i32 0), align 4
  %46 = call i32 @addReply(%struct.TYPE_8__* %44, i32 %45)
  br label %47

47:                                               ; preds = %7, %20, %31, %38, %41
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_8__*, i32, i64*, i8*) #1

declare dso_local i64 @dbSwapDatabases(i64, i64) #1

declare dso_local i32 @addReply(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
