; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_geohashCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_geohashCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_16__**, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"0123456789bcdefghjkmnpqrstuvwxyz\00", align 1
@OBJ_ZSET = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geohashCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca [2 x double], align 16
  %8 = alloca [2 x %struct.TYPE_14__], align 16
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca [11 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %18, i64 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = call i32* @lookupKeyRead(i32 %15, %struct.TYPE_16__* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @OBJ_ZSET, align 4
  %28 = call i64 @checkType(%struct.TYPE_13__* %25, i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %120

31:                                               ; preds = %24, %1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 2
  %37 = call i32 @addReplyArrayLen(%struct.TYPE_13__* %32, i32 %36)
  store i32 2, i32* %4, align 4
  br label %38

38:                                               ; preds = %117, %31
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %120

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %51, i64 %53
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @zsetScore(i32* %48, i32 %57, double* %6)
  %59 = load i64, i64* @C_ERR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %47, %44
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = call i32 @addReplyNull(%struct.TYPE_13__* %62)
  br label %116

64:                                               ; preds = %47
  %65 = load double, double* %6, align 8
  %66 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %67 = call i32 @decodeGeohash(double %65, double* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = call i32 @addReplyNull(%struct.TYPE_13__* %70)
  br label %117

72:                                               ; preds = %64
  %73 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i32 -180, i32* %74, align 16
  %75 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  store i32 180, i32* %76, align 4
  %77 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %8, i64 0, i64 1
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i32 -90, i32* %78, align 8
  %79 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %8, i64 0, i64 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i32 90, i32* %80, align 4
  %81 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %82 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %8, i64 0, i64 1
  %83 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %84 = load double, double* %83, align 16
  %85 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %86 = load double, double* %85, align 8
  %87 = call i32 @geohashEncode(%struct.TYPE_14__* %81, %struct.TYPE_14__* %82, double %84, double %86, i32 26, %struct.TYPE_15__* %9)
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %108, %72
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 10
  br i1 %90, label %91, label %111

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  %96 = mul nsw i32 %95, 5
  %97 = sub nsw i32 52, %96
  %98 = ashr i32 %93, %97
  %99 = and i32 %98, 31
  store i32 %99, i32* %12, align 4
  %100 = load i8*, i8** %3, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 %106
  store i8 %104, i8* %107, align 1
  br label %108

108:                                              ; preds = %91
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %88

111:                                              ; preds = %88
  %112 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 10
  store i8 0, i8* %112, align 1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %114 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %115 = call i32 @addReplyBulkCBuffer(%struct.TYPE_13__* %113, i8* %114, i32 10)
  br label %116

116:                                              ; preds = %111, %61
  br label %117

117:                                              ; preds = %116, %69
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %38

120:                                              ; preds = %30, %38
  ret void
}

declare dso_local i32* @lookupKeyRead(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @checkType(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @zsetScore(i32*, i32, double*) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_13__*) #1

declare dso_local i32 @decodeGeohash(double, double*) #1

declare dso_local i32 @geohashEncode(%struct.TYPE_14__*, %struct.TYPE_14__*, double, double, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
