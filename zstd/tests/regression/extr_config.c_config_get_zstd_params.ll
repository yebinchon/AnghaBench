; ModuleID = '/home/carl/AnghaBench/zstd/tests/regression/extr_config.c_config_get_zstd_params.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/regression/extr_config.c_config_get_zstd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@CONFIG_NO_LEVEL = common dso_local global i32 0, align 4
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_get_zstd_params(%struct.TYPE_16__* noalias sret %0, %struct.TYPE_15__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 %3, i64* %7, align 8
  %13 = bitcast %struct.TYPE_16__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 40, i1 false)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = bitcast %struct.TYPE_14__* %8 to i8*
  %17 = bitcast %struct.TYPE_14__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = call i32 @config_get_level(%struct.TYPE_15__* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CONFIG_NO_LEVEL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 3, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ZSTD_CONTENTSIZE_UNKNOWN, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i64, i64* %7, align 8
  call void @ZSTD_getParams(%struct.TYPE_16__* sret %10, i32 %25, i32 %35, i64 %36)
  %37 = bitcast %struct.TYPE_16__* %0 to i8*
  %38 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 40, i1 false)
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %102, %34
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %105

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %100 [
    i32 135, label %57
    i32 136, label %61
    i32 134, label %65
    i32 128, label %72
    i32 137, label %76
    i32 133, label %80
    i32 131, label %84
    i32 132, label %88
    i32 129, label %92
    i32 130, label %96
  ]

57:                                               ; preds = %44
  %58 = load i32, i32* %12, align 4
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %101

61:                                               ; preds = %44
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %101

65:                                               ; preds = %44
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %101

72:                                               ; preds = %44
  %73 = load i32, i32* %12, align 4
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %101

76:                                               ; preds = %44
  %77 = load i32, i32* %12, align 4
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %101

80:                                               ; preds = %44
  %81 = load i32, i32* %12, align 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %101

84:                                               ; preds = %44
  %85 = load i32, i32* %12, align 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %101

88:                                               ; preds = %44
  %89 = load i32, i32* %12, align 4
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  br label %101

92:                                               ; preds = %44
  %93 = load i32, i32* %12, align 4
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  br label %101

96:                                               ; preds = %44
  %97 = load i32, i32* %12, align 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  br label %101

100:                                              ; preds = %44
  br label %101

101:                                              ; preds = %100, %96, %92, %88, %84, %80, %76, %72, %65, %61, %57
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %11, align 8
  br label %39

105:                                              ; preds = %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @config_get_level(%struct.TYPE_15__*) #2

declare dso_local void @ZSTD_getParams(%struct.TYPE_16__* sret, i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
