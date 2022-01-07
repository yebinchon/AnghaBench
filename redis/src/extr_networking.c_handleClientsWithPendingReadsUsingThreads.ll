; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_handleClientsWithPendingReadsUsingThreads.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_handleClientsWithPendingReadsUsingThreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@io_threads_active = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@tio_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%d TOTAL READ pending clients\0A\00", align 1
@io_threads_list = common dso_local global i32* null, align 8
@IO_THREADS_OP_READ = common dso_local global i32 0, align 4
@io_threads_op = common dso_local global i32 0, align 4
@io_threads_pending = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"I/O READ All threads finshed\0A\00", align 1
@CLIENT_PENDING_READ = common dso_local global i32 0, align 4
@CLIENT_PENDING_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handleClientsWithPendingReadsUsingThreads() #0 {
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
  %13 = load i32, i32* @io_threads_active, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %0
  store i32 0, i32* %1, align 4
  br label %138

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %21 = call i32 @listLength(i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %138

25:                                               ; preds = %19
  %26 = load i64, i64* @tio_debug, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %33 = call i32 @listRewind(i32 %32, i32* %3)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %37, %31
  %35 = call i32* @listNext(i32* %3)
  store i32* %35, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = call %struct.TYPE_7__* @listNodeValue(i32* %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %42 = srem i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** @io_threads_list, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = call i32 @listAddNodeTail(i32 %47, %struct.TYPE_7__* %48)
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load i32, i32* @IO_THREADS_OP_READ, align 4
  store i32 %53, i32* @io_threads_op, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %70, %52
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32*, i32** @io_threads_list, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @listLength(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** @io_threads_pending, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %54

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73, %95
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32*, i32** @io_threads_pending, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %75

91:                                               ; preds = %75
  %92 = load i64, i64* %10, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %96

95:                                               ; preds = %91
  br label %74

96:                                               ; preds = %94
  %97 = load i64, i64* @tio_debug, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %103 = call i32 @listRewind(i32 %102, i32* %3)
  br label %104

104:                                              ; preds = %131, %101
  %105 = call i32* @listNext(i32* %3)
  store i32* %105, i32** %4, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %134

107:                                              ; preds = %104
  %108 = load i32*, i32** %4, align 8
  %109 = call %struct.TYPE_7__* @listNodeValue(i32* %108)
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %12, align 8
  %110 = load i32, i32* @CLIENT_PENDING_READ, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CLIENT_PENDING_COMMAND, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %107
  %123 = load i32, i32* @CLIENT_PENDING_COMMAND, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %130 = call i32 @processCommandAndResetClient(%struct.TYPE_7__* %129)
  br label %131

131:                                              ; preds = %122, %107
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %133 = call i32 @processInputBufferAndReplicate(%struct.TYPE_7__* %132)
  br label %104

134:                                              ; preds = %104
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %136 = call i32 @listEmpty(i32 %135)
  %137 = load i32, i32* %2, align 4
  store i32 %137, i32* %1, align 4
  br label %138

138:                                              ; preds = %134, %24, %18
  %139 = load i32, i32* %1, align 4
  ret i32 %139
}

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_7__* @listNodeValue(i32*) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @processCommandAndResetClient(%struct.TYPE_7__*) #1

declare dso_local i32 @processInputBufferAndReplicate(%struct.TYPE_7__*) #1

declare dso_local i32 @listEmpty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
