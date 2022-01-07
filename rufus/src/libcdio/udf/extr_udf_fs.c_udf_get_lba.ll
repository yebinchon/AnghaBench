; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_fs.c_udf_get_lba.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_fs.c_udf_get_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@ICBTAG_FLAG_AD_MASK = common dso_local global i32 0, align 4
@UDF_LENGTH_MASK = common dso_local global i32 0, align 4
@UDF_BLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_get_lba(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %116

16:                                               ; preds = %3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ICBTAG_FLAG_AD_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %115 [
    i32 128, label %23
    i32 129, label %53
    i32 130, label %84
  ]

23:                                               ; preds = %16
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @uint32_from_le(i32 %30)
  %32 = add nsw i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %8, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @uint32_from_le(i32 %37)
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uint32_from_le(i32 %44)
  %46 = load i32, i32* @UDF_LENGTH_MASK, align 4
  %47 = and i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %50 = sdiv i32 %48, %49
  %51 = add nsw i32 %41, %50
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  store i32 1, i32* %4, align 4
  br label %116

53:                                               ; preds = %16
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @uint32_from_le(i32 %60)
  %62 = add nsw i32 %57, %61
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %9, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @uint32_from_le(i32 %68)
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @uint32_from_le(i32 %75)
  %77 = load i32, i32* @UDF_LENGTH_MASK, align 4
  %78 = and i32 %76, %77
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %81 = sdiv i32 %79, %80
  %82 = add nsw i32 %72, %81
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  store i32 1, i32* %4, align 4
  br label %116

84:                                               ; preds = %16
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @uint32_from_le(i32 %91)
  %93 = add nsw i32 %88, %92
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %10, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @uint32_from_le(i32 %99)
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @uint32_from_le(i32 %106)
  %108 = load i32, i32* @UDF_LENGTH_MASK, align 4
  %109 = and i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %112 = sdiv i32 %110, %111
  %113 = add nsw i32 %103, %112
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  store i32 1, i32* %4, align 4
  br label %116

115:                                              ; preds = %16
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %84, %53, %23, %15
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @uint32_from_le(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
