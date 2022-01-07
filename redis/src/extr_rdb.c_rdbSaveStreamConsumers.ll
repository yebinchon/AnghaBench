; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveStreamConsumers.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveStreamConsumers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rdbSaveStreamConsumers(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @raxSize(i32 %13)
  %15 = call i32 @rdbSaveLen(i32* %10, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %71

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @raxStart(%struct.TYPE_11__* %8, i32 %24)
  %26 = call i32 @raxSeek(%struct.TYPE_11__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  br label %27

27:                                               ; preds = %63, %18
  %28 = call i64 @raxNext(%struct.TYPE_11__* %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %9, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @rdbSaveRawString(i32* %33, i32 %35, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i64 -1, i64* %3, align 8
  br label %71

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rdbSaveMillisecondTime(i32* %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i64 -1, i64* %3, align 8
  br label %71

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rdbSaveStreamPEL(i32* %56, i32 %59, i32 0)
  store i32 %60, i32* %6, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i64 -1, i64* %3, align 8
  br label %71

63:                                               ; preds = %52
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %27

67:                                               ; preds = %27
  %68 = call i32 @raxStop(%struct.TYPE_11__* %8)
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %67, %62, %51, %40, %17
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i32 @rdbSaveLen(i32*, i32) #1

declare dso_local i32 @raxSize(i32) #1

declare dso_local i32 @raxStart(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @raxSeek(%struct.TYPE_11__*, i8*, i32*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_11__*) #1

declare dso_local i32 @rdbSaveRawString(i32*, i32, i32) #1

declare dso_local i32 @rdbSaveMillisecondTime(i32*, i32) #1

declare dso_local i32 @rdbSaveStreamPEL(i32*, i32, i32) #1

declare dso_local i32 @raxStop(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
