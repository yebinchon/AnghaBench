; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_geodistCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_geodistCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32 }

@shared = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@OBJ_ZSET = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geodistCommand(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x double], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store double 1.000000e+00, double* %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %16, i64 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = call double @extractUnitOrReply(%struct.TYPE_12__* %13, %struct.TYPE_14__* %18)
  store double %19, double* %3, align 8
  %20 = load double, double* %3, align 8
  %21 = fcmp olt double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %111

23:                                               ; preds = %12
  br label %34

24:                                               ; preds = %1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 5
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 1), align 8
  %32 = call i32 @addReply(%struct.TYPE_12__* %30, i32 %31)
  br label %111

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %23
  store i32* null, i32** %4, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %38, i64 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 0), align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @lookupKeyReadOrReply(%struct.TYPE_12__* %35, %struct.TYPE_14__* %40, i32 %46)
  store i32* %47, i32** %4, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %34
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @OBJ_ZSET, align 4
  %53 = call i64 @checkType(%struct.TYPE_12__* %50, i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %34
  br label %111

56:                                               ; preds = %49
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %60, i64 2
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @zsetScore(i32* %57, i32 %64, double* %5)
  %66 = load i64, i64* @C_ERR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %56
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %72, i64 3
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @zsetScore(i32* %69, i32 %76, double* %6)
  %78 = load i64, i64* @C_ERR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68, %56
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = call i32 @addReplyNull(%struct.TYPE_12__* %81)
  br label %111

83:                                               ; preds = %68
  %84 = load double, double* %5, align 8
  %85 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %86 = call i32 @decodeGeohash(double %84, double* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load double, double* %6, align 8
  %90 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %91 = getelementptr inbounds double, double* %90, i64 2
  %92 = call i32 @decodeGeohash(double %89, double* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = call i32 @addReplyNull(%struct.TYPE_12__* %95)
  br label %111

97:                                               ; preds = %88
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %100 = load double, double* %99, align 16
  %101 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 1
  %102 = load double, double* %101, align 8
  %103 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 2
  %104 = load double, double* %103, align 16
  %105 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 3
  %106 = load double, double* %105, align 8
  %107 = call double @geohashGetDistance(double %100, double %102, double %104, double %106)
  %108 = load double, double* %3, align 8
  %109 = fdiv double %107, %108
  %110 = call i32 @addReplyDoubleDistance(%struct.TYPE_12__* %98, double %109)
  br label %111

111:                                              ; preds = %22, %29, %55, %80, %97, %94
  ret void
}

declare dso_local double @extractUnitOrReply(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i32 @addReply(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @lookupKeyReadOrReply(%struct.TYPE_12__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @zsetScore(i32*, i32, double*) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_12__*) #1

declare dso_local i32 @decodeGeohash(double, double*) #1

declare dso_local i32 @addReplyDoubleDistance(%struct.TYPE_12__*, double) #1

declare dso_local double @geohashGetDistance(double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
