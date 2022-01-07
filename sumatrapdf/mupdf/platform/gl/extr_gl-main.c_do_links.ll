; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_links.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@GL_ONE = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@view_page_ctm = common dso_local global i32 0, align 4
@tooltip = common dso_local global i32 0, align 4
@ui = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@showlinks = common dso_local global i64 0, align 8
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @do_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_links(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load i32, i32* @GL_ONE, align 4
  %10 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %11 = call i32 @glBlendFunc(i32 %9, i32 %10)
  %12 = load i32, i32* @GL_BLEND, align 4
  %13 = call i32 @glEnable(i32 %12)
  br label %14

14:                                               ; preds = %127, %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %131

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @view_page_ctm, align 4
  %25 = call i32 @fz_transform_rect(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call { i64, i64 } @fz_irect_from_rect(i32 %26)
  %28 = bitcast %struct.TYPE_8__* %7 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i64 } %27, 0
  store i64 %30, i64* %29, align 4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i64 } %27, 1
  store i64 %32, i64* %31, align 4
  %33 = bitcast %struct.TYPE_8__* %4 to i8*
  %34 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 16, i1 false)
  %35 = bitcast %struct.TYPE_8__* %4 to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 4
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = load i64, i64* %38, align 4
  %40 = call i64 @ui_mouse_inside(i64 %37, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %17
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* @tooltip, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 8
  %48 = icmp ne %struct.TYPE_7__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 8
  br label %54

54:                                               ; preds = %52, %49, %42
  br label %55

55:                                               ; preds = %54, %17
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = icmp eq %struct.TYPE_7__* %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @showlinks, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %59, %55
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = icmp eq %struct.TYPE_7__* %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = icmp eq %struct.TYPE_7__* %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @glColor4f(i32 0, i32 0, i32 1, float 0x3FD99999A0000000)
  br label %81

72:                                               ; preds = %66, %62
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = icmp eq %struct.TYPE_7__* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @glColor4f(i32 0, i32 0, i32 1, float 0x3FC99999A0000000)
  br label %80

78:                                               ; preds = %72
  %79 = call i32 @glColor4f(i32 0, i32 0, i32 1, float 0x3FB99999A0000000)
  br label %80

80:                                               ; preds = %78, %76
  br label %81

81:                                               ; preds = %80, %70
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @glRectf(i32 %83, i32 %85, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %81, %59
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 2), align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = icmp eq %struct.TYPE_7__* %92, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %91
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 1), align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %127, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui, i32 0, i32 0), align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = icmp eq %struct.TYPE_7__* %99, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %98
  %103 = load i32, i32* @ctx, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @fz_is_external_link(i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @open_browser(i32 %112)
  br label %125

114:                                              ; preds = %102
  %115 = load i32, i32* @ctx, align 4
  %116 = load i32, i32* @doc, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @fz_resolve_link(i32 %115, i32 %116, i32 %119, float* %5, float* %6)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load float, float* %5, align 4
  %123 = load float, float* %6, align 4
  %124 = call i32 @jump_to_location_xy(i32 %121, float %122, float %123)
  br label %125

125:                                              ; preds = %114, %109
  br label %126

126:                                              ; preds = %125, %98
  br label %127

127:                                              ; preds = %126, %95, %91
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %2, align 8
  br label %14

131:                                              ; preds = %14
  %132 = load i32, i32* @GL_BLEND, align 4
  %133 = call i32 @glDisable(i32 %132)
  ret void
}

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

declare dso_local { i64, i64 } @fz_irect_from_rect(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ui_mouse_inside(i64, i64) #1

declare dso_local i32 @glColor4f(i32, i32, i32, float) #1

declare dso_local i32 @glRectf(i32, i32, i32, i32) #1

declare dso_local i64 @fz_is_external_link(i32, i32) #1

declare dso_local i32 @open_browser(i32) #1

declare dso_local i32 @fz_resolve_link(i32, i32, i32, float*, float*) #1

declare dso_local i32 @jump_to_location_xy(i32, float, float) #1

declare dso_local i32 @glDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
