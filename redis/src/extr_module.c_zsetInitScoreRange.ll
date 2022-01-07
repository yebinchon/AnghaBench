; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_zsetInitScoreRange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_zsetInitScoreRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_13__*, %struct.TYPE_15__, i32 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { double, double, i32, i32 }

@OBJ_ZSET = common dso_local global i64 0, align 8
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@REDISMODULE_ZSET_RANGE_SCORE = common dso_local global i32 0, align 4
@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@OBJ_ENCODING_SKIPLIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unsupported zset encoding\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zsetInitScoreRange(%struct.TYPE_16__* %0, double %1, double %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OBJ_ZSET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %6
  %30 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %30, i32* %7, align 4
  br label %127

31:                                               ; preds = %21
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = call i32 @RM_ZsetRangeStop(%struct.TYPE_16__* %32)
  %34 = load i32, i32* @REDISMODULE_ZSET_RANGE_SCORE, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %14, align 8
  %41 = load double, double* %9, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store double %41, double* %43, align 8
  %44 = load double, double* %10, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  store double %44, double* %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %31
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %70 = call i32* @zzlFirstInRange(%struct.TYPE_14__* %68, %struct.TYPE_15__* %69)
  br label %79

71:                                               ; preds = %60
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %78 = call i32* @zzlLastInRange(%struct.TYPE_14__* %76, %struct.TYPE_15__* %77)
  br label %79

79:                                               ; preds = %71, %63
  %80 = phi i32* [ %70, %63 ], [ %78, %71 ]
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  br label %117

83:                                               ; preds = %31
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %83
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %15, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %16, align 8
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load i32*, i32** %16, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %105 = call i32* @zslFirstInRange(i32* %103, %struct.TYPE_15__* %104)
  br label %110

106:                                              ; preds = %91
  %107 = load i32*, i32** %16, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %109 = call i32* @zslLastInRange(i32* %107, %struct.TYPE_15__* %108)
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i32* [ %105, %102 ], [ %109, %106 ]
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  br label %116

114:                                              ; preds = %83
  %115 = call i32 @serverPanic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  br label %117

117:                                              ; preds = %116, %79
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %125, %29
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @RM_ZsetRangeStop(%struct.TYPE_16__*) #1

declare dso_local i32* @zzlFirstInRange(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32* @zzlLastInRange(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32* @zslFirstInRange(i32*, %struct.TYPE_15__*) #1

declare dso_local i32* @zslLastInRange(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
