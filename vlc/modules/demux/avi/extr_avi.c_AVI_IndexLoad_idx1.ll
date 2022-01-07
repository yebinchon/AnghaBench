; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_IndexLoad_idx1.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_IndexLoad_idx1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@UNKNOWN_ES = common dso_local global i32 0, align 4
@AVIIF_FIXKEYFRAME = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, i64*)* @AVI_IndexLoad_idx1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVI_IndexLoad_idx1(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %8, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = call i64 @AVI_IndexFind_idx1(%struct.TYPE_21__* %18, %struct.TYPE_25__** %9, i64* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %4, align 4
  br label %121

23:                                               ; preds = %3
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %116, %23
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %119

32:                                               ; preds = %26
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @AVI_ParseStreamHeader(i32 %40, i32* %13, i32* %12)
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %115

47:                                               ; preds = %32
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %51, i64 %53
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %48, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @UNKNOWN_ES, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %115

64:                                               ; preds = %60, %47
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 4
  store i32 %72, i32* %73, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AVIIF_FIXKEYFRAME, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add nsw i64 %93, %94
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  store i64 %95, i64* %96, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  store i32 %107, i32* %108, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i64 %111
  %113 = load i64*, i64** %7, align 8
  %114 = call i32 @avi_index_Append(%struct.TYPE_23__* %112, i64* %113, %struct.TYPE_24__* %14)
  br label %115

115:                                              ; preds = %64, %60, %32
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %26

119:                                              ; preds = %26
  %120 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %21
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @AVI_IndexFind_idx1(%struct.TYPE_21__*, %struct.TYPE_25__**, i64*) #1

declare dso_local i32 @AVI_ParseStreamHeader(i32, i32*, i32*) #1

declare dso_local i32 @avi_index_Append(%struct.TYPE_23__*, i64*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
