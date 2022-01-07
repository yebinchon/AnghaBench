; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Phags_pa.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Phags_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Number of Glyphs and Chars need to match at the beginning\0A\00", align 1
@phags_pa_START = common dso_local global i64 0, align 8
@phags_pa_END = common dso_local global i64 0, align 8
@phags_pa_CANDRABINDU = common dso_local global i64 0, align 8
@Xm = common dso_local global i32 0, align 4
@Xr = common dso_local global i32 0, align 4
@Xl = common dso_local global i32 0, align 4
@Xn = common dso_local global i32 0, align 4
@contextual_features = common dso_local global i32* null, align 8
@GSUB_E_NOGLYPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, %struct.TYPE_9__*, i64*, i32, i32*, i32*, i32, i32*)* @ContextualShape_Phags_pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ContextualShape_Phags_pa(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, i64* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %12, align 8
  store i64* %3, i64** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %9
  %36 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %250

37:                                               ; preds = %9
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  br label %49

48:                                               ; preds = %42, %37
  store i32 -1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = call i32 @load_ot_tables(i32 %50, %struct.TYPE_8__* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %250

58:                                               ; preds = %49
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32* @heap_alloc(i32 %62)
  store i32* %63, i32** %19, align 8
  store i32 0, i32* %22, align 4
  br label %64

64:                                               ; preds = %167, %58
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %170

68:                                               ; preds = %64
  %69 = load i64*, i64** %13, align 8
  %70 = load i32, i32* %22, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @phags_pa_START, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %161

76:                                               ; preds = %68
  %77 = load i64*, i64** %13, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @phags_pa_END, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %161

84:                                               ; preds = %76
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i64*, i64** %13, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i64 @neighbour_char(i32 %85, i32 %86, i64* %87, i32 %88)
  store i64 %89, i64* %25, align 8
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i64*, i64** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i64 @neighbour_char(i32 %90, i32 %91, i64* %92, i32 %93)
  store i64 %94, i64* %26, align 8
  %95 = load i64, i64* %25, align 8
  %96 = load i64, i64* @phags_pa_CANDRABINDU, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %84
  %99 = load i64, i64* %25, align 8
  %100 = load i64, i64* @phags_pa_START, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i64, i64* %25, align 8
  %104 = load i64, i64* @phags_pa_END, align 8
  %105 = icmp sle i64 %103, %104
  br label %106

106:                                              ; preds = %102, %98, %84
  %107 = phi i1 [ false, %98 ], [ false, %84 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %27, align 4
  %109 = load i64, i64* %26, align 8
  %110 = load i64, i64* @phags_pa_CANDRABINDU, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load i64, i64* %26, align 8
  %114 = load i64, i64* @phags_pa_START, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i64, i64* %26, align 8
  %118 = load i64, i64* @phags_pa_END, align 8
  %119 = icmp sle i64 %117, %118
  br label %120

120:                                              ; preds = %116, %112, %106
  %121 = phi i1 [ false, %112 ], [ false, %106 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %28, align 4
  %123 = load i32, i32* %27, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i32, i32* %28, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* @Xm, align 4
  %130 = load i32*, i32** %19, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  br label %160

134:                                              ; preds = %125, %120
  %135 = load i32, i32* %27, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* @Xr, align 4
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %22, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  br label %159

143:                                              ; preds = %134
  %144 = load i32, i32* %28, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* @Xl, align 4
  %148 = load i32*, i32** %19, align 8
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %158

152:                                              ; preds = %143
  %153 = load i32, i32* @Xn, align 4
  %154 = load i32*, i32** %19, align 8
  %155 = load i32, i32* %22, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %152, %146
  br label %159

159:                                              ; preds = %158, %137
  br label %160

160:                                              ; preds = %159, %128
  br label %166

161:                                              ; preds = %76, %68
  %162 = load i32*, i32** %19, align 8
  %163 = load i32, i32* %22, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 -1, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %160
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %22, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %22, align 4
  br label %64

170:                                              ; preds = %64
  %171 = load i32, i32* %21, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %14, align 4
  %176 = sub nsw i32 %175, 1
  store i32 %176, i32* %24, align 4
  store i32 %176, i32* %23, align 4
  br label %177

177:                                              ; preds = %174, %173
  br label %178

178:                                              ; preds = %246, %177
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i32, i32* %23, align 4
  %184 = icmp sge i32 %183, 0
  br label %185

185:                                              ; preds = %182, %178
  %186 = phi i1 [ false, %178 ], [ %184, %182 ]
  br i1 %186, label %187, label %247

187:                                              ; preds = %185
  %188 = load i32*, i32** %19, align 8
  %189 = load i32, i32* %23, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %239

194:                                              ; preds = %187
  %195 = load i32*, i32** %16, align 8
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %30, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %200 = load i32*, i32** %15, align 8
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* %21, align 4
  %203 = load i32*, i32** %16, align 8
  %204 = load i32*, i32** @contextual_features, align 8
  %205 = load i32*, i32** %19, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %204, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @apply_GSUB_feature_to_glyph(i32 %197, %struct.TYPE_9__* %198, %struct.TYPE_8__* %199, i32* %200, i32 %201, i32 %202, i32* %203, i32 %212)
  store i32 %213, i32* %29, align 4
  %214 = load i32, i32* %29, align 4
  %215 = load i32, i32* @GSUB_E_NOGLYPH, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %194
  %218 = load i32, i32* %29, align 4
  %219 = load i32*, i32** %16, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %30, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load i32*, i32** %18, align 8
  %226 = call i32 @UpdateClusters(i32 %218, i32 %222, i32 %223, i32 %224, i32* %225)
  %227 = load i32, i32* %29, align 4
  store i32 %227, i32* %24, align 4
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* %23, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %23, align 4
  br label %238

231:                                              ; preds = %194
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* %23, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %23, align 4
  %235 = load i32, i32* %21, align 4
  %236 = load i32, i32* %24, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %24, align 4
  br label %238

238:                                              ; preds = %231, %217
  br label %246

239:                                              ; preds = %187
  %240 = load i32, i32* %21, align 4
  %241 = load i32, i32* %23, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %23, align 4
  %243 = load i32, i32* %21, align 4
  %244 = load i32, i32* %24, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %24, align 4
  br label %246

246:                                              ; preds = %239, %238
  br label %178

247:                                              ; preds = %185
  %248 = load i32*, i32** %19, align 8
  %249 = call i32 @heap_free(i32* %248)
  br label %250

250:                                              ; preds = %247, %57, %35
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @load_ot_tables(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i64 @neighbour_char(i32, i32, i64*, i32) #1

declare dso_local i32 @apply_GSUB_feature_to_glyph(i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @UpdateClusters(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
