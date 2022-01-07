; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_UpdatePESFilters.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_UpdatePESFilters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_24__** }

@FLAG_FILTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"enabling pid %d from program %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"enabling pcr pid %d from program %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdatePESFilters(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32 %1, i32* %4, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %5, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %27 = call %struct.TYPE_24__* @GetPID(%struct.TYPE_27__* %26, i64 0)
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %92, %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %31
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %42, i64 %44
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  store %struct.TYPE_24__* %46, %struct.TYPE_24__** %8, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  store %struct.TYPE_23__* %50, %struct.TYPE_23__** %9, align 8
  %51 = load i32, i32* @FLAG_FILTERED, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %78, %38
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %57
  %65 = load i32, i32* @FLAG_FILTERED, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %70, i64 %72
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %66
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %57

81:                                               ; preds = %57
  %82 = load i32, i32* @FLAG_FILTERED, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call %struct.TYPE_24__* @GetPID(%struct.TYPE_27__* %84, i64 %87)
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %83
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %31

95:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %232, %95
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %235

103:                                              ; preds = %96
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %107, i64 %109
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %12, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %114, align 8
  store %struct.TYPE_23__* %115, %struct.TYPE_23__** %13, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %103
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120, %103
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %120
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  store i32 1, i32* %130, align 8
  br label %139

131:                                              ; preds = %125
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @ProgramIsSelected(%struct.TYPE_27__* %132, i32 %135)
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %131, %128
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %231

144:                                              ; preds = %139
  %145 = load i32, i32* @FLAG_FILTERED, align 4
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %204, %144
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %151, %155
  br i1 %156, label %157, label %207

157:                                              ; preds = %150
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %161, i64 %163
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %164, align 8
  store %struct.TYPE_24__* %165, %struct.TYPE_24__** %15, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  store %struct.TYPE_22__* %169, %struct.TYPE_22__** %16, align 8
  store i32 1, i32* %17, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %157
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %174
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %185 = call i32 @HasSelectedES(i32 %180, i32 %183, %struct.TYPE_23__* %184, i32* %17)
  br label %186

186:                                              ; preds = %177, %174, %157
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %186
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @msg_Dbg(%struct.TYPE_26__* %190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %193, i32 %196)
  %198 = load i32, i32* @FLAG_FILTERED, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %189, %186
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %150

207:                                              ; preds = %150
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %230

212:                                              ; preds = %207
  %213 = load i32, i32* @FLAG_FILTERED, align 4
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call %struct.TYPE_24__* @GetPID(%struct.TYPE_27__* %214, i64 %217)
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %213
  store i32 %221, i32* %219, align 8
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @msg_Dbg(%struct.TYPE_26__* %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %225, i32 %228)
  br label %230

230:                                              ; preds = %212, %207
  br label %231

231:                                              ; preds = %230, %139
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %96

235:                                              ; preds = %96
  store i32 0, i32* %18, align 4
  br label %236

236:                                              ; preds = %302, %235
  %237 = load i32, i32* %18, align 4
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %237, %241
  br i1 %242, label %243, label %305

243:                                              ; preds = %236
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %247, i64 %249
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %250, align 8
  store %struct.TYPE_24__* %251, %struct.TYPE_24__** %19, align 8
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %254, align 8
  store %struct.TYPE_23__* %255, %struct.TYPE_23__** %20, align 8
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %258 = call i32 @UpdateHWFilter(%struct.TYPE_27__* %256, %struct.TYPE_24__* %257)
  store i32 0, i32* %21, align 4
  br label %259

259:                                              ; preds = %291, %243
  %260 = load i32, i32* %21, align 4
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp slt i32 %260, %264
  br i1 %265, label %266, label %294

266:                                              ; preds = %259
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %269, align 8
  %271 = load i32, i32* %21, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %270, i64 %272
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %273, align 8
  store %struct.TYPE_24__* %274, %struct.TYPE_24__** %22, align 8
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %277 = call i32 @UpdateHWFilter(%struct.TYPE_27__* %275, %struct.TYPE_24__* %276)
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @FLAG_FILTERED, align 4
  %282 = and i32 %280, %281
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %266
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %287, align 8
  %289 = call i32 @FlushESBuffer(%struct.TYPE_22__* %288)
  br label %290

290:                                              ; preds = %284, %266
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %21, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %21, align 4
  br label %259

294:                                              ; preds = %259
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = call %struct.TYPE_24__* @GetPID(%struct.TYPE_27__* %296, i64 %299)
  %301 = call i32 @UpdateHWFilter(%struct.TYPE_27__* %295, %struct.TYPE_24__* %300)
  br label %302

302:                                              ; preds = %294
  %303 = load i32, i32* %18, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %18, align 4
  br label %236

305:                                              ; preds = %236
  ret void
}

declare dso_local %struct.TYPE_24__* @GetPID(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @ProgramIsSelected(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @HasSelectedES(i32, i32, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_26__*, i8*, i64, i32) #1

declare dso_local i32 @UpdateHWFilter(%struct.TYPE_27__*, %struct.TYPE_24__*) #1

declare dso_local i32 @FlushESBuffer(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
