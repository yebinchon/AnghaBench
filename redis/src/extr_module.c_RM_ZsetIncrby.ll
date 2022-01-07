; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_ZsetIncrby.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_ZsetIncrby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@OBJ_ZSET = common dso_local global i64 0, align 8
@REDISMODULE_KEYTYPE_ZSET = common dso_local global i32 0, align 4
@ZADD_INCR = common dso_local global i32 0, align 4
@ZADD_NAN = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_ZsetIncrby(%struct.TYPE_8__* %0, double %1, %struct.TYPE_7__* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store double %1, double* %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32* %3, i32** %10, align 8
  store double* %4, double** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @REDISMODULE_WRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %20, i32* %6, align 4
  br label %94

21:                                               ; preds = %5
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OBJ_ZSET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %35, i32* %6, align 4
  br label %94

36:                                               ; preds = %26, %21
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp eq %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = load i32, i32* @REDISMODULE_KEYTYPE_ZSET, align 4
  %44 = call i32 @moduleCreateEmptyKey(%struct.TYPE_8__* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @RM_ZsetAddFlagsToCoreFlags(i32 %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @ZADD_INCR, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load double, double* %8, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load double*, double** %11, align 8
  %64 = call i64 @zsetAdd(%struct.TYPE_9__* %58, double %59, i32 %62, i32* %12, double* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %52
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32*, i32** %10, align 8
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %72, i32* %6, align 4
  br label %94

73:                                               ; preds = %52
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ZADD_NAN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32*, i32** %10, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %84, i32* %6, align 4
  br label %94

85:                                               ; preds = %76, %73
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @RM_ZsetAddFlagsFromCoreFlags(i32 %89)
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %82, %71, %34, %19
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @moduleCreateEmptyKey(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @RM_ZsetAddFlagsToCoreFlags(i32) #1

declare dso_local i64 @zsetAdd(%struct.TYPE_9__*, double, i32, i32*, double*) #1

declare dso_local i32 @RM_ZsetAddFlagsFromCoreFlags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
