; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_dbRandomKey.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_dbRandomKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dbRandomKey(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 100, i32* %5, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @dictSize(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @dictSize(i32 %15)
  %17 = icmp eq i64 %12, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %1, %57
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @dictGetFairRandomKey(i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %63

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @dictGetKey(i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @sdslen(i32 %31)
  %33 = call i32* @createStringObject(i32 %30, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @dictFind(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  store i32* %51, i32** %2, align 8
  br label %63

52:                                               ; preds = %46, %43, %40
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @expireIfNeeded(%struct.TYPE_5__* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @decrRefCount(i32* %58)
  br label %19

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i32*, i32** %8, align 8
  store i32* %62, i32** %2, align 8
  br label %63

63:                                               ; preds = %61, %50, %26
  %64 = load i32*, i32** %2, align 8
  ret i32* %64
}

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32* @dictGetFairRandomKey(i32) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local i32* @createStringObject(i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i64 @dictFind(i32, i32) #1

declare dso_local i64 @expireIfNeeded(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
