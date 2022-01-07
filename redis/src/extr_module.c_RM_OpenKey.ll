; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_OpenKey.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_OpenKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32*, i32, %struct.TYPE_11__* }

@REDISMODULE_OPEN_KEY_NOTOUCH = common dso_local global i32 0, align 4
@LOOKUP_NOTOUCH = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_AM_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RM_OpenKey(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @REDISMODULE_OPEN_KEY_NOTOUCH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @LOOKUP_NOTOUCH, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @REDISMODULE_WRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32* @lookupKeyWriteWithFlags(i32 %29, i32* %30, i32 %31)
  store i32* %32, i32** %9, align 8
  br label %46

33:                                               ; preds = %18
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @lookupKeyReadWithFlags(i32 %38, i32* %39, i32 %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i8* null, i8** %4, align 8
  br label %79

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %24
  %47 = call %struct.TYPE_10__* @zmalloc(i32 48)
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %8, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 5
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @incrRefCount(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = call i32 @zsetKeyReset(%struct.TYPE_10__* %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = load i32, i32* @REDISMODULE_AM_KEY, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = call i32 @autoMemoryAdd(%struct.TYPE_11__* %73, i32 %74, %struct.TYPE_10__* %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = bitcast %struct.TYPE_10__* %77 to i8*
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %46, %44
  %80 = load i8*, i8** %4, align 8
  ret i8* %80
}

declare dso_local i32* @lookupKeyWriteWithFlags(i32, i32*, i32) #1

declare dso_local i32* @lookupKeyReadWithFlags(i32, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @zmalloc(i32) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32 @zsetKeyReset(%struct.TYPE_10__*) #1

declare dso_local i32 @autoMemoryAdd(%struct.TYPE_11__*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
