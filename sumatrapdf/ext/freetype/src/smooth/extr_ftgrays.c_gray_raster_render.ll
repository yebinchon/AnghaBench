; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/smooth/extr_ftgrays.c_gray_raster_render.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/smooth/extr_ftgrays.c_gray_raster_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i32*, i8*, %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i32, i64*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__, i32*, i64, %struct.TYPE_11__*, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }

@Invalid_Argument = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_AA = common dso_local global i32 0, align 4
@Invalid_Mode = common dso_local global i32 0, align 4
@Invalid_Outline = common dso_local global i32 0, align 4
@ras = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@FT_RASTER_FLAG_DIRECT = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_CLIP = common dso_local global i32 0, align 4
@RAS_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @gray_raster_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gray_raster_render(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca [1 x i32], align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @Invalid_Argument, align 4
  %21 = call i32 @FT_THROW(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %212

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FT_RASTER_FLAG_AA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @Invalid_Mode, align 4
  %31 = call i32 @FT_THROW(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %212

32:                                               ; preds = %22
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @Invalid_Outline, align 4
  %37 = call i32 @FT_THROW(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %212

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  store i32 0, i32* %3, align 4
  br label %212

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* @Invalid_Outline, align 4
  %61 = call i32 @FT_THROW(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %212

62:                                               ; preds = %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %68, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  %77 = icmp ne i64 %65, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load i32, i32* @Invalid_Outline, align 4
  %80 = call i32 @FT_THROW(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %212

81:                                               ; preds = %62
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = bitcast %struct.TYPE_10__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 7) to i8*), i8* align 8 %83, i64 32, i1 false)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FT_RASTER_FLAG_DIRECT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %81
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %212

96:                                               ; preds = %90
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 5), align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  store i32* %103, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 4), align 8
  br label %157

104:                                              ; preds = %81
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = icmp ne %struct.TYPE_11__* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @Invalid_Argument, align 4
  %109 = call i32 @FT_THROW(i32 %108)
  store i32 %109, i32* %3, align 4
  br label %212

110:                                              ; preds = %104
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115, %110
  store i32 0, i32* %3, align 4
  br label %212

121:                                              ; preds = %115
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @Invalid_Argument, align 4
  %128 = call i32 @FT_THROW(i32 %127)
  store i32 %128, i32* %3, align 4
  br label %212

129:                                              ; preds = %121
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 6, i32 1), align 8
  br label %153

138:                                              ; preds = %129
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = mul i32 %145, %149
  %151 = zext i32 %150 to i64
  %152 = add nsw i64 %141, %151
  store i64 %152, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 6, i32 1), align 8
  br label %153

153:                                              ; preds = %138, %134
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 6, i32 0), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 4), align 8
  br label %157

157:                                              ; preds = %153, %96
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @FT_RASTER_FLAG_DIRECT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %157
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @FT_RASTER_FLAG_CLIP, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = bitcast %struct.TYPE_12__* %8 to i8*
  %175 = bitcast %struct.TYPE_12__* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 32, i1 false)
  br label %192

176:                                              ; preds = %164, %157
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i64 0, i64* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i8*
  %183 = ptrtoint i8* %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i64 %183, i64* %184, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = ptrtoint i8* %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  store i64 %190, i64* %191, align 8
  br label %192

192:                                              ; preds = %176, %171
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 0), align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 1), align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 2), align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 3), align 8
  %201 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 2), align 8
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 0), align 8
  %203 = icmp sle i64 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %192
  %205 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 3), align 8
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ras, i32 0, i32 1), align 8
  %207 = icmp sle i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204, %192
  store i32 0, i32* %3, align 4
  br label %212

209:                                              ; preds = %204
  %210 = load i32, i32* @RAS_VAR, align 4
  %211 = call i32 @gray_convert_glyph(i32 %210)
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %209, %208, %126, %120, %107, %95, %78, %59, %48, %35, %29, %19
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @FT_THROW(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gray_convert_glyph(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
