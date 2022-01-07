; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_geoposCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_geoposCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i32 }

@OBJ_ZSET = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geoposCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca [2 x double], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %12, i64 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = call i32* @lookupKeyRead(i32 %9, %struct.TYPE_9__* %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @OBJ_ZSET, align 4
  %22 = call i64 @checkType(%struct.TYPE_8__* %19, i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %81

25:                                               ; preds = %18, %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 2
  %31 = call i32 @addReplyArrayLen(%struct.TYPE_8__* %26, i32 %30)
  store i32 2, i32* %3, align 4
  br label %32

32:                                               ; preds = %78, %25
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i64 %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @zsetScore(i32* %42, i32 %51, double* %5)
  %53 = load i64, i64* @C_ERR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %41, %38
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = call i32 @addReplyNullArray(%struct.TYPE_8__* %56)
  br label %77

58:                                               ; preds = %41
  %59 = load double, double* %5, align 8
  %60 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0
  %61 = call i32 @decodeGeohash(double %59, double* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = call i32 @addReplyNullArray(%struct.TYPE_8__* %64)
  br label %78

66:                                               ; preds = %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = call i32 @addReplyArrayLen(%struct.TYPE_8__* %67, i32 2)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0
  %71 = load double, double* %70, align 16
  %72 = call i32 @addReplyHumanLongDouble(%struct.TYPE_8__* %69, double %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 1
  %75 = load double, double* %74, align 8
  %76 = call i32 @addReplyHumanLongDouble(%struct.TYPE_8__* %73, double %75)
  br label %77

77:                                               ; preds = %66, %55
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %32

81:                                               ; preds = %24, %32
  ret void
}

declare dso_local i32* @lookupKeyRead(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @checkType(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @zsetScore(i32*, i32, double*) #1

declare dso_local i32 @addReplyNullArray(%struct.TYPE_8__*) #1

declare dso_local i32 @decodeGeohash(double, double*) #1

declare dso_local i32 @addReplyHumanLongDouble(%struct.TYPE_8__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
