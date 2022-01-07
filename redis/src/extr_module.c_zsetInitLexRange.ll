; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_zsetInitLexRange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_zsetInitLexRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@OBJ_ZSET = common dso_local global i64 0, align 8
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@REDISMODULE_ZSET_RANGE_LEX = common dso_local global i32 0, align 4
@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@OBJ_ENCODING_SKIPLIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unsupported zset encoding\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zsetInitLexRange(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBJ_ZSET, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %4
  %26 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %26, i32* %5, align 4
  br label %120

27:                                               ; preds = %17
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = call i32 @RM_ZsetRangeStop(%struct.TYPE_10__* %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @zslParseLexRange(i32* %34, i32* %35, i32* %36)
  %38 = load i64, i64* @C_ERR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %41, i32* %5, align 4
  br label %120

42:                                               ; preds = %27
  %43 = load i32, i32* @REDISMODULE_ZSET_RANGE_LEX, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %42
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32* @zzlFirstInLexRange(%struct.TYPE_9__* %61, i32* %62)
  br label %72

64:                                               ; preds = %53
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32* @zzlLastInLexRange(%struct.TYPE_9__* %69, i32* %70)
  br label %72

72:                                               ; preds = %64, %56
  %73 = phi i32* [ %63, %56 ], [ %71, %64 ]
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  br label %110

76:                                               ; preds = %42
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %76
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %11, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %12, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = load i32*, i32** %12, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i32* @zslFirstInLexRange(i32* %96, i32* %97)
  br label %103

99:                                               ; preds = %84
  %100 = load i32*, i32** %12, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call i32* @zslLastInLexRange(i32* %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i32* [ %98, %95 ], [ %102, %99 ]
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32* %104, i32** %106, align 8
  br label %109

107:                                              ; preds = %76
  %108 = call i32 @serverPanic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %103
  br label %110

110:                                              ; preds = %109, %72
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %40, %25
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @RM_ZsetRangeStop(%struct.TYPE_10__*) #1

declare dso_local i64 @zslParseLexRange(i32*, i32*, i32*) #1

declare dso_local i32* @zzlFirstInLexRange(%struct.TYPE_9__*, i32*) #1

declare dso_local i32* @zzlLastInLexRange(%struct.TYPE_9__*, i32*) #1

declare dso_local i32* @zslFirstInLexRange(i32*, i32*) #1

declare dso_local i32* @zslLastInLexRange(i32*, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
