; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_decode_mmr_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_decode_mmr_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@MINUS1 = common dso_local global i32 0, align 4
@jbig2_mmr_white_decode = common dso_local global i32 0, align 4
@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to decode white H run\00", align 1
@jbig2_mmr_black_decode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to decode black H run\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ignoring negative black H run\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"ignoring negative white H run\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ignoring negative P run\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"ignoring negative V(0) run\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"ignoring negative VR(1) run\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ignoring negative VR(2) run\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ignoring negative VR(3) run\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ignoring negative VL(1) run\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"ignoring negative VL(2) run\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"ignoring negative VL(3) run\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i32*, i32*)* @jbig2_decode_mmr_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_mmr_line(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @MINUS1, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %5, %626
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @MINUS1, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %627

36:                                               ; preds = %29, %22
  %37 = load i32, i32* %18, align 4
  %38 = ashr i32 %37, 29
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %191

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %41, i32 3)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @MINUS1, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %17, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %120

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = load i32, i32* @jbig2_mmr_white_decode, align 4
  %54 = call i32 @jbig2_decode_get_run(i32* %51, %struct.TYPE_5__* %52, i32 %53, i32 8)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %60 = call i32 @jbig2_error(i32* %58, i32 %59, i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %60, i32* %6, align 4
  br label %628

61:                                               ; preds = %50
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = load i32, i32* @jbig2_mmr_black_decode, align 4
  %65 = call i32 @jbig2_decode_get_run(i32* %62, %struct.TYPE_5__* %63, i32 %64, i32 7)
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %71 = call i32 @jbig2_error(i32* %69, i32 %70, i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %71, i32* %6, align 4
  br label %628

72:                                               ; preds = %61
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %84, %72
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %105 = call i32 @jbig2_error(i32* %103, i32 %104, i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %102, %98
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @jbig2_set_bits(i32* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %107
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %12, align 4
  br label %190

120:                                              ; preds = %47
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = load i32, i32* @jbig2_mmr_black_decode, align 4
  %124 = call i32 @jbig2_decode_get_run(i32* %121, %struct.TYPE_5__* %122, i32 %123, i32 7)
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %130 = call i32 @jbig2_error(i32* %128, i32 %129, i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %130, i32* %6, align 4
  br label %628

131:                                              ; preds = %120
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %134 = load i32, i32* @jbig2_mmr_white_decode, align 4
  %135 = call i32 @jbig2_decode_get_run(i32* %132, %struct.TYPE_5__* %133, i32 %134, i32 8)
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %19, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %141 = call i32 @jbig2_error(i32* %139, i32 %140, i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %141, i32* %6, align 4
  br label %628

142:                                              ; preds = %131
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %149, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %142
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %13, align 4
  br label %158

158:                                              ; preds = %154, %142
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %159, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %164, %158
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %175 = call i32 @jbig2_error(i32* %173, i32 %174, i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %172, %168
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @jbig2_set_bits(i32* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %177
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %12, align 4
  br label %190

190:                                              ; preds = %188, %118
  br label %626

191:                                              ; preds = %36
  %192 = load i32, i32* %18, align 4
  %193 = ashr i32 %192, 28
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %239

195:                                              ; preds = %191
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %197 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %196, i32 4)
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %17, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 @jbig2_find_changing_element_of_color(i32* %198, i32 %199, i32 %202, i32 %206)
  store i32 %207, i32* %15, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @jbig2_find_changing_element(i32* %208, i32 %209, i32 %212)
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %237

216:                                              ; preds = %195
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %12, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %223 = call i32 @jbig2_error(i32* %221, i32 %222, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %220, %216
  %226 = load i32, i32* %12, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %225
  %232 = load i32*, i32** %10, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @jbig2_set_bits(i32* %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %231, %225
  br label %237

237:                                              ; preds = %236, %195
  %238 = load i32, i32* %16, align 4
  store i32 %238, i32* %12, align 4
  br label %625

239:                                              ; preds = %191
  %240 = load i32, i32* %18, align 4
  %241 = ashr i32 %240, 31
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %285

243:                                              ; preds = %239
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %245 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %244, i32 1)
  %246 = load i32*, i32** %9, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %17, align 4
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = call i32 @jbig2_find_changing_element_of_color(i32* %246, i32 %247, i32 %250, i32 %254)
  store i32 %255, i32* %15, align 4
  %256 = load i32, i32* %17, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %279

258:                                              ; preds = %243
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %258
  %263 = load i32*, i32** %7, align 8
  %264 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %265 = call i32 @jbig2_error(i32* %263, i32 %264, i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %266 = load i32, i32* %12, align 4
  store i32 %266, i32* %15, align 4
  br label %267

267:                                              ; preds = %262, %258
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %267
  %274 = load i32*, i32** %10, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @jbig2_set_bits(i32* %274, i32 %275, i32 %276)
  br label %278

278:                                              ; preds = %273, %267
  br label %279

279:                                              ; preds = %278, %243
  %280 = load i32, i32* %15, align 4
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %17, align 4
  %282 = icmp ne i32 %281, 0
  %283 = xor i1 %282, true
  %284 = zext i1 %283 to i32
  store i32 %284, i32* %17, align 4
  br label %624

285:                                              ; preds = %239
  %286 = load i32, i32* %18, align 4
  %287 = ashr i32 %286, 29
  %288 = icmp eq i32 %287, 3
  br i1 %288, label %289, label %341

289:                                              ; preds = %285
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %291 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %290, i32 3)
  %292 = load i32*, i32** %9, align 8
  %293 = load i32, i32* %12, align 4
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %17, align 4
  %298 = icmp ne i32 %297, 0
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  %301 = call i32 @jbig2_find_changing_element_of_color(i32* %292, i32 %293, i32 %296, i32 %300)
  store i32 %301, i32* %15, align 4
  %302 = load i32, i32* %15, align 4
  %303 = add nsw i32 %302, 1
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp sle i32 %303, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %289
  %309 = load i32, i32* %15, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %15, align 4
  br label %311

311:                                              ; preds = %308, %289
  %312 = load i32, i32* %17, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %335

314:                                              ; preds = %311
  %315 = load i32, i32* %15, align 4
  %316 = load i32, i32* %12, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = load i32*, i32** %7, align 8
  %320 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %321 = call i32 @jbig2_error(i32* %319, i32 %320, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %322 = load i32, i32* %12, align 4
  store i32 %322, i32* %15, align 4
  br label %323

323:                                              ; preds = %318, %314
  %324 = load i32, i32* %12, align 4
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %323
  %330 = load i32*, i32** %10, align 8
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %15, align 4
  %333 = call i32 @jbig2_set_bits(i32* %330, i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %329, %323
  br label %335

335:                                              ; preds = %334, %311
  %336 = load i32, i32* %15, align 4
  store i32 %336, i32* %12, align 4
  %337 = load i32, i32* %17, align 4
  %338 = icmp ne i32 %337, 0
  %339 = xor i1 %338, true
  %340 = zext i1 %339 to i32
  store i32 %340, i32* %17, align 4
  br label %623

341:                                              ; preds = %285
  %342 = load i32, i32* %18, align 4
  %343 = ashr i32 %342, 26
  %344 = icmp eq i32 %343, 3
  br i1 %344, label %345, label %397

345:                                              ; preds = %341
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %347 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %346, i32 6)
  %348 = load i32*, i32** %9, align 8
  %349 = load i32, i32* %12, align 4
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %17, align 4
  %354 = icmp ne i32 %353, 0
  %355 = xor i1 %354, true
  %356 = zext i1 %355 to i32
  %357 = call i32 @jbig2_find_changing_element_of_color(i32* %348, i32 %349, i32 %352, i32 %356)
  store i32 %357, i32* %15, align 4
  %358 = load i32, i32* %15, align 4
  %359 = add nsw i32 %358, 2
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = icmp sle i32 %359, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %345
  %365 = load i32, i32* %15, align 4
  %366 = add nsw i32 %365, 2
  store i32 %366, i32* %15, align 4
  br label %367

367:                                              ; preds = %364, %345
  %368 = load i32, i32* %17, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %391

370:                                              ; preds = %367
  %371 = load i32, i32* %15, align 4
  %372 = load i32, i32* %12, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %379

374:                                              ; preds = %370
  %375 = load i32*, i32** %7, align 8
  %376 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %377 = call i32 @jbig2_error(i32* %375, i32 %376, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %378 = load i32, i32* %12, align 4
  store i32 %378, i32* %15, align 4
  br label %379

379:                                              ; preds = %374, %370
  %380 = load i32, i32* %12, align 4
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = icmp slt i32 %380, %383
  br i1 %384, label %385, label %390

385:                                              ; preds = %379
  %386 = load i32*, i32** %10, align 8
  %387 = load i32, i32* %12, align 4
  %388 = load i32, i32* %15, align 4
  %389 = call i32 @jbig2_set_bits(i32* %386, i32 %387, i32 %388)
  br label %390

390:                                              ; preds = %385, %379
  br label %391

391:                                              ; preds = %390, %367
  %392 = load i32, i32* %15, align 4
  store i32 %392, i32* %12, align 4
  %393 = load i32, i32* %17, align 4
  %394 = icmp ne i32 %393, 0
  %395 = xor i1 %394, true
  %396 = zext i1 %395 to i32
  store i32 %396, i32* %17, align 4
  br label %622

397:                                              ; preds = %341
  %398 = load i32, i32* %18, align 4
  %399 = ashr i32 %398, 25
  %400 = icmp eq i32 %399, 3
  br i1 %400, label %401, label %453

401:                                              ; preds = %397
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %403 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %402, i32 7)
  %404 = load i32*, i32** %9, align 8
  %405 = load i32, i32* %12, align 4
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %17, align 4
  %410 = icmp ne i32 %409, 0
  %411 = xor i1 %410, true
  %412 = zext i1 %411 to i32
  %413 = call i32 @jbig2_find_changing_element_of_color(i32* %404, i32 %405, i32 %408, i32 %412)
  store i32 %413, i32* %15, align 4
  %414 = load i32, i32* %15, align 4
  %415 = add nsw i32 %414, 3
  %416 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = icmp sle i32 %415, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %401
  %421 = load i32, i32* %15, align 4
  %422 = add nsw i32 %421, 3
  store i32 %422, i32* %15, align 4
  br label %423

423:                                              ; preds = %420, %401
  %424 = load i32, i32* %17, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %447

426:                                              ; preds = %423
  %427 = load i32, i32* %15, align 4
  %428 = load i32, i32* %12, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %435

430:                                              ; preds = %426
  %431 = load i32*, i32** %7, align 8
  %432 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %433 = call i32 @jbig2_error(i32* %431, i32 %432, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %434 = load i32, i32* %12, align 4
  store i32 %434, i32* %15, align 4
  br label %435

435:                                              ; preds = %430, %426
  %436 = load i32, i32* %12, align 4
  %437 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = icmp slt i32 %436, %439
  br i1 %440, label %441, label %446

441:                                              ; preds = %435
  %442 = load i32*, i32** %10, align 8
  %443 = load i32, i32* %12, align 4
  %444 = load i32, i32* %15, align 4
  %445 = call i32 @jbig2_set_bits(i32* %442, i32 %443, i32 %444)
  br label %446

446:                                              ; preds = %441, %435
  br label %447

447:                                              ; preds = %446, %423
  %448 = load i32, i32* %15, align 4
  store i32 %448, i32* %12, align 4
  %449 = load i32, i32* %17, align 4
  %450 = icmp ne i32 %449, 0
  %451 = xor i1 %450, true
  %452 = zext i1 %451 to i32
  store i32 %452, i32* %17, align 4
  br label %621

453:                                              ; preds = %397
  %454 = load i32, i32* %18, align 4
  %455 = ashr i32 %454, 29
  %456 = icmp eq i32 %455, 2
  br i1 %456, label %457, label %505

457:                                              ; preds = %453
  %458 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %459 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %458, i32 3)
  %460 = load i32*, i32** %9, align 8
  %461 = load i32, i32* %12, align 4
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %17, align 4
  %466 = icmp ne i32 %465, 0
  %467 = xor i1 %466, true
  %468 = zext i1 %467 to i32
  %469 = call i32 @jbig2_find_changing_element_of_color(i32* %460, i32 %461, i32 %464, i32 %468)
  store i32 %469, i32* %15, align 4
  %470 = load i32, i32* %15, align 4
  %471 = icmp sge i32 %470, 1
  br i1 %471, label %472, label %475

472:                                              ; preds = %457
  %473 = load i32, i32* %15, align 4
  %474 = sub nsw i32 %473, 1
  store i32 %474, i32* %15, align 4
  br label %475

475:                                              ; preds = %472, %457
  %476 = load i32, i32* %17, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %499

478:                                              ; preds = %475
  %479 = load i32, i32* %15, align 4
  %480 = load i32, i32* %12, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %487

482:                                              ; preds = %478
  %483 = load i32*, i32** %7, align 8
  %484 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %485 = call i32 @jbig2_error(i32* %483, i32 %484, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %486 = load i32, i32* %12, align 4
  store i32 %486, i32* %15, align 4
  br label %487

487:                                              ; preds = %482, %478
  %488 = load i32, i32* %12, align 4
  %489 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = icmp slt i32 %488, %491
  br i1 %492, label %493, label %498

493:                                              ; preds = %487
  %494 = load i32*, i32** %10, align 8
  %495 = load i32, i32* %12, align 4
  %496 = load i32, i32* %15, align 4
  %497 = call i32 @jbig2_set_bits(i32* %494, i32 %495, i32 %496)
  br label %498

498:                                              ; preds = %493, %487
  br label %499

499:                                              ; preds = %498, %475
  %500 = load i32, i32* %15, align 4
  store i32 %500, i32* %12, align 4
  %501 = load i32, i32* %17, align 4
  %502 = icmp ne i32 %501, 0
  %503 = xor i1 %502, true
  %504 = zext i1 %503 to i32
  store i32 %504, i32* %17, align 4
  br label %620

505:                                              ; preds = %453
  %506 = load i32, i32* %18, align 4
  %507 = ashr i32 %506, 26
  %508 = icmp eq i32 %507, 2
  br i1 %508, label %509, label %557

509:                                              ; preds = %505
  %510 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %511 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %510, i32 6)
  %512 = load i32*, i32** %9, align 8
  %513 = load i32, i32* %12, align 4
  %514 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %515 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* %17, align 4
  %518 = icmp ne i32 %517, 0
  %519 = xor i1 %518, true
  %520 = zext i1 %519 to i32
  %521 = call i32 @jbig2_find_changing_element_of_color(i32* %512, i32 %513, i32 %516, i32 %520)
  store i32 %521, i32* %15, align 4
  %522 = load i32, i32* %15, align 4
  %523 = icmp sge i32 %522, 2
  br i1 %523, label %524, label %527

524:                                              ; preds = %509
  %525 = load i32, i32* %15, align 4
  %526 = sub nsw i32 %525, 2
  store i32 %526, i32* %15, align 4
  br label %527

527:                                              ; preds = %524, %509
  %528 = load i32, i32* %17, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %551

530:                                              ; preds = %527
  %531 = load i32, i32* %15, align 4
  %532 = load i32, i32* %12, align 4
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %534, label %539

534:                                              ; preds = %530
  %535 = load i32*, i32** %7, align 8
  %536 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %537 = call i32 @jbig2_error(i32* %535, i32 %536, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %538 = load i32, i32* %12, align 4
  store i32 %538, i32* %15, align 4
  br label %539

539:                                              ; preds = %534, %530
  %540 = load i32, i32* %12, align 4
  %541 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %542 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = icmp slt i32 %540, %543
  br i1 %544, label %545, label %550

545:                                              ; preds = %539
  %546 = load i32*, i32** %10, align 8
  %547 = load i32, i32* %12, align 4
  %548 = load i32, i32* %15, align 4
  %549 = call i32 @jbig2_set_bits(i32* %546, i32 %547, i32 %548)
  br label %550

550:                                              ; preds = %545, %539
  br label %551

551:                                              ; preds = %550, %527
  %552 = load i32, i32* %15, align 4
  store i32 %552, i32* %12, align 4
  %553 = load i32, i32* %17, align 4
  %554 = icmp ne i32 %553, 0
  %555 = xor i1 %554, true
  %556 = zext i1 %555 to i32
  store i32 %556, i32* %17, align 4
  br label %619

557:                                              ; preds = %505
  %558 = load i32, i32* %18, align 4
  %559 = ashr i32 %558, 25
  %560 = icmp eq i32 %559, 2
  br i1 %560, label %561, label %609

561:                                              ; preds = %557
  %562 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %563 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %562, i32 7)
  %564 = load i32*, i32** %9, align 8
  %565 = load i32, i32* %12, align 4
  %566 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %567 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* %17, align 4
  %570 = icmp ne i32 %569, 0
  %571 = xor i1 %570, true
  %572 = zext i1 %571 to i32
  %573 = call i32 @jbig2_find_changing_element_of_color(i32* %564, i32 %565, i32 %568, i32 %572)
  store i32 %573, i32* %15, align 4
  %574 = load i32, i32* %15, align 4
  %575 = icmp sge i32 %574, 3
  br i1 %575, label %576, label %579

576:                                              ; preds = %561
  %577 = load i32, i32* %15, align 4
  %578 = sub nsw i32 %577, 3
  store i32 %578, i32* %15, align 4
  br label %579

579:                                              ; preds = %576, %561
  %580 = load i32, i32* %17, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %603

582:                                              ; preds = %579
  %583 = load i32, i32* %15, align 4
  %584 = load i32, i32* %12, align 4
  %585 = icmp slt i32 %583, %584
  br i1 %585, label %586, label %591

586:                                              ; preds = %582
  %587 = load i32*, i32** %7, align 8
  %588 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %589 = call i32 @jbig2_error(i32* %587, i32 %588, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %590 = load i32, i32* %12, align 4
  store i32 %590, i32* %15, align 4
  br label %591

591:                                              ; preds = %586, %582
  %592 = load i32, i32* %12, align 4
  %593 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %594 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %593, i32 0, i32 1
  %595 = load i32, i32* %594, align 4
  %596 = icmp slt i32 %592, %595
  br i1 %596, label %597, label %602

597:                                              ; preds = %591
  %598 = load i32*, i32** %10, align 8
  %599 = load i32, i32* %12, align 4
  %600 = load i32, i32* %15, align 4
  %601 = call i32 @jbig2_set_bits(i32* %598, i32 %599, i32 %600)
  br label %602

602:                                              ; preds = %597, %591
  br label %603

603:                                              ; preds = %602, %579
  %604 = load i32, i32* %15, align 4
  store i32 %604, i32* %12, align 4
  %605 = load i32, i32* %17, align 4
  %606 = icmp ne i32 %605, 0
  %607 = xor i1 %606, true
  %608 = zext i1 %607 to i32
  store i32 %608, i32* %17, align 4
  br label %618

609:                                              ; preds = %557
  %610 = load i32, i32* %18, align 4
  %611 = ashr i32 %610, 8
  %612 = icmp eq i32 %611, 4097
  br i1 %612, label %613, label %617

613:                                              ; preds = %609
  %614 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %615 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__* %614, i32 24)
  %616 = load i32*, i32** %11, align 8
  store i32 1, i32* %616, align 4
  br label %627

617:                                              ; preds = %609
  br label %627

618:                                              ; preds = %603
  br label %619

619:                                              ; preds = %618, %551
  br label %620

620:                                              ; preds = %619, %499
  br label %621

621:                                              ; preds = %620, %447
  br label %622

622:                                              ; preds = %621, %391
  br label %623

623:                                              ; preds = %622, %335
  br label %624

624:                                              ; preds = %623, %279
  br label %625

625:                                              ; preds = %624, %237
  br label %626

626:                                              ; preds = %625, %190
  br label %22

627:                                              ; preds = %617, %613, %35
  store i32 0, i32* %6, align 4
  br label %628

628:                                              ; preds = %627, %138, %127, %68, %57
  %629 = load i32, i32* %6, align 4
  ret i32 %629
}

declare dso_local i32 @jbig2_decode_mmr_consume(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @jbig2_decode_get_run(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

declare dso_local i32 @jbig2_set_bits(i32*, i32, i32) #1

declare dso_local i32 @jbig2_find_changing_element_of_color(i32*, i32, i32, i32) #1

declare dso_local i32 @jbig2_find_changing_element(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
