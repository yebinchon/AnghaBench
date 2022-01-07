; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_xsetidCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_xsetidCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }

@shared = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@OBJ_STREAM = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"The ID specified in XSETID is smaller than the target stream top item\00", align 1
@server = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@NOTIFY_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"xsetid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsetidCommand(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @shared, i32 0, i32 1), align 4
  %16 = call %struct.TYPE_18__* @lookupKeyWriteOrReply(%struct.TYPE_19__* %9, i32 %14, i32 %15)
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %3, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = icmp eq %struct.TYPE_18__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = load i32, i32* @OBJ_STREAM, align 4
  %23 = call i64 @checkType(%struct.TYPE_19__* %20, %struct.TYPE_18__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %1
  br label %77

26:                                               ; preds = %19
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %4, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @streamParseStrictIDOrReply(%struct.TYPE_19__* %30, i32 %35, i32* %5, i32 0)
  %37 = load i64, i64* @C_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %77

40:                                               ; preds = %26
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = call i32 @streamIteratorStart(i32* %7, %struct.TYPE_17__* %46, i32* null, i32* null, i32 1)
  %48 = call i32 @streamIteratorGetID(i32* %7, i32* %6, i32* %8)
  %49 = call i32 @streamIteratorStop(i32* %7)
  %50 = call i64 @streamCompareID(i32* %5, i32* %6)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %54 = call i32 @addReplyError(%struct.TYPE_19__* %53, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %77

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @shared, i32 0, i32 0), align 4
  %62 = call i32 @addReply(%struct.TYPE_19__* %60, i32 %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 4
  %65 = load i32, i32* @NOTIFY_STREAM, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @notifyKeyspaceEvent(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %56, %52, %39, %25
  ret void
}

declare dso_local %struct.TYPE_18__* @lookupKeyWriteOrReply(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @streamParseStrictIDOrReply(%struct.TYPE_19__*, i32, i32*, i32) #1

declare dso_local i32 @streamIteratorStart(i32*, %struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32 @streamIteratorGetID(i32*, i32*, i32*) #1

declare dso_local i32 @streamIteratorStop(i32*) #1

declare dso_local i64 @streamCompareID(i32*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
