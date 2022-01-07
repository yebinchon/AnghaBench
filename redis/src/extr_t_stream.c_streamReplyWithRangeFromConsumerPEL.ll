; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamReplyWithRangeFromConsumerPEL.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamReplyWithRangeFromConsumerPEL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c">=\00", align 1
@STREAM_RWR_RAWENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @streamReplyWithRangeFromConsumerPEL(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4, %struct.TYPE_10__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca [4 x i8], align 1
  %15 = alloca [4 x i8], align 1
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %12, align 8
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @streamEncodeID(i8* %21, i32* %22)
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @streamEncodeID(i8* %27, i32* %28)
  br label %30

30:                                               ; preds = %26, %6
  store i64 0, i64* %16, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @addReplyDeferredLen(i32* %31)
  store i8* %32, i8** %17, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @raxStart(%struct.TYPE_11__* %13, i32 %35)
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %38 = call i32 @raxSeek(%struct.TYPE_11__* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37, i32 4)
  br label %39

39:                                               ; preds = %94, %30
  %40 = call i64 @raxNext(%struct.TYPE_11__* %13)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ult i64 %46, %47
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ true, %42 ], [ %48, %45 ]
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi i1 [ false, %39 ], [ %50, %49 ]
  br i1 %52, label %53, label %97

53:                                               ; preds = %51
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @memcmp(i32 %58, i32* %59, i32 %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %97

65:                                               ; preds = %56, %53
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @streamDecodeID(i32 %67, i32* %18)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @STREAM_RWR_RAWENTRIES, align 4
  %72 = call i64 @streamReplyWithRange(i32* %69, i32* %70, i32* %18, i32* %18, i32 1, i32 0, i32* null, i32* null, i32 %71, i32* null)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @addReplyArrayLen(i32* %75, i32 2)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @streamDecodeID(i32 %78, i32* %19)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @addReplyStreamID(i32* %80, i32* %19)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @addReplyNullArray(i32* %82)
  br label %94

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %20, align 8
  %87 = call i32 (...) @mstime()
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %84, %74
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %16, align 8
  br label %39

97:                                               ; preds = %64, %51
  %98 = call i32 @raxStop(%struct.TYPE_11__* %13)
  %99 = load i32*, i32** %7, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @setDeferredArrayLen(i32* %99, i8* %100, i64 %101)
  %103 = load i64, i64* %16, align 8
  ret i64 %103
}

declare dso_local i32 @streamEncodeID(i8*, i32*) #1

declare dso_local i8* @addReplyDeferredLen(i32*) #1

declare dso_local i32 @raxStart(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @raxSeek(%struct.TYPE_11__*, i8*, i8*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_11__*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @streamDecodeID(i32, i32*) #1

declare dso_local i64 @streamReplyWithRange(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @addReplyArrayLen(i32*, i32) #1

declare dso_local i32 @addReplyStreamID(i32*, i32*) #1

declare dso_local i32 @addReplyNullArray(i32*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @raxStop(%struct.TYPE_11__*) #1

declare dso_local i32 @setDeferredArrayLen(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
