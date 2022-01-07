; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zremCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zremCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__** }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@shared = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@OBJ_ZSET = common dso_local global i32 0, align 4
@NOTIFY_ZSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"zrem\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zremCommand(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %10, i64 1
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 0), align 4
  %16 = call %struct.TYPE_19__* @lookupKeyWriteOrReply(%struct.TYPE_20__* %13, %struct.TYPE_19__* %14, i32 %15)
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %4, align 8
  %17 = icmp eq %struct.TYPE_19__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = load i32, i32* @OBJ_ZSET, align 4
  %22 = call i64 @checkType(%struct.TYPE_20__* %19, %struct.TYPE_19__* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %98

25:                                               ; preds = %18
  store i32 2, i32* %7, align 4
  br label %26

26:                                               ; preds = %59, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %36, i64 %38
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @zsetDel(%struct.TYPE_19__* %33, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = call i64 @zsetLength(%struct.TYPE_19__* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = call i32 @dbDelete(%struct.TYPE_21__* %55, %struct.TYPE_19__* %56)
  store i32 1, i32* %6, align 4
  br label %62

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %26

62:                                               ; preds = %52, %26
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %62
  %66 = load i32, i32* @NOTIFY_ZSET, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @notifyKeyspaceEvent(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %67, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %65
  %77 = load i32, i32* @NOTIFY_GENERIC, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @notifyKeyspaceEvent(i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %78, i32 %83)
  br label %85

85:                                               ; preds = %76, %65
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = call i32 @signalModifiedKey(%struct.TYPE_21__* %88, %struct.TYPE_19__* %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 4
  br label %94

94:                                               ; preds = %85, %62
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @addReplyLongLong(%struct.TYPE_20__* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %24
  ret void
}

declare dso_local %struct.TYPE_19__* @lookupKeyWriteOrReply(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @zsetDel(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @zsetLength(%struct.TYPE_19__*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
