; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_latencyMode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_latencyMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LATENCY_HISTORY_DEFAULT_INTERVAL = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\0AI/O error\0A\00", align 1
@OUTPUT_STANDARD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"\1B[0G\1B[2K\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" -- %.2f seconds range\0A\00", align 1
@LATENCY_SAMPLE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @latencyMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latencyMode() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %15 = sdiv i32 %14, 1000
  br label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @LATENCY_HISTORY_DEFAULT_INTERVAL, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %15, %13 ], [ %17, %16 ]
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = call i64 (...) @mstime()
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1000, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %27 = sdiv i32 %26, 1000
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i32, i32* @context, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %133
  %35 = call i64 (...) @mstime()
  store i64 %35, i64* %2, align 8
  %36 = load i32, i32* @context, align 4
  %37 = call i32* @reconnectingRedisCommand(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %1, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %34
  %45 = call i64 (...) @mstime()
  %46 = load i64, i64* %2, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %3, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @freeReplyObject(i32* %48)
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i64, i64* %3, align 8
  store i64 %55, i64* %6, align 8
  store i64 %55, i64* %5, align 8
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %3, align 8
  %57 = sitofp i64 %56 to double
  store double %57, double* %9, align 8
  br label %79

58:                                               ; preds = %44
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %3, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %3, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sitofp i64 %74 to double
  %76 = load i64, i64* %7, align 8
  %77 = sitofp i64 %76 to double
  %78 = fdiv double %75, %77
  store double %78, double* %9, align 8
  br label %79

79:                                               ; preds = %70, %54
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %81 = load i64, i64* @OUTPUT_STANDARD, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load double, double* %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @latencyModePrint(i64 %85, i64 %86, double %87, i64 %88)
  br label %115

90:                                               ; preds = %79
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load double, double* %9, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @latencyModePrint(i64 %94, i64 %95, double %96, i64 %97)
  br label %114

99:                                               ; preds = %90
  %100 = call i64 (...) @mstime()
  %101 = load i64, i64* %10, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %104 = sext i32 %103 to i64
  %105 = icmp sgt i64 %102, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load double, double* %9, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @latencyModePrint(i64 %107, i64 %108, double %109, i64 %110)
  %112 = call i32 @exit(i32 0) #3
  unreachable

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %83
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = call i64 (...) @mstime()
  %120 = load i64, i64* %10, align 8
  %121 = sub nsw i64 %119, %120
  %122 = load i64, i64* %8, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = call i64 (...) @mstime()
  %126 = load i64, i64* %10, align 8
  %127 = sub nsw i64 %125, %126
  %128 = sitofp i64 %127 to float
  %129 = fdiv float %128, 1.000000e+03
  %130 = fpext float %129 to double
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), double %130)
  %132 = call i64 (...) @mstime()
  store i64 %132, i64* %10, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %133

133:                                              ; preds = %124, %118, %115
  %134 = load i32, i32* @LATENCY_SAMPLE_RATE, align 4
  %135 = mul nsw i32 %134, 1000
  %136 = call i32 @usleep(i32 %135)
  br label %34
}

declare dso_local i64 @mstime(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @reconnectingRedisCommand(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @latencyModePrint(i64, i64, double, i64) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
