; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_create_visual_and_colormap.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_create_visual_and_colormap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i64 }

@xcb = common dso_local global %struct.TYPE_15__* null, align 8
@XCB_VISUAL_CLASS_TRUE_COLOR = common dso_local global i64 0, align 8
@depth = common dso_local global %struct.TYPE_18__* null, align 8
@visual = common dso_local global %struct.TYPE_16__* null, align 8
@root_visual = common dso_local global %struct.TYPE_16__* null, align 8
@map = common dso_local global i32 0, align 4
@XCB_COLORMAP_ALLOC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x11_create_visual_and_colormap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_create_visual_and_colormap() #0 {
  %1 = alloca %struct.TYPE_18__*, align 8
  %2 = alloca %struct.TYPE_19__, align 8
  %3 = alloca %struct.TYPE_19__, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %1, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %13 = call { %struct.TYPE_18__*, i64 } @xcb_screen_allowed_depths_iterator(%struct.TYPE_20__* %12)
  %14 = bitcast %struct.TYPE_19__* %3 to { %struct.TYPE_18__*, i64 }*
  %15 = getelementptr inbounds { %struct.TYPE_18__*, i64 }, { %struct.TYPE_18__*, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { %struct.TYPE_18__*, i64 } %13, 0
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %15, align 8
  %17 = getelementptr inbounds { %struct.TYPE_18__*, i64 }, { %struct.TYPE_18__*, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { %struct.TYPE_18__*, i64 } %13, 1
  store i64 %18, i64* %17, align 8
  %19 = bitcast %struct.TYPE_19__* %2 to i8*
  %20 = bitcast %struct.TYPE_19__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  br label %21

21:                                               ; preds = %79, %0
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %4, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = call { %struct.TYPE_16__*, i64 } @xcb_depth_visuals_iterator(%struct.TYPE_18__* %28)
  %30 = bitcast %struct.TYPE_17__* %6 to { %struct.TYPE_16__*, i64 }*
  %31 = getelementptr inbounds { %struct.TYPE_16__*, i64 }, { %struct.TYPE_16__*, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { %struct.TYPE_16__*, i64 } %29, 0
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds { %struct.TYPE_16__*, i64 }, { %struct.TYPE_16__*, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { %struct.TYPE_16__*, i64 } %29, 1
  store i64 %34, i64* %33, align 8
  %35 = bitcast %struct.TYPE_17__* %5 to i8*
  %36 = bitcast %struct.TYPE_17__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  br label %37

37:                                               ; preds = %76, %25
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %7, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XCB_VISUAL_CLASS_TRUE_COLOR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** @depth, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** @visual, align 8
  br label %62

62:                                               ; preds = %59, %53, %48, %41
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %1, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** @root_visual, align 8
  br label %75

75:                                               ; preds = %72, %62
  br label %76

76:                                               ; preds = %75
  %77 = call i32 @xcb_visualtype_next(%struct.TYPE_17__* %5)
  br label %37

78:                                               ; preds = %37
  br label %79

79:                                               ; preds = %78
  %80 = call i32 @xcb_depth_next(%struct.TYPE_19__* %2)
  br label %21

81:                                               ; preds = %21
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** @visual, align 8
  %83 = icmp ne %struct.TYPE_16__* %82, null
  br i1 %83, label %84, label %114

84:                                               ; preds = %81
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @xcb_generate_id(i32 %87)
  store i32 %88, i32* @map, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @XCB_COLORMAP_ALLOC_NONE, align 4
  %93 = load i32, i32* @map, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** @visual, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @xcb_create_colormap_checked(i32 %91, i32 %92, i32 %93, i32 %98, i64 %101)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32* @xcb_request_check(i32 %105, i32 %106)
  store i32* %107, i32** %9, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %84
  store %struct.TYPE_18__* null, %struct.TYPE_18__** @depth, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** @visual, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @free(i32* %111)
  br label %113

113:                                              ; preds = %110, %84
  br label %114

114:                                              ; preds = %113, %81
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** @visual, align 8
  %116 = icmp eq %struct.TYPE_16__* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  store %struct.TYPE_18__* %118, %struct.TYPE_18__** @depth, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** @root_visual, align 8
  store %struct.TYPE_16__* %119, %struct.TYPE_16__** @visual, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* @map, align 4
  br label %125

125:                                              ; preds = %117, %114
  ret void
}

declare dso_local { %struct.TYPE_18__*, i64 } @xcb_screen_allowed_depths_iterator(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { %struct.TYPE_16__*, i64 } @xcb_depth_visuals_iterator(%struct.TYPE_18__*) #1

declare dso_local i32 @xcb_visualtype_next(%struct.TYPE_17__*) #1

declare dso_local i32 @xcb_depth_next(%struct.TYPE_19__*) #1

declare dso_local i32 @xcb_generate_id(i32) #1

declare dso_local i32 @xcb_create_colormap_checked(i32, i32, i32, i32, i64) #1

declare dso_local i32* @xcb_request_check(i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
