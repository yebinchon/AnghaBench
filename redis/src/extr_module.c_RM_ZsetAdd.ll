; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_ZsetAdd.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_ZsetAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@OBJ_ZSET = common dso_local global i64 0, align 8
@REDISMODULE_KEYTYPE_ZSET = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_ZsetAdd(%struct.TYPE_8__* %0, double %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store double %1, double* %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @REDISMODULE_WRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %18, i32* %5, align 4
  br label %76

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OBJ_ZSET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %33, i32* %5, align 4
  br label %76

34:                                               ; preds = %24, %19
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = icmp eq %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = load i32, i32* @REDISMODULE_KEYTYPE_ZSET, align 4
  %42 = call i32 @moduleCreateEmptyKey(%struct.TYPE_8__* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @RM_ZsetAddFlagsToCoreFlags(i32 %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load double, double* %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @zsetAdd(%struct.TYPE_9__* %53, double %54, i32 %57, i32* %10, i32* null)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %66, i32* %5, align 4
  br label %76

67:                                               ; preds = %50
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @RM_ZsetAddFlagsFromCoreFlags(i32 %71)
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %65, %32, %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @moduleCreateEmptyKey(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @RM_ZsetAddFlagsToCoreFlags(i32) #1

declare dso_local i64 @zsetAdd(%struct.TYPE_9__*, double, i32, i32*, i32*) #1

declare dso_local i32 @RM_ZsetAddFlagsFromCoreFlags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
