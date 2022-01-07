; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/raster/extr_ftrend1.c_ft_raster1_render.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/raster/extr_ftrend1.c_ft_raster1_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32 (i32, %struct.TYPE_18__*)*, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_20__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@Invalid_Argument = common dso_local global i32 0, align 4
@FT_RENDER_MODE_MONO = common dso_local global i64 0, align 8
@Cannot_Render_Glyph = common dso_local global i32 0, align 4
@FT_GLYPH_OWN_BITMAP = common dso_local global i32 0, align 4
@Raster_Overflow = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_DEFAULT = common dso_local global i32 0, align 4
@FT_GLYPH_FORMAT_BITMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*, i64, %struct.TYPE_16__*)* @ft_raster1_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_raster1_render(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, i64 %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %17 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 5
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %12, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @Invalid_Argument, align 4
  %35 = call i32 @FT_THROW(i32 %34)
  store i32 %35, i32* %10, align 4
  br label %151

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @FT_RENDER_MODE_MONO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @Cannot_Render_Glyph, align 4
  %42 = call i32 @FT_THROW(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %196

43:                                               ; preds = %36
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @FT_FREE(i32 %55)
  %57 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %58
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %52, %43
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = call i64 @ft_glyphslot_preset_bitmap(%struct.TYPE_19__* %66, i64 %67, %struct.TYPE_16__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @Raster_Overflow, align 4
  %73 = call i32 @FT_THROW(i32 %72)
  store i32 %73, i32* %10, align 4
  br label %151

74:                                               ; preds = %65
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @FT_ALLOC_MULT(i32 %77, i64 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %151

87:                                               ; preds = %74
  %88 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 0, %97
  %99 = mul nsw i32 %98, 64
  store i32 %99, i32* %14, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  %108 = mul nsw i32 %107, 64
  store i32 %108, i32* %15, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %110 = icmp ne %struct.TYPE_16__* %109, null
  br i1 %110, label %111, label %126

111:                                              ; preds = %87
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %14, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %111, %87
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129, %126
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @FT_Outline_Translate(i32* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  store %struct.TYPE_20__* %138, %struct.TYPE_20__** %139, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  store i32* %140, i32** %141, align 8
  %142 = load i32, i32* @FT_RASTER_FLAG_DEFAULT, align 4
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  store i32 %142, i32* %143, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = load i32 (i32, %struct.TYPE_18__*)*, i32 (i32, %struct.TYPE_18__*)** %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 %146(i32 %149, %struct.TYPE_18__* %16)
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %137, %86, %71, %33
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* @FT_GLYPH_FORMAT_BITMAP, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %181

158:                                              ; preds = %151
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %158
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @FT_FREE(i32 %170)
  %172 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, %173
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %167, %158
  br label %181

181:                                              ; preds = %180, %154
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %184, %181
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sub nsw i32 0, %189
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 0, %191
  %193 = call i32 @FT_Outline_Translate(i32* %188, i32 %190, i32 %192)
  br label %194

194:                                              ; preds = %187, %184
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %194, %40
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i32 @FT_FREE(i32) #1

declare dso_local i64 @ft_glyphslot_preset_bitmap(%struct.TYPE_19__*, i64, %struct.TYPE_16__*) #1

declare dso_local i64 @FT_ALLOC_MULT(i32, i64, i32) #1

declare dso_local i32 @FT_Outline_Translate(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
