; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_handleClientsWithPendingWritesUsingThreads.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_handleClientsWithPendingWritesUsingThreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@io_threads_active = common dso_local global i32 0, align 4
@tio_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%d TOTAL WRITE pending clients\0A\00", align 1
@CLIENT_PENDING_WRITE = common dso_local global i32 0, align 4
@io_threads_list = common dso_local global i32* null, align 8
@IO_THREADS_OP_WRITE = common dso_local global i32 0, align 4
@io_threads_op = common dso_local global i32 0, align 4
@io_threads_pending = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"I/O WRITE All threads finshed\0A\00", align 1
@sendReplyToClient = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handleClientsWithPendingWritesUsingThreads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %14 = call i32 @listLength(i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %138

18:                                               ; preds = %0
  %19 = call i64 (...) @stopThreadedIOIfNeeded()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @handleClientsWithPendingWrites()
  store i32 %22, i32* %1, align 4
  br label %138

23:                                               ; preds = %18
  %24 = load i32, i32* @io_threads_active, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @startThreadedIO()
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i64, i64* @tio_debug, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %36 = call i32 @listRewind(i32 %35, i32* %3)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %40, %34
  %38 = call i32* @listNext(i32* %3)
  store i32* %38, i32** %4, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = call %struct.TYPE_7__* @listNodeValue(i32* %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* @CLIENT_PENDING_WRITE, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %51 = srem i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** @io_threads_list, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = call i32 @listAddNodeTail(i32 %56, %struct.TYPE_7__* %57)
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load i32, i32* @IO_THREADS_OP_WRITE, align 4
  store i32 %62, i32* @io_threads_op, align 4
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %79, %61
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32*, i32** @io_threads_list, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @listLength(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** @io_threads_pending, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %63

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %104
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i32*, i32** @io_threads_pending, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %84

100:                                              ; preds = %84
  %101 = load i64, i64* %10, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %105

104:                                              ; preds = %100
  br label %83

105:                                              ; preds = %103
  %106 = load i64, i64* @tio_debug, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %112 = call i32 @listRewind(i32 %111, i32* %3)
  br label %113

113:                                              ; preds = %133, %110
  %114 = call i32* @listNext(i32* %3)
  store i32* %114, i32** %4, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load i32*, i32** %4, align 8
  %118 = call %struct.TYPE_7__* @listNodeValue(i32* %117)
  store %struct.TYPE_7__* %118, %struct.TYPE_7__** %12, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %120 = call i64 @clientHasPendingReplies(%struct.TYPE_7__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @sendReplyToClient, align 4
  %127 = call i64 @connSetWriteHandler(i32 %125, i32 %126)
  %128 = load i64, i64* @AE_ERR, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %132 = call i32 @freeClientAsync(%struct.TYPE_7__* %131)
  br label %133

133:                                              ; preds = %130, %122, %116
  br label %113

134:                                              ; preds = %113
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %136 = call i32 @listEmpty(i32 %135)
  %137 = load i32, i32* %2, align 4
  store i32 %137, i32* %1, align 4
  br label %138

138:                                              ; preds = %134, %21, %17
  %139 = load i32, i32* %1, align 4
  ret i32 %139
}

declare dso_local i32 @listLength(i32) #1

declare dso_local i64 @stopThreadedIOIfNeeded(...) #1

declare dso_local i32 @handleClientsWithPendingWrites(...) #1

declare dso_local i32 @startThreadedIO(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_7__* @listNodeValue(i32*) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_7__*) #1

declare dso_local i64 @connSetWriteHandler(i32, i32) #1

declare dso_local i32 @freeClientAsync(%struct.TYPE_7__*) #1

declare dso_local i32 @listEmpty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
