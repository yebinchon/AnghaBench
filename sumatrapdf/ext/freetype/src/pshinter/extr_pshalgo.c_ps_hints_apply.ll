; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshalgo.c_ps_hints_apply.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshalgo.c_ps_hints_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_36__*, i32*, i8*, i8*, i8* }
%struct.TYPE_36__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_35__ = type { i64, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FT_RENDER_MODE_MONO = common dso_local global i64 0, align 8
@FT_RENDER_MODE_LCD = common dso_local global i64 0, align 8
@FT_RENDER_MODE_LCD_V = common dso_local global i64 0, align 8
@FT_RENDER_MODE_LIGHT = common dso_local global i64 0, align 8
@ps_debug_glyph = common dso_local global %struct.TYPE_32__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ps_hints_apply(i32 %0, %struct.TYPE_35__* %1, %struct.TYPE_33__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_32__, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_32__* %10, %struct.TYPE_32__** %11, align 8
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %4
  %33 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %33, i64* %5, align 8
  br label %203

34:                                               ; preds = %27
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %36 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %39 = call i64 @psh_glyph_init(%struct.TYPE_32__* %35, %struct.TYPE_35__* %36, i32 %37, %struct.TYPE_33__* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %199

43:                                               ; preds = %34
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_36__*, %struct.TYPE_36__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i64 0
  store %struct.TYPE_34__* %49, %struct.TYPE_34__** %14, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_36__*, %struct.TYPE_36__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i64 1
  store %struct.TYPE_34__* %55, %struct.TYPE_34__** %15, align 8
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %16, align 8
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %17, align 8
  %62 = load i64, i64* %16, align 8
  store i64 %62, i64* %18, align 8
  %63 = load i64, i64* %17, align 8
  store i64 %63, i64* %19, align 8
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %22, align 8
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %17, align 8
  %73 = call i64 @FT_MulFix(i32 %71, i64 %72)
  store i64 %73, i64* %20, align 8
  %74 = load i64, i64* %20, align 8
  %75 = call i64 @FT_PIX_ROUND(i64 %74)
  store i64 %75, i64* %21, align 8
  %76 = load i64, i64* %21, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %43
  %79 = load i64, i64* %20, align 8
  %80 = load i64, i64* %21, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load i64, i64* @TRUE, align 8
  store i64 %83, i64* %22, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %21, align 8
  %86 = load i64, i64* %20, align 8
  %87 = call i64 @FT_MulDiv(i64 %84, i64 %85, i64 %86)
  store i64 %87, i64* %17, align 8
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* %20, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load i64, i64* %16, align 8
  %93 = sdiv i64 %92, 50
  %94 = load i64, i64* %16, align 8
  %95 = sub nsw i64 %94, %93
  store i64 %95, i64* %16, align 8
  br label %96

96:                                               ; preds = %91, %82
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_36__*, %struct.TYPE_36__** %98, align 8
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %17, align 8
  %102 = call i32 @psh_globals_set_scale(%struct.TYPE_36__* %99, i64 %100, i64 %101, i32 0, i32 0)
  br label %103

103:                                              ; preds = %96, %78, %43
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @FT_RENDER_MODE_MONO, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @FT_RENDER_MODE_LCD, align 8
  %114 = icmp eq i64 %112, %113
  br label %115

115:                                              ; preds = %111, %103
  %116 = phi i1 [ true, %103 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = call i8* @FT_BOOL(i32 %117)
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @FT_RENDER_MODE_MONO, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %115
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @FT_RENDER_MODE_LCD_V, align 8
  %127 = icmp eq i64 %125, %126
  br label %128

128:                                              ; preds = %124, %115
  %129 = phi i1 [ true, %115 ], [ %127, %124 ]
  %130 = zext i1 %129 to i32
  %131 = call i8* @FT_BOOL(i32 %130)
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @FT_RENDER_MODE_LIGHT, align 8
  %136 = icmp ne i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i8* @FT_BOOL(i32 %137)
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %195, %128
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %198

144:                                              ; preds = %141
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @psh_glyph_load_points(%struct.TYPE_32__* %145, i32 %146)
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %149 = call i32 @psh_glyph_compute_extrema(%struct.TYPE_32__* %148)
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %161 = call i32 @psh_hint_table_align_hints(i32* %155, %struct.TYPE_36__* %158, i32 %159, %struct.TYPE_32__* %160)
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @psh_glyph_find_strong_points(%struct.TYPE_32__* %162, i32 %163)
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %144
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %171 = call i32 @psh_glyph_find_blue_points(%struct.TYPE_29__* %169, %struct.TYPE_32__* %170)
  br label %172

172:                                              ; preds = %167, %144
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @psh_glyph_interpolate_strong_points(%struct.TYPE_32__* %173, i32 %174)
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @psh_glyph_interpolate_normal_points(%struct.TYPE_32__* %176, i32 %177)
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @psh_glyph_interpolate_other_points(%struct.TYPE_32__* %179, i32 %180)
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @psh_glyph_save_points(%struct.TYPE_32__* %182, i32 %183)
  %185 = load i64, i64* %22, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %172
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %189, align 8
  %191 = load i64, i64* %18, align 8
  %192 = load i64, i64* %19, align 8
  %193 = call i32 @psh_globals_set_scale(%struct.TYPE_36__* %190, i64 %191, i64 %192, i32 0, i32 0)
  br label %194

194:                                              ; preds = %187, %172
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %13, align 4
  br label %141

198:                                              ; preds = %141
  br label %199

199:                                              ; preds = %198, %42
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %201 = call i32 @psh_glyph_done(%struct.TYPE_32__* %200)
  %202 = load i64, i64* %12, align 8
  store i64 %202, i64* %5, align 8
  br label %203

203:                                              ; preds = %199, %32
  %204 = load i64, i64* %5, align 8
  ret i64 %204
}

declare dso_local i64 @psh_glyph_init(%struct.TYPE_32__*, %struct.TYPE_35__*, i32, %struct.TYPE_33__*) #1

declare dso_local i64 @FT_MulFix(i32, i64) #1

declare dso_local i64 @FT_PIX_ROUND(i64) #1

declare dso_local i64 @FT_MulDiv(i64, i64, i64) #1

declare dso_local i32 @psh_globals_set_scale(%struct.TYPE_36__*, i64, i64, i32, i32) #1

declare dso_local i8* @FT_BOOL(i32) #1

declare dso_local i32 @psh_glyph_load_points(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @psh_glyph_compute_extrema(%struct.TYPE_32__*) #1

declare dso_local i32 @psh_hint_table_align_hints(i32*, %struct.TYPE_36__*, i32, %struct.TYPE_32__*) #1

declare dso_local i32 @psh_glyph_find_strong_points(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @psh_glyph_find_blue_points(%struct.TYPE_29__*, %struct.TYPE_32__*) #1

declare dso_local i32 @psh_glyph_interpolate_strong_points(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @psh_glyph_interpolate_normal_points(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @psh_glyph_interpolate_other_points(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @psh_glyph_save_points(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @psh_glyph_done(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
