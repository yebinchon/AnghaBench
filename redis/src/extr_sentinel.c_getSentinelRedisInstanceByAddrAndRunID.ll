; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_getSentinelRedisInstanceByAddrAndRunID.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_getSentinelRedisInstanceByAddrAndRunID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @getSentinelRedisInstanceByAddrAndRunID(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ true, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @serverAssert(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @dictGetIterator(i32* %22)
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %71, %38, %18
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @dictNext(i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  %30 = call %struct.TYPE_6__* @dictGetVal(i32* %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %24

39:                                               ; preds = %33, %28
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strcmp(i32 %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %42, %39
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strcmp(i32 %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %49
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %11, align 8
  br label %72

71:                                               ; preds = %61, %52, %42
  br label %24

72:                                               ; preds = %69, %24
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @dictReleaseIterator(i32* %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  ret %struct.TYPE_6__* %75
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_6__* @dictGetVal(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
