; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_rdbSaveModulesAux.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_rdbSaveModulesAux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RedisModule = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@modules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveModulesAux(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.RedisModule*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %14 = load i32, i32* @modules, align 4
  %15 = call i32* @dictGetIterator(i32 %14)
  store i32* %15, i32** %7, align 8
  br label %16

16:                                               ; preds = %61, %2
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @dictNext(i32* %17)
  store i32* %18, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.RedisModule* @dictGetVal(i32* %21)
  store %struct.RedisModule* %22, %struct.RedisModule** %9, align 8
  %23 = load %struct.RedisModule*, %struct.RedisModule** %9, align 8
  %24 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @listRewind(i32 %25, i32* %10)
  br label %27

27:                                               ; preds = %56, %45, %20
  %28 = call %struct.TYPE_6__* @listNext(i32* %10)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %11, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %12, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %30
  br label %27

46:                                               ; preds = %38
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %50 = call i32 @rdbSaveSingleModuleAux(i32* %47, i32 %48, %struct.TYPE_5__* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @dictReleaseIterator(i32* %54)
  store i32 -1, i32* %3, align 4
  br label %67

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %27

61:                                               ; preds = %27
  br label %16

62:                                               ; preds = %16
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @dictReleaseIterator(i32* %63)
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %53
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.RedisModule* @dictGetVal(i32*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @listNext(i32*) #1

declare dso_local i32 @rdbSaveSingleModuleAux(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
