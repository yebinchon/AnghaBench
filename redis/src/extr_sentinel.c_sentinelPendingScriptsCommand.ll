; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelPendingScriptsCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelPendingScriptsCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8**, i32, i64, i64, i64 }

@sentinel = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@SENTINEL_SCRIPT_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"scheduled\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"run-time\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"run-delay\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"retry-num\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelPendingScriptsCommand(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sentinel, i32 0, i32 0), align 4
  %10 = call i32 @listLength(i32 %9)
  %11 = call i32 @addReplyArrayLen(i32* %8, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sentinel, i32 0, i32 0), align 4
  %13 = call i32 @listRewind(i32 %12, i32* %4)
  br label %14

14:                                               ; preds = %120, %1
  %15 = call %struct.TYPE_6__* @listNext(i32* %4)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %3, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %128

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %6, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @addReplyMapLen(i32* %21, i32 5)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @addReplyBulkCString(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %34, %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @addReplyArrayLen(i32* %38, i32 %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %50, %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %41
  %51 = load i32*, i32** %2, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @addReplyBulkCString(i32* %51, i8* %59)
  br label %41

61:                                               ; preds = %41
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @addReplyBulkCString(i32* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32*, i32** %2, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SENTINEL_SCRIPT_RUNNING, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %73 = call i32 @addReplyBulkCString(i32* %64, i8* %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @addReplyBulkCString(i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32*, i32** %2, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @addReplyBulkLongLong(i32* %76, i64 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SENTINEL_SCRIPT_RUNNING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %61
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @addReplyBulkCString(i32* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32*, i32** %2, align 8
  %91 = call i64 (...) @mstime()
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = call i32 @addReplyBulkLongLong(i32* %90, i64 %95)
  br label %120

97:                                               ; preds = %61
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i64 (...) @mstime()
  %107 = sub nsw i64 %105, %106
  br label %109

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %102
  %110 = phi i64 [ %107, %102 ], [ 0, %108 ]
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i64 0, i64* %7, align 8
  br label %114

114:                                              ; preds = %113, %109
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @addReplyBulkCString(i32* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32*, i32** %2, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @addReplyBulkLongLong(i32* %117, i64 %118)
  br label %120

120:                                              ; preds = %114, %87
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @addReplyBulkCString(i32* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %123 = load i32*, i32** %2, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @addReplyBulkLongLong(i32* %123, i64 %126)
  br label %14

128:                                              ; preds = %14
  ret void
}

declare dso_local i32 @addReplyArrayLen(i32*, i32) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @listNext(i32*) #1

declare dso_local i32 @addReplyMapLen(i32*, i32) #1

declare dso_local i32 @addReplyBulkCString(i32*, i8*) #1

declare dso_local i32 @addReplyBulkLongLong(i32*, i64) #1

declare dso_local i64 @mstime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
