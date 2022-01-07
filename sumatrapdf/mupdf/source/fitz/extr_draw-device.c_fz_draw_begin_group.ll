; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_begin_group.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_begin_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, float, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32*, i32* }

@fz_default_color_params = common dso_local global i32 0, align 4
@FZ_BLEND_KNOCKOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"group\00", align 1
@FZ_BLEND_ISOLATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32, i32, i32, float)* @fz_draw_begin_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_begin_group(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float %7, float* %16, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %17, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %30
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %20, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %21, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %49 = load i32, i32* @fz_default_color_params, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.TYPE_14__* @push_group_for_separations(i32* %47, %struct.TYPE_15__* %48, i32 %49, i32 %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %20, align 8
  br label %54

54:                                               ; preds = %46, %41, %8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32* @fz_default_colorspace(i32* %58, i32 %61, i32* %62)
  store i32* %63, i32** %21, align 8
  br label %64

64:                                               ; preds = %57, %54
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %74 = call i32 @fz_knockout_begin(i32* %72, %struct.TYPE_15__* %73)
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %78 = call %struct.TYPE_14__* @push_stack(i32* %76, %struct.TYPE_15__* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %20, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fz_transform_rect(i32 %79, i32 %82)
  store i32 %83, i32* %22, align 4
  %84 = load i32, i32* %22, align 4
  %85 = call i32 @fz_irect_from_rect(i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @fz_intersect_irect(i32 %85, i32 %88)
  store i32 %89, i32* %18, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %13, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %21, align 8
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %75
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %75
  %110 = phi i1 [ true, %75 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  %112 = call i8* @fz_new_pixmap_with_bbox(i32* %90, i32* %91, i32 %92, i32* %98, i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %113, %struct.TYPE_13__** %19, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 5
  store %struct.TYPE_13__* %113, %struct.TYPE_13__** %116, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %122 = call i32 @fz_clear_pixmap(i32* %120, %struct.TYPE_13__* %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %125, align 8
  br label %151

126:                                              ; preds = %109
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @fz_copy_pixmap_rect(i32* %127, %struct.TYPE_13__* %128, %struct.TYPE_13__* %132, i32 %133, i32 %136)
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %18, align 4
  %140 = call i8* @fz_new_pixmap_with_bbox(i32* %138, i32* null, i32 %139, i32* null, i32 1)
  %141 = bitcast i8* %140 to %struct.TYPE_13__*
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** %144, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = call i32 @fz_clear_pixmap(i32* %145, %struct.TYPE_13__* %149)
  br label %151

151:                                              ; preds = %126, %119
  %152 = load float, float* %16, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store float %152, float* %155, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i64 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %151
  %164 = load i32, i32* @FZ_BLEND_ISOLATED, align 4
  br label %166

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %165, %163
  %167 = phi i32 [ %164, %163 ], [ 0, %165 ]
  %168 = or i32 %160, %167
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  br label %174

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ]
  %176 = or i32 %168, %175
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  ret void
}

declare dso_local %struct.TYPE_14__* @push_group_for_separations(i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32* @fz_default_colorspace(i32*, i32, i32*) #1

declare dso_local i32 @fz_knockout_begin(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @push_stack(i32*, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

declare dso_local i32 @fz_intersect_irect(i32, i32) #1

declare dso_local i32 @fz_irect_from_rect(i32) #1

declare dso_local i8* @fz_new_pixmap_with_bbox(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @fz_clear_pixmap(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @fz_copy_pixmap_rect(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
