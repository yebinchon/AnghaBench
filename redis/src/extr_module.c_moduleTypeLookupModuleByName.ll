; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleTypeLookupModuleByName.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleTypeLookupModuleByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.RedisModule = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@modules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @moduleTypeLookupModuleByName(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.RedisModule*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @modules, align 4
  %11 = call i32* @dictGetIterator(i32 %10)
  store i32* %11, i32** %4, align 8
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @dictNext(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.RedisModule* @dictGetVal(i32* %17)
  store %struct.RedisModule* %18, %struct.RedisModule** %6, align 8
  %19 = load %struct.RedisModule*, %struct.RedisModule** %6, align 8
  %20 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @listRewind(i32 %21, i32* %7)
  br label %23

23:                                               ; preds = %40, %16
  %24 = call %struct.TYPE_6__* @listNext(i32* %7)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %9, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @memcmp(i8* %30, i32 %33, i32 4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @dictReleaseIterator(i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %2, align 8
  br label %45

40:                                               ; preds = %26
  br label %23

41:                                               ; preds = %23
  br label %12

42:                                               ; preds = %12
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @dictReleaseIterator(i32* %43)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %46
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.RedisModule* @dictGetVal(i32*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @listNext(i32*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
