; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_aofRewriteBufferAppend.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_aofRewriteBufferAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@AOF_RW_BUF_BLOCK_SIZE = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Background AOF buffer size: %lu MB\00", align 1
@AE_WRITABLE = common dso_local global i32 0, align 4
@aofChildWriteDiffData = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aofRewriteBufferAppend(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 2), align 4
  %11 = call %struct.TYPE_7__* @listLast(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.TYPE_8__* [ %17, %14 ], [ null, %18 ]
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  br label %21

21:                                               ; preds = %106, %19
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %107

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %39

37:                                               ; preds = %27
  %38 = load i64, i64* %4, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i64 [ %36, %33 ], [ %38, %37 ]
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load i8*, i8** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @memcpy(i64 %50, i8* %51, i64 %52)
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %3, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %4, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %43, %39
  br label %71

71:                                               ; preds = %70, %24
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %71
  %75 = call %struct.TYPE_8__* @zmalloc(i32 24)
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %6, align 8
  %76 = load i64, i64* @AOF_RW_BUF_BLOCK_SIZE, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 2), align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = call i32 @listAddNodeTail(i32 %81, %struct.TYPE_8__* %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 2), align 4
  %85 = call i32 @listLength(i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = srem i32 %87, 10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %74
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  %93 = srem i32 %92, 100
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @LL_WARNING, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @LL_NOTICE, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (...) @aofRewriteBufferSize()
  %103 = sdiv i32 %102, 1048576
  %104 = call i32 @serverLog(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %74
  br label %106

106:                                              ; preds = %105, %71
  br label %21

107:                                              ; preds = %21
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %110 = call i64 @aeGetFileEvents(i32 %108, i32 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %115 = load i32, i32* @AE_WRITABLE, align 4
  %116 = load i32, i32* @aofChildWriteDiffData, align 4
  %117 = call i32 @aeCreateFileEvent(i32 %113, i32 %114, i32 %115, i32 %116, i32* null)
  br label %118

118:                                              ; preds = %112, %107
  ret void
}

declare dso_local %struct.TYPE_7__* @listLast(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local %struct.TYPE_8__* @zmalloc(i32) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @aofRewriteBufferSize(...) #1

declare dso_local i64 @aeGetFileEvents(i32, i32) #1

declare dso_local i32 @aeCreateFileEvent(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
