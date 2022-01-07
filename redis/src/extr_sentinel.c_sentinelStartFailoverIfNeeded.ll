; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelStartFailoverIfNeeded.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelStartFailoverIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@SRI_O_DOWN = common dso_local global i32 0, align 4
@SRI_FAILOVER_IN_PROGRESS = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Next failover delay: I will not start a failover before %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sentinelStartFailoverIfNeeded(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [26 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SRI_O_DOWN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SRI_FAILOVER_IN_PROGRESS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %65

21:                                               ; preds = %13
  %22 = call i32 (...) @mstime()
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %21
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 2
  %48 = add nsw i32 %43, %47
  %49 = sdiv i32 %48, 1000
  store i32 %49, i32* %4, align 4
  %50 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 0
  %51 = call i32 @ctime_r(i32* %4, i8* %50)
  %52 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 24
  store i8 0, i8* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @LL_WARNING, align 4
  %59 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 0
  %60 = call i32 @serverLog(i32 %58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %40, %32
  store i32 0, i32* %2, align 4
  br label %65

62:                                               ; preds = %21
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = call i32 @sentinelStartFailover(%struct.TYPE_4__* %63)
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %61, %20, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @ctime_r(i32*, i8*) #1

declare dso_local i32 @serverLog(i32, i8*, i8*) #1

declare dso_local i32 @sentinelStartFailover(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
