; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_imageupdater.h_TTML_ImageSpuUpdate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_imageupdater.h_TTML_ImageSpuUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_18__ }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__, %struct.TYPE_17__*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@ORIGIN_X_IS_RATIO = common dso_local global i32 0, align 4
@ORIGIN_Y_IS_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*)* @TTML_ImageSpuUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TTML_ImageSpuUpdate(%struct.TYPE_23__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_24__**, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %8, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = call i32 @VLC_UNUSED(%struct.TYPE_20__* %13)
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %16 = call i32 @VLC_UNUSED(%struct.TYPE_20__* %15)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %18 = call i32 @VLC_UNUSED(%struct.TYPE_20__* %17)
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %9, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store %struct.TYPE_24__** %24, %struct.TYPE_24__*** %10, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %11, align 8
  br label %28

28:                                               ; preds = %118, %4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %30 = icmp ne %struct.TYPE_22__* %29, null
  br i1 %30, label %31, label %122

31:                                               ; preds = %28
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = call %struct.TYPE_24__* @subpicture_region_New(i32* %35)
  store %struct.TYPE_24__* %36, %struct.TYPE_24__** %12, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %38 = icmp ne %struct.TYPE_24__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %122

40:                                               ; preds = %31
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @picture_Release(i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = call i32 @picture_Clone(%struct.TYPE_17__* %47)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %40
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %57 = call i32 @subpicture_region_Delete(%struct.TYPE_24__* %56)
  br label %122

58:                                               ; preds = %40
  %59 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %60 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ORIGIN_X_IS_RATIO, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %58
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %88

81:                                               ; preds = %58
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %70
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ORIGIN_Y_IS_RATIO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %113

106:                                              ; preds = %88
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %106, %95
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %115 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  store %struct.TYPE_24__* %114, %struct.TYPE_24__** %115, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 3
  store %struct.TYPE_24__** %117, %struct.TYPE_24__*** %10, align 8
  br label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  store %struct.TYPE_22__* %121, %struct.TYPE_22__** %11, align 8
  br label %28

122:                                              ; preds = %39, %55, %28
  ret void
}

declare dso_local i32 @VLC_UNUSED(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_24__* @subpicture_region_New(i32*) #1

declare dso_local i32 @picture_Release(i32) #1

declare dso_local i32 @picture_Clone(%struct.TYPE_17__*) #1

declare dso_local i32 @subpicture_region_Delete(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
