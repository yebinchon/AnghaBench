; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_hiredis.c_redisBufferWrite.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_hiredis.c_redisBufferWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }

@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisBufferWrite(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @REDIS_ERR, align 4
  store i32 %12, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @sdslen(i32 %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i32 %24(%struct.TYPE_6__* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @REDIS_ERR, align 4
  store i32 %30, i32* %3, align 4
  br label %72

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @sdslen(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sdsfree(i32 %45)
  %47 = call i32 (...) @sdsempty()
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %56

50:                                               ; preds = %34
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @sdsrange(i32 %53, i32 %54, i32 -1)
  br label %56

56:                                               ; preds = %50, %42
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %13
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @sdslen(i32 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %59
  %71 = load i32, i32* @REDIS_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %29, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdsrange(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
