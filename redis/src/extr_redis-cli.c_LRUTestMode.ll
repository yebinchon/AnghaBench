; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_LRUTestMode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_LRUTestMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i8* }

@LRU_CYCLE_PIPELINE_SIZE = common dso_local global i32 0, align 4
@context = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"SET %s %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GET %s\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"I/O error during LRU test\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"%lld Gets/sec | Hits: %lld (%.2f%%) | Misses: %lld (%.2f%%)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @LRUTestMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LRUTestMode() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca [128 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  %9 = call i32 @time(i32* null)
  %10 = call i32 (...) @getpid()
  %11 = xor i32 %9, %10
  %12 = call i32 @srand(i32 %11)
  br label %13

13:                                               ; preds = %0, %119
  %14 = call i64 (...) @mstime()
  store i64 %14, i64* %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %118, %13
  %16 = call i64 (...) @mstime()
  %17 = load i64, i64* %3, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp slt i64 %18, 1000
  br i1 %19, label %20, label %119

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @LRU_CYCLE_PIPELINE_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 5
  store i8 0, i8* %26, align 1
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = call signext i8 (...) @rand()
  %32 = sext i8 %31 to i32
  %33 = srem i32 %32, 57
  %34 = add nsw i32 65, %33
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %37
  store i8 %35, i8* %38, align 1
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %27

42:                                               ; preds = %27
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %44 = call i32 @LRUTestGenKey(i8* %43, i32 128)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %48 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @redisAppendCommand(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %21

52:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %61, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @LRU_CYCLE_PIPELINE_SIZE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %59 = bitcast %struct.TYPE_5__** %1 to i8**
  %60 = call i64 @redisGetReply(%struct.TYPE_6__* %58, i8** %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %53

64:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @LRU_CYCLE_PIPELINE_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %71 = call i32 @LRUTestGenKey(i8* %70, i32 128)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %74 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @redisAppendCommand(%struct.TYPE_6__* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %65

78:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %106, %78
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @LRU_CYCLE_PIPELINE_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %85 = bitcast %struct.TYPE_5__** %1 to i8**
  %86 = call i64 @redisGetReply(%struct.TYPE_6__* %84, i8** %85)
  %87 = load i64, i64* @REDIS_OK, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %101 [
    i32 129, label %93
    i32 128, label %98
  ]

93:                                               ; preds = %89
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  br label %104

98:                                               ; preds = %89
  %99 = load i64, i64* %6, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %104

101:                                              ; preds = %89
  %102 = load i64, i64* %5, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %101, %98, %93
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %79

109:                                              ; preds = %79
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 @fprintf(i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %117 = call i32 @exit(i32 1) #3
  unreachable

118:                                              ; preds = %109
  br label %15

119:                                              ; preds = %15
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* %5, align 8
  %125 = sitofp i64 %124 to double
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = add nsw i64 %126, %127
  %129 = sitofp i64 %128 to double
  %130 = fdiv double %125, %129
  %131 = fmul double %130, 1.000000e+02
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = sitofp i64 %133 to double
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %6, align 8
  %137 = add nsw i64 %135, %136
  %138 = sitofp i64 %137 to double
  %139 = fdiv double %134, %138
  %140 = fmul double %139, 1.000000e+02
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %122, i64 %123, double %131, i64 %132, double %140)
  br label %13
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @mstime(...) #1

declare dso_local signext i8 @rand(...) #1

declare dso_local i32 @LRUTestGenKey(i8*, i32) #1

declare dso_local i32 @redisAppendCommand(%struct.TYPE_6__*, i8*, i8*, ...) #1

declare dso_local i64 @redisGetReply(%struct.TYPE_6__*, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
