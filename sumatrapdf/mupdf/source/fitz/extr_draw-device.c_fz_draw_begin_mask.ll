; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_begin_mask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_begin_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32*, float*, i32)* @fz_draw_begin_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_begin_mask(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, float* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store float* %5, float** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %15, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %28 = call %struct.TYPE_7__* @push_stack(i32* %26, %struct.TYPE_8__* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %18, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %19, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %20, align 8
  store i32* null, i32** %22, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %7
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_7__* @push_group_for_separations(i32* %45, %struct.TYPE_8__* %46, i32 %47, i32 %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %18, align 8
  br label %52

52:                                               ; preds = %44, %39, %7
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = call i32* @fz_default_colorspace(i32* %56, i32 %59, i32* %60)
  store i32* %61, i32** %22, align 8
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @fz_transform_rect(i32 %63, i32 %66)
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = call i32 @fz_irect_from_rect(i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @fz_intersect_irect(i32 %69, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %62
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32* @fz_device_gray(i32* %81)
  %83 = load i32, i32* %17, align 4
  %84 = call i32* @fz_new_pixmap_with_bbox(i32* %80, i32* %82, i32 %83, i32* null, i32 0)
  store i32* %84, i32** %16, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store i32* %84, i32** %87, align 8
  br label %95

88:                                               ; preds = %62
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32* @fz_new_pixmap_with_bbox(i32* %89, i32* null, i32 %90, i32* null, i32 1)
  store i32* %91, i32** %16, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i32* %91, i32** %94, align 8
  br label %95

95:                                               ; preds = %88, %79
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  store i32* null, i32** %19, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  store i32* null, i32** %20, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %113
  %117 = load i32*, i32** %22, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32*, i32** %8, align 8
  %121 = call i32* @fz_device_gray(i32* %120)
  store i32* %121, i32** %22, align 8
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32*, i32** %8, align 8
  %124 = load i32*, i32** %22, align 8
  %125 = load float*, float** %13, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = call i32* @fz_device_gray(i32* %126)
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @fz_convert_color(i32* %123, i32* %124, float* %125, i32* %127, float* %23, i32* null, i32 %128)
  %130 = load i32*, i32** %8, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = load float, float* %23, align 4
  %133 = fmul float %132, 2.550000e+02
  %134 = fptosi float %133 to i32
  %135 = call i32 @fz_clear_pixmap_with_value(i32* %130, i32* %131, i32 %134)
  %136 = load i32*, i32** %19, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %122
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %19, align 8
  %141 = call i32 @fz_clear_pixmap_with_value(i32* %139, i32* %140, i32 255)
  br label %142

142:                                              ; preds = %138, %122
  %143 = load i32*, i32** %20, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32*, i32** %8, align 8
  %147 = load i32*, i32** %20, align 8
  %148 = call i32 @fz_clear_pixmap_with_value(i32* %146, i32* %147, i32 255)
  br label %149

149:                                              ; preds = %145, %142
  br label %168

150:                                              ; preds = %113
  %151 = load i32*, i32** %8, align 8
  %152 = load i32*, i32** %16, align 8
  %153 = call i32 @fz_clear_pixmap(i32* %151, i32* %152)
  %154 = load i32*, i32** %19, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32*, i32** %8, align 8
  %158 = load i32*, i32** %19, align 8
  %159 = call i32 @fz_clear_pixmap(i32* %157, i32* %158)
  br label %160

160:                                              ; preds = %156, %150
  %161 = load i32*, i32** %20, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32*, i32** %8, align 8
  %165 = load i32*, i32** %20, align 8
  %166 = call i32 @fz_clear_pixmap(i32* %164, i32* %165)
  br label %167

167:                                              ; preds = %163, %160
  br label %168

168:                                              ; preds = %167, %149
  %169 = load i32, i32* %17, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @push_stack(i32*, %struct.TYPE_8__*, i8*) #1

declare dso_local %struct.TYPE_7__* @push_group_for_separations(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32* @fz_default_colorspace(i32*, i32, i32*) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

declare dso_local i32 @fz_intersect_irect(i32, i32) #1

declare dso_local i32 @fz_irect_from_rect(i32) #1

declare dso_local i32* @fz_new_pixmap_with_bbox(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32* @fz_device_gray(i32*) #1

declare dso_local i32 @fz_convert_color(i32*, i32*, float*, i32*, float*, i32*, i32) #1

declare dso_local i32 @fz_clear_pixmap_with_value(i32*, i32*, i32) #1

declare dso_local i32 @fz_clear_pixmap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
