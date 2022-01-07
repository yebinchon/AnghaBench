; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_geoaddCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_geoaddCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32** }

@.str = private unnamed_addr constant [70 x i8] c"syntax error. Try GEOADD key [x1] [y1] [name1] [x2] [y2] [name2] ... \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"zadd\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@GEO_STEP_MAX = common dso_local global i32 0, align 4
@OBJ_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geoaddCommand(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x double], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 2
  %16 = srem i32 %15, 3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = call i32 @addReplyError(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %142

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 2
  %26 = sdiv i32 %25, 3
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 2, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i32** @zcalloc(i32 %33)
  store i32** %34, i32*** %5, align 8
  %35 = call i32* @createRawStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %36 = load i32**, i32*** %5, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** %5, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  store i32* %42, i32** %44, align 8
  %45 = load i32**, i32*** %5, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @incrRefCount(i32* %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %132, %21
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %135

53:                                               ; preds = %49
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 2
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  %63 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %64 = call i64 @extractLongLatOrReply(%struct.TYPE_7__* %54, i32** %62, double* %63)
  %65 = load i64, i64* @C_ERR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32**, i32*** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i32**, i32*** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @decrRefCount(i32* %84)
  br label %86

86:                                               ; preds = %79, %72
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %68

90:                                               ; preds = %68
  %91 = load i32**, i32*** %5, align 8
  %92 = call i32 @zfree(i32** %91)
  br label %142

93:                                               ; preds = %53
  %94 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %95 = load double, double* %94, align 16
  %96 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %97 = load double, double* %96, align 8
  %98 = load i32, i32* @GEO_STEP_MAX, align 4
  %99 = call i32 @geohashEncodeWGS84(double %95, double %97, i32 %98, i32* %8)
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @geohashAlign52Bits(i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @OBJ_STRING, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @sdsfromlonglong(i32 %103)
  %105 = call i32* @createObject(i32 %102, i32 %104)
  store i32* %105, i32** %10, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = mul nsw i32 %109, 3
  %111 = add nsw i32 2, %110
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %108, i64 %113
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %11, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32**, i32*** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = mul nsw i32 %118, 2
  %120 = add nsw i32 2, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %117, i64 %121
  store i32* %116, i32** %122, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load i32**, i32*** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = mul nsw i32 %125, 2
  %127 = add nsw i32 3, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %124, i64 %128
  store i32* %123, i32** %129, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @incrRefCount(i32* %130)
  br label %132

132:                                              ; preds = %93
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %49

135:                                              ; preds = %49
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load i32**, i32*** %5, align 8
  %139 = call i32 @replaceClientCommandVector(%struct.TYPE_7__* %136, i32 %137, i32** %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %141 = call i32 @zaddCommand(%struct.TYPE_7__* %140)
  br label %142

142:                                              ; preds = %135, %90, %18
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_7__*, i8*) #1

declare dso_local i32** @zcalloc(i32) #1

declare dso_local i32* @createRawStringObject(i8*, i32) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i64 @extractLongLatOrReply(%struct.TYPE_7__*, i32**, double*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @zfree(i32**) #1

declare dso_local i32 @geohashEncodeWGS84(double, double, i32, i32*) #1

declare dso_local i32 @geohashAlign52Bits(i32) #1

declare dso_local i32* @createObject(i32, i32) #1

declare dso_local i32 @sdsfromlonglong(i32) #1

declare dso_local i32 @replaceClientCommandVector(%struct.TYPE_7__*, i32, i32**) #1

declare dso_local i32 @zaddCommand(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
