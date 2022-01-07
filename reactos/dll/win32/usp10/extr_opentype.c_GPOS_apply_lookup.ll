; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_lookup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i32, i32 }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_49__ = type { i32* }
%struct.TYPE_51__ = type { i32, i32 }
%struct.TYPE_48__ = type { i32*, i32, i32, i32 }
%struct.TYPE_50__ = type { i32, i32 }
%struct.TYPE_46__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"type %#x, flag %#x, subtables %u.\0A\00", align 1
@GPOS_LOOKUP_POSITION_EXTENSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"extension type %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unhandled Extension Positioning Format %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"lookup type is Extension Positioning but no extension subtable exists\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unhandled adjustment to Y advancement\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Unhandled GPOS lookup type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_47__*, i32*, %struct.TYPE_45__*, i32*, %struct.TYPE_49__*, i32, i32*, i32, i32, %struct.TYPE_51__*)* @GPOS_apply_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GPOS_apply_lookup(i32* %0, %struct.TYPE_47__* %1, i32* %2, %struct.TYPE_45__* %3, i32* %4, %struct.TYPE_49__* %5, i32 %6, i32* %7, i32 %8, i32 %9, %struct.TYPE_51__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_47__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_45__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_49__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_51__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_48__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_50__*, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct.TYPE_46__, align 4
  %32 = alloca %struct.TYPE_46__, align 4
  %33 = alloca [2 x %struct.TYPE_46__], align 16
  %34 = alloca [2 x %struct.TYPE_46__], align 16
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_46__, align 4
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca i32, align 4
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca %struct.TYPE_46__, align 4
  %47 = alloca i32, align 4
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca %struct.TYPE_46__, align 4
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca %struct.TYPE_46__, align 4
  %54 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store %struct.TYPE_47__* %1, %struct.TYPE_47__** %14, align 8
  store i32* %2, i32** %15, align 8
  store %struct.TYPE_45__* %3, %struct.TYPE_45__** %16, align 8
  store i32* %4, i32** %17, align 8
  store %struct.TYPE_49__* %5, %struct.TYPE_49__** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store %struct.TYPE_51__* %10, %struct.TYPE_51__** %23, align 8
  %55 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %58, %62
  %64 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %63, %67
  store i32 %68, i32* %26, align 4
  %69 = load %struct.TYPE_49__*, %struct.TYPE_49__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %19, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @GET_BE_WORD(i32 %75)
  store i32 %76, i32* %24, align 4
  %77 = load %struct.TYPE_49__*, %struct.TYPE_49__** %18, align 8
  %78 = bitcast %struct.TYPE_49__* %77 to i32*
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = bitcast i32* %81 to %struct.TYPE_48__*
  store %struct.TYPE_48__* %82, %struct.TYPE_48__** %25, align 8
  %83 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %84 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @GET_BE_WORD(i32 %85)
  store i32 %86, i32* %27, align 4
  %87 = load i32, i32* %27, align 4
  %88 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %89 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @GET_BE_WORD(i32 %90)
  %92 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %93 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @GET_BE_WORD(i32 %94)
  %96 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91, i32 %95)
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* @GPOS_LOOKUP_POSITION_EXTENSION, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %11
  %101 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @GET_BE_WORD(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %100
  %107 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %108 = bitcast %struct.TYPE_48__* %107 to i32*
  %109 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %110 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @GET_BE_WORD(i32 %113)
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %108, i64 %115
  %117 = bitcast i32* %116 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %117, %struct.TYPE_50__** %28, align 8
  %118 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %119 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @GET_BE_WORD(i32 %120)
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %130

123:                                              ; preds = %106
  %124 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %125 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @GET_BE_WORD(i32 %126)
  store i32 %127, i32* %27, align 4
  %128 = load i32, i32* %27, align 4
  %129 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %136

130:                                              ; preds = %106
  %131 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %132 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @GET_BE_WORD(i32 %133)
  %135 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %130, %123
  br label %139

137:                                              ; preds = %100
  %138 = call i32 @WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %136
  br label %140

140:                                              ; preds = %139, %11
  %141 = load i32, i32* %27, align 4
  switch i32 %141, label %666 [
    i32 134, label %142
    i32 135, label %216
    i32 133, label %398
    i32 132, label %453
    i32 131, label %516
    i32 130, label %562
    i32 129, label %640
    i32 128, label %653
  ]

142:                                              ; preds = %140
  %143 = bitcast %struct.TYPE_46__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %143, i8 0, i64 16, i1 false)
  %144 = bitcast %struct.TYPE_46__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %144, i8 0, i64 16, i1 false)
  %145 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %146 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %147 = load i32*, i32** %20, align 8
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* %26, align 4
  %151 = call i32 @GPOS_apply_SingleAdjustment(%struct.TYPE_48__* %145, %struct.TYPE_45__* %146, i32* %147, i32 %148, i32 %149, i32 %150, %struct.TYPE_46__* %31, %struct.TYPE_46__* %32)
  %152 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %31, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %142
  %156 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %31, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %155, %142
  %160 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %161 = load i32*, i32** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %31, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %31, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %160, i32* %161, i32 %163, i32 %165, double* %29, double* %30)
  %167 = load double, double* %29, align 8
  %168 = call i32 @round(double %167)
  %169 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %170 = load i32, i32* %21, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %168
  store i32 %175, i32* %173, align 4
  %176 = load double, double* %30, align 8
  %177 = call i32 @round(double %176)
  %178 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %179 = load i32, i32* %21, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %177
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %159, %155
  %186 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %32, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %32, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %189, %185
  %194 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %195 = load i32*, i32** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %32, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %32, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %194, i32* %195, i32 %197, i32 %199, double* %29, double* %30)
  %201 = load double, double* %29, align 8
  %202 = call i32 @round(double %201)
  %203 = load i32*, i32** %17, align 8
  %204 = load i32, i32* %21, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %202
  store i32 %208, i32* %206, align 4
  %209 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %32, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %193
  %213 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %193
  br label %215

215:                                              ; preds = %214, %189
  br label %669

216:                                              ; preds = %140
  %217 = bitcast [2 x %struct.TYPE_46__]* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %217, i8 0, i64 32, i1 false)
  %218 = bitcast [2 x %struct.TYPE_46__]* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %218, i8 0, i64 32, i1 false)
  %219 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  br label %229

229:                                              ; preds = %223, %216
  %230 = phi i1 [ false, %216 ], [ %228, %223 ]
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32 -1, i32 1
  store i32 %232, i32* %38, align 4
  %233 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %229
  %238 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br label %242

242:                                              ; preds = %237, %229
  %243 = phi i1 [ false, %229 ], [ %241, %237 ]
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 -1, i32 1
  store i32 %245, i32* %39, align 4
  %246 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %247 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %248 = load i32*, i32** %20, align 8
  %249 = load i32, i32* %21, align 4
  %250 = load i32, i32* %22, align 4
  %251 = load i32, i32* %26, align 4
  %252 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 0
  %253 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 0
  %254 = call i32 @GPOS_apply_PairAdjustment(%struct.TYPE_48__* %246, %struct.TYPE_45__* %247, i32* %248, i32 %249, i32 %250, i32 %251, %struct.TYPE_46__* %252, %struct.TYPE_46__* %253)
  store i32 %254, i32* %37, align 4
  %255 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 0
  %256 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %242
  %260 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 0
  %261 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 16
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %294

264:                                              ; preds = %259, %242
  %265 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %266 = load i32*, i32** %15, align 8
  %267 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 0
  %268 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 0
  %271 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 16
  %273 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %265, i32* %266, i32 %269, i32 %272, double* %35, double* %36)
  %274 = load double, double* %35, align 8
  %275 = call i32 @round(double %274)
  %276 = load i32, i32* %39, align 4
  %277 = mul nsw i32 %275, %276
  %278 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %279 = load i32, i32* %21, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, %277
  store i32 %284, i32* %282, align 4
  %285 = load double, double* %36, align 8
  %286 = call i32 @round(double %285)
  %287 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %288 = load i32, i32* %21, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, %286
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %264, %259
  %295 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 0
  %296 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %294
  %300 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 0
  %301 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 16
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %299, %294
  %305 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %306 = load i32*, i32** %15, align 8
  %307 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 0
  %308 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 0
  %311 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 16
  %313 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %305, i32* %306, i32 %309, i32 %312, double* %35, double* %36)
  %314 = load double, double* %35, align 8
  %315 = call i32 @round(double %314)
  %316 = load i32*, i32** %17, align 8
  %317 = load i32, i32* %21, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, %315
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %304, %299
  %323 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 1
  %324 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %322
  %328 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 1
  %329 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 16
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %366

332:                                              ; preds = %327, %322
  %333 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %334 = load i32*, i32** %15, align 8
  %335 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 1
  %336 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %34, i64 0, i64 1
  %339 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 16
  %341 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %333, i32* %334, i32 %337, i32 %340, double* %35, double* %36)
  %342 = load double, double* %35, align 8
  %343 = call i32 @round(double %342)
  %344 = load i32, i32* %39, align 4
  %345 = mul nsw i32 %343, %344
  %346 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %347 = load i32, i32* %21, align 4
  %348 = load i32, i32* %38, align 4
  %349 = add i32 %347, %348
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %346, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %353, %345
  store i32 %354, i32* %352, align 4
  %355 = load double, double* %36, align 8
  %356 = call i32 @round(double %355)
  %357 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %358 = load i32, i32* %21, align 4
  %359 = load i32, i32* %38, align 4
  %360 = add i32 %358, %359
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %357, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %364, %356
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %332, %327
  %367 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 1
  %368 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %376, label %371

371:                                              ; preds = %366
  %372 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 1
  %373 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 16
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %396

376:                                              ; preds = %371, %366
  %377 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %378 = load i32*, i32** %15, align 8
  %379 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 1
  %380 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = getelementptr inbounds [2 x %struct.TYPE_46__], [2 x %struct.TYPE_46__]* %33, i64 0, i64 1
  %383 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 16
  %385 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %377, i32* %378, i32 %381, i32 %384, double* %35, double* %36)
  %386 = load double, double* %35, align 8
  %387 = call i32 @round(double %386)
  %388 = load i32*, i32** %17, align 8
  %389 = load i32, i32* %21, align 4
  %390 = load i32, i32* %38, align 4
  %391 = add i32 %389, %390
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %388, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, %387
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %376, %371
  %397 = load i32, i32* %37, align 4
  store i32 %397, i32* %12, align 4
  br label %670

398:                                              ; preds = %140
  %399 = bitcast %struct.TYPE_46__* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %399, i8 0, i64 16, i1 false)
  %400 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %401 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %398
  %405 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %406 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  %409 = xor i1 %408, true
  br label %410

410:                                              ; preds = %404, %398
  %411 = phi i1 [ false, %398 ], [ %409, %404 ]
  %412 = zext i1 %411 to i64
  %413 = select i1 %411, i32 -1, i32 1
  store i32 %413, i32* %43, align 4
  %414 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %415 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %416 = load i32*, i32** %20, align 8
  %417 = load i32, i32* %21, align 4
  %418 = load i32, i32* %22, align 4
  %419 = load i32, i32* %26, align 4
  %420 = call i32 @GPOS_apply_CursiveAttachment(%struct.TYPE_48__* %414, %struct.TYPE_45__* %415, i32* %416, i32 %417, i32 %418, i32 %419, %struct.TYPE_46__* %40)
  %421 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %40, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %428, label %424

424:                                              ; preds = %410
  %425 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %40, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %452

428:                                              ; preds = %424, %410
  %429 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %430 = load i32*, i32** %15, align 8
  %431 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %40, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %40, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %429, i32* %430, i32 %432, i32 %434, double* %41, double* %42)
  %436 = load double, double* %42, align 8
  %437 = call i32 @round(double %436)
  %438 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %439 = load i32, i32* %21, align 4
  %440 = load i32, i32* %43, align 4
  %441 = add i32 %439, %440
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %438, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = add nsw i32 %437, %445
  %447 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %448 = load i32, i32* %21, align 4
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %450, i32 0, i32 1
  store i32 %446, i32* %451, align 4
  br label %452

452:                                              ; preds = %428, %424
  br label %669

453:                                              ; preds = %140
  %454 = bitcast %struct.TYPE_46__* %46 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %454, i8 0, i64 16, i1 false)
  %455 = load i32*, i32** %13, align 8
  %456 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %457 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %458 = load i32*, i32** %20, align 8
  %459 = load i32, i32* %21, align 4
  %460 = load i32, i32* %22, align 4
  %461 = load i32, i32* %26, align 4
  %462 = call i32 @GPOS_apply_MarkToBase(i32* %455, %struct.TYPE_48__* %456, %struct.TYPE_45__* %457, i32* %458, i32 %459, i32 %460, i32 %461, %struct.TYPE_46__* %46)
  store i32 %462, i32* %47, align 4
  %463 = load i32, i32* %47, align 4
  %464 = icmp ne i32 %463, -1
  br i1 %464, label %465, label %515

465:                                              ; preds = %453
  %466 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %467 = load i32*, i32** %15, align 8
  %468 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %46, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %46, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %466, i32* %467, i32 %469, i32 %471, double* %44, double* %45)
  %473 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %474 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %491, label %477

477:                                              ; preds = %465
  %478 = load double, double* %44, align 8
  %479 = call i32 @round(double %478)
  %480 = load i32*, i32** %17, align 8
  %481 = load i32, i32* %47, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = sub nsw i32 %479, %484
  %486 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %487 = load i32, i32* %21, align 4
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %489, i32 0, i32 0
  store i32 %485, i32* %490, align 4
  br label %507

491:                                              ; preds = %465
  %492 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %493 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %491
  %497 = load double, double* %44, align 8
  %498 = fmul double %497, -1.000000e+00
  store double %498, double* %44, align 8
  br label %499

499:                                              ; preds = %496, %491
  %500 = load double, double* %44, align 8
  %501 = call i32 @round(double %500)
  %502 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %503 = load i32, i32* %21, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %505, i32 0, i32 0
  store i32 %501, i32* %506, align 4
  br label %507

507:                                              ; preds = %499, %477
  %508 = load double, double* %45, align 8
  %509 = call i32 @round(double %508)
  %510 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %511 = load i32, i32* %21, align 4
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %513, i32 0, i32 1
  store i32 %509, i32* %514, align 4
  br label %515

515:                                              ; preds = %507, %453
  br label %669

516:                                              ; preds = %140
  %517 = bitcast %struct.TYPE_46__* %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %517, i8 0, i64 16, i1 false)
  %518 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %519 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %520 = load i32*, i32** %20, align 8
  %521 = load i32, i32* %21, align 4
  %522 = load i32, i32* %22, align 4
  %523 = load i32, i32* %26, align 4
  %524 = call i32 @GPOS_apply_MarkToLigature(%struct.TYPE_48__* %518, %struct.TYPE_45__* %519, i32* %520, i32 %521, i32 %522, i32 %523, %struct.TYPE_46__* %50)
  %525 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %50, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %532, label %528

528:                                              ; preds = %516
  %529 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %50, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %561

532:                                              ; preds = %528, %516
  %533 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %534 = load i32*, i32** %15, align 8
  %535 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %50, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %50, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %533, i32* %534, i32 %536, i32 %538, double* %48, double* %49)
  %540 = load double, double* %48, align 8
  %541 = call i32 @round(double %540)
  %542 = load i32*, i32** %17, align 8
  %543 = load i32, i32* %21, align 4
  %544 = sub i32 %543, 1
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %542, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = sub nsw i32 %541, %547
  %549 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %550 = load i32, i32* %21, align 4
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %549, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %552, i32 0, i32 0
  store i32 %548, i32* %553, align 4
  %554 = load double, double* %49, align 8
  %555 = call i32 @round(double %554)
  %556 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %557 = load i32, i32* %21, align 4
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %556, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %559, i32 0, i32 1
  store i32 %555, i32* %560, align 4
  br label %561

561:                                              ; preds = %532, %528
  br label %669

562:                                              ; preds = %140
  %563 = bitcast %struct.TYPE_46__* %53 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %563, i8 0, i64 16, i1 false)
  %564 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %565 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %574

568:                                              ; preds = %562
  %569 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %570 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = icmp ne i32 %571, 0
  %573 = xor i1 %572, true
  br label %574

574:                                              ; preds = %568, %562
  %575 = phi i1 [ false, %562 ], [ %573, %568 ]
  %576 = zext i1 %575 to i64
  %577 = select i1 %575, i32 -1, i32 1
  store i32 %577, i32* %54, align 4
  %578 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %579 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %580 = load i32*, i32** %20, align 8
  %581 = load i32, i32* %21, align 4
  %582 = load i32, i32* %22, align 4
  %583 = load i32, i32* %26, align 4
  %584 = call i32 @GPOS_apply_MarkToMark(%struct.TYPE_48__* %578, %struct.TYPE_45__* %579, i32* %580, i32 %581, i32 %582, i32 %583, %struct.TYPE_46__* %53)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %639

586:                                              ; preds = %574
  %587 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %588 = load i32*, i32** %15, align 8
  %589 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %53, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %53, i32 0, i32 0
  %592 = load i32, i32* %591, align 4
  %593 = call i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__* %587, i32* %588, i32 %590, i32 %592, double* %51, double* %52)
  %594 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %595 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %606

598:                                              ; preds = %586
  %599 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %600 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %598
  %604 = load double, double* %51, align 8
  %605 = fmul double %604, -1.000000e+00
  store double %605, double* %51, align 8
  br label %606

606:                                              ; preds = %603, %598, %586
  %607 = load double, double* %51, align 8
  %608 = call i32 @round(double %607)
  %609 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %610 = load i32, i32* %21, align 4
  %611 = load i32, i32* %54, align 4
  %612 = sub i32 %610, %611
  %613 = zext i32 %612 to i64
  %614 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %609, i64 %613
  %615 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 4
  %617 = add nsw i32 %608, %616
  %618 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %619 = load i32, i32* %21, align 4
  %620 = zext i32 %619 to i64
  %621 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %618, i64 %620
  %622 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %621, i32 0, i32 0
  store i32 %617, i32* %622, align 4
  %623 = load double, double* %52, align 8
  %624 = call i32 @round(double %623)
  %625 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %626 = load i32, i32* %21, align 4
  %627 = load i32, i32* %54, align 4
  %628 = sub i32 %626, %627
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %625, i64 %629
  %631 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = add nsw i32 %624, %632
  %634 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %635 = load i32, i32* %21, align 4
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %634, i64 %636
  %638 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %637, i32 0, i32 1
  store i32 %633, i32* %638, align 4
  br label %639

639:                                              ; preds = %606, %574
  br label %669

640:                                              ; preds = %140
  %641 = load i32*, i32** %13, align 8
  %642 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %643 = load i32*, i32** %15, align 8
  %644 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %645 = load i32*, i32** %17, align 8
  %646 = load %struct.TYPE_49__*, %struct.TYPE_49__** %18, align 8
  %647 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %648 = load i32*, i32** %20, align 8
  %649 = load i32, i32* %21, align 4
  %650 = load i32, i32* %22, align 4
  %651 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %652 = call i32 @GPOS_apply_ContextPos(i32* %641, %struct.TYPE_47__* %642, i32* %643, %struct.TYPE_45__* %644, i32* %645, %struct.TYPE_49__* %646, %struct.TYPE_48__* %647, i32* %648, i32 %649, i32 %650, %struct.TYPE_51__* %651)
  store i32 %652, i32* %12, align 4
  br label %670

653:                                              ; preds = %140
  %654 = load i32*, i32** %13, align 8
  %655 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %656 = load i32*, i32** %15, align 8
  %657 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %658 = load i32*, i32** %17, align 8
  %659 = load %struct.TYPE_49__*, %struct.TYPE_49__** %18, align 8
  %660 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %661 = load i32*, i32** %20, align 8
  %662 = load i32, i32* %21, align 4
  %663 = load i32, i32* %22, align 4
  %664 = load %struct.TYPE_51__*, %struct.TYPE_51__** %23, align 8
  %665 = call i32 @GPOS_apply_ChainContextPos(i32* %654, %struct.TYPE_47__* %655, i32* %656, %struct.TYPE_45__* %657, i32* %658, %struct.TYPE_49__* %659, %struct.TYPE_48__* %660, i32* %661, i32 %662, i32 %663, %struct.TYPE_51__* %664)
  store i32 %665, i32* %12, align 4
  br label %670

666:                                              ; preds = %140
  %667 = load i32, i32* %27, align 4
  %668 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %667)
  br label %669

669:                                              ; preds = %666, %639, %561, %515, %452, %215
  store i32 1, i32* %12, align 4
  br label %670

670:                                              ; preds = %669, %653, %640, %396
  %671 = load i32, i32* %12, align 4
  ret i32 %671
}

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @WARN(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GPOS_apply_SingleAdjustment(%struct.TYPE_48__*, %struct.TYPE_45__*, i32*, i32, i32, i32, %struct.TYPE_46__*, %struct.TYPE_46__*) #1

declare dso_local i32 @GPOS_convert_design_units_to_device(%struct.TYPE_47__*, i32*, i32, i32, double*, double*) #1

declare dso_local i32 @round(double) #1

declare dso_local i32 @GPOS_apply_PairAdjustment(%struct.TYPE_48__*, %struct.TYPE_45__*, i32*, i32, i32, i32, %struct.TYPE_46__*, %struct.TYPE_46__*) #1

declare dso_local i32 @GPOS_apply_CursiveAttachment(%struct.TYPE_48__*, %struct.TYPE_45__*, i32*, i32, i32, i32, %struct.TYPE_46__*) #1

declare dso_local i32 @GPOS_apply_MarkToBase(i32*, %struct.TYPE_48__*, %struct.TYPE_45__*, i32*, i32, i32, i32, %struct.TYPE_46__*) #1

declare dso_local i32 @GPOS_apply_MarkToLigature(%struct.TYPE_48__*, %struct.TYPE_45__*, i32*, i32, i32, i32, %struct.TYPE_46__*) #1

declare dso_local i32 @GPOS_apply_MarkToMark(%struct.TYPE_48__*, %struct.TYPE_45__*, i32*, i32, i32, i32, %struct.TYPE_46__*) #1

declare dso_local i32 @GPOS_apply_ContextPos(i32*, %struct.TYPE_47__*, i32*, %struct.TYPE_45__*, i32*, %struct.TYPE_49__*, %struct.TYPE_48__*, i32*, i32, i32, %struct.TYPE_51__*) #1

declare dso_local i32 @GPOS_apply_ChainContextPos(i32*, %struct.TYPE_47__*, i32*, %struct.TYPE_45__*, i32*, %struct.TYPE_49__*, %struct.TYPE_48__*, i32*, i32, i32, %struct.TYPE_51__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
