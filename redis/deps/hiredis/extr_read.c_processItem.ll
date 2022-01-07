; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_read.c_processItem.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_read.c_processItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@REDIS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @processItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processItem(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i64 %11
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i8* @readBytes(%struct.TYPE_9__* %18, i32 1)
  store i8* %19, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %59 [
    i32 45, label %26
    i32 43, label %29
    i32 58, label %32
    i32 44, label %35
    i32 95, label %38
    i32 36, label %41
    i32 42, label %44
    i32 37, label %47
    i32 126, label %50
    i32 35, label %53
    i32 61, label %56
  ]

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 135, i32* %28, align 4
  br label %65

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 130, i32* %31, align 4
  br label %65

32:                                               ; preds = %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 134, i32* %34, align 4
  br label %65

35:                                               ; preds = %21
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 136, i32* %37, align 4
  br label %65

38:                                               ; preds = %21
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 132, i32* %40, align 4
  br label %65

41:                                               ; preds = %21
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 129, i32* %43, align 4
  br label %65

44:                                               ; preds = %21
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 138, i32* %46, align 4
  br label %65

47:                                               ; preds = %21
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 133, i32* %49, align 4
  br label %65

50:                                               ; preds = %21
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 131, i32* %52, align 4
  br label %65

53:                                               ; preds = %21
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 137, i32* %55, align 4
  br label %65

56:                                               ; preds = %21
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 128, i32* %58, align 4
  br label %65

59:                                               ; preds = %21
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @__redisReaderSetErrorProtocolByte(%struct.TYPE_9__* %60, i8 signext %62)
  %64 = load i32, i32* @REDIS_ERR, align 4
  store i32 %64, i32* %2, align 4
  br label %85

65:                                               ; preds = %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26
  br label %68

66:                                               ; preds = %17
  %67 = load i32, i32* @REDIS_ERR, align 4
  store i32 %67, i32* %2, align 4
  br label %85

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %82 [
    i32 135, label %73
    i32 130, label %73
    i32 134, label %73
    i32 136, label %73
    i32 132, label %73
    i32 137, label %73
    i32 129, label %76
    i32 128, label %76
    i32 138, label %79
    i32 133, label %79
    i32 131, label %79
  ]

73:                                               ; preds = %69, %69, %69, %69, %69, %69
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = call i32 @processLineItem(%struct.TYPE_9__* %74)
  store i32 %75, i32* %2, align 4
  br label %85

76:                                               ; preds = %69, %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = call i32 @processBulkItem(%struct.TYPE_9__* %77)
  store i32 %78, i32* %2, align 4
  br label %85

79:                                               ; preds = %69, %69, %69
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = call i32 @processAggregateItem(%struct.TYPE_9__* %80)
  store i32 %81, i32* %2, align 4
  br label %85

82:                                               ; preds = %69
  %83 = call i32 @assert(i32* null)
  %84 = load i32, i32* @REDIS_ERR, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %79, %76, %73, %66, %59
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @readBytes(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @__redisReaderSetErrorProtocolByte(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @processLineItem(%struct.TYPE_9__*) #1

declare dso_local i32 @processBulkItem(%struct.TYPE_9__*) #1

declare dso_local i32 @processAggregateItem(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
