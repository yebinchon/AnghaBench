; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_fire_event_obj.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_fire_event_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_25__, %struct.TYPE_19__, i32, %struct.TYPE_21__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_22__ = type { i32*, i64, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__*, i32, i32*, i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_24__*, i64, i32*, i64*)* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"(%p) %s\0A\00", align 1
@event_info = common dso_local global %struct.TYPE_18__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"NULL window\0A\00", align 1
@EVENT_BUBBLE = common dso_local global i32 0, align 4
@EVENT_FORWARDBODY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not get body: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unimplemented node type %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@EVENT_HASDEFAULTHANDLERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"calling PreventDefault\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i64, %struct.TYPE_22__*, i32*, i32*)* @fire_event_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fire_event_obj(%struct.TYPE_23__* %0, i64 %1, %struct.TYPE_22__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %14, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_info, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @debugstr_w(i32 %28)
  %30 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %23, i32 %29)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %15, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %35 = icmp ne %struct.TYPE_21__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %5
  %37 = call i32 @WARN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %362

38:                                               ; preds = %5
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = call i32 @htmldoc_addref(%struct.TYPE_25__* %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %11, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %46 = icmp ne %struct.TYPE_22__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 3
  br label %51

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32* [ %49, %47 ], [ null, %50 ]
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @nsIDOMNode_GetNodeType(i32* %55, i32* %17)
  %57 = load i32*, i32** %9, align 8
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @nsIDOMNode_AddRef(i32* %58)
  %60 = load i32, i32* %17, align 4
  switch i32 %60, label %226 [
    i32 128, label %61
    i32 129, label %146
  ]

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %124, %61
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i64, i64* @FALSE, align 8
  %66 = call i32 @get_node(%struct.TYPE_23__* %63, i32* %64, i64 %65, %struct.TYPE_24__** %16)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @SUCCEEDED(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %62
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %72 = icmp ne %struct.TYPE_24__* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32*, i32** %10, align 8
  br label %89

86:                                               ; preds = %73
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i32* [ %85, %84 ], [ %88, %86 ]
  %91 = call i32 @call_event_handlers(%struct.TYPE_23__* %74, %struct.TYPE_22__* %75, i32* %77, i32* %80, i64 %81, i32* %90)
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %93 = call i32 @node_release(%struct.TYPE_24__* %92)
  br label %94

94:                                               ; preds = %89, %70, %62
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_info, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @EVENT_BUBBLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %105 = icmp ne %struct.TYPE_22__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %94
  br label %127

112:                                              ; preds = %106, %103
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @nsIDOMNode_GetParentNode(i32* %113, i32** %12)
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @nsIDOMNode_Release(i32* %115)
  %117 = load i32*, i32** %12, align 8
  store i32* %117, i32** %13, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %127

121:                                              ; preds = %112
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @nsIDOMNode_GetNodeType(i32* %122, i32* %17)
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %17, align 4
  %126 = icmp eq i32 %125, 128
  br i1 %126, label %62, label %127

127:                                              ; preds = %124, %120, %111
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_info, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @EVENT_BUBBLE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %138 = icmp ne %struct.TYPE_22__* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139, %127
  br label %229

145:                                              ; preds = %139, %136
  br label %146

146:                                              ; preds = %51, %145
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_info, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @EVENT_FORWARDBODY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %205

155:                                              ; preds = %146
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @nsIDOMHTMLDocument_GetBody(i32 %158, i32** %20)
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %21, align 4
  %161 = call i32 @NS_SUCCEEDED(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %201

163:                                              ; preds = %155
  %164 = load i32*, i32** %20, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %201

166:                                              ; preds = %163
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %168 = load i32*, i32** %20, align 8
  %169 = load i64, i64* @FALSE, align 8
  %170 = call i32 @get_node(%struct.TYPE_23__* %167, i32* %168, i64 %169, %struct.TYPE_24__** %16)
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %19, align 4
  %172 = call i32 @SUCCEEDED(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %198

174:                                              ; preds = %166
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %176 = icmp ne %struct.TYPE_24__* %175, null
  br i1 %176, label %177, label %198

177:                                              ; preds = %174
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %177
  %189 = load i32*, i32** %10, align 8
  br label %193

190:                                              ; preds = %177
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  br label %193

193:                                              ; preds = %190, %188
  %194 = phi i32* [ %189, %188 ], [ %192, %190 ]
  %195 = call i32 @call_event_handlers(%struct.TYPE_23__* %178, %struct.TYPE_22__* %179, i32* %181, i32* %184, i64 %185, i32* %194)
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %197 = call i32 @node_release(%struct.TYPE_24__* %196)
  br label %198

198:                                              ; preds = %193, %174, %166
  %199 = load i32*, i32** %20, align 8
  %200 = call i32 @nsIDOMHTMLElement_Release(i32* %199)
  br label %204

201:                                              ; preds = %163, %155
  %202 = load i32, i32* %21, align 4
  %203 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %201, %198
  br label %205

205:                                              ; preds = %204, %146
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load i64, i64* %7, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %205
  %218 = load i32*, i32** %10, align 8
  br label %223

219:                                              ; preds = %205
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 0
  br label %223

223:                                              ; preds = %219, %217
  %224 = phi i32* [ %218, %217 ], [ %222, %219 ]
  %225 = call i32 @call_event_handlers(%struct.TYPE_23__* %206, %struct.TYPE_22__* %207, i32* %210, i32* %213, i64 %214, i32* %224)
  br label %229

226:                                              ; preds = %51
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %226, %223, %144
  %230 = load i32*, i32** %13, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32*, i32** %13, align 8
  %234 = call i32 @nsIDOMNode_Release(i32* %233)
  br label %235

235:                                              ; preds = %232, %229
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %237 = icmp ne %struct.TYPE_22__* %236, null
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i64, i64* @TRUE, align 8
  store i64 %244, i64* %14, align 8
  br label %245

245:                                              ; preds = %243, %238, %235
  %246 = load i32*, i32** %11, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  store i32* %246, i32** %248, align 8
  %249 = load i64, i64* %14, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %341, label %251

251:                                              ; preds = %245
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_info, align 8
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @EVENT_HASDEFAULTHANDLERS, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %341

260:                                              ; preds = %251
  %261 = load i32*, i32** %9, align 8
  %262 = call i32 @nsIDOMNode_AddRef(i32* %261)
  %263 = load i32*, i32** %9, align 8
  store i32* %263, i32** %13, align 8
  br label %264

264:                                              ; preds = %331, %260
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %266 = load i32*, i32** %13, align 8
  %267 = load i64, i64* @TRUE, align 8
  %268 = call i32 @get_node(%struct.TYPE_23__* %265, i32* %266, i64 %267, %struct.TYPE_24__** %16)
  store i32 %268, i32* %19, align 4
  %269 = load i32, i32* %19, align 4
  %270 = call i64 @FAILED(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  br label %334

273:                                              ; preds = %264
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %275 = icmp ne %struct.TYPE_24__* %274, null
  br i1 %275, label %276, label %320

276:                                              ; preds = %273
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 0
  %281 = load i32 (%struct.TYPE_24__*, i64, i32*, i64*)*, i32 (%struct.TYPE_24__*, i64, i32*, i64*)** %280, align 8
  %282 = icmp ne i32 (%struct.TYPE_24__*, i64, i32*, i64*)* %281, null
  br i1 %282, label %283, label %301

283:                                              ; preds = %276
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 0
  %288 = load i32 (%struct.TYPE_24__*, i64, i32*, i64*)*, i32 (%struct.TYPE_24__*, i64, i32*, i64*)** %287, align 8
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %290 = load i64, i64* %7, align 8
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %292 = icmp ne %struct.TYPE_22__* %291, null
  br i1 %292, label %293, label %297

293:                                              ; preds = %283
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  br label %298

297:                                              ; preds = %283
  br label %298

298:                                              ; preds = %297, %293
  %299 = phi i32* [ %296, %293 ], [ null, %297 ]
  %300 = call i32 %288(%struct.TYPE_24__* %289, i64 %290, i32* %299, i64* %14)
  store i32 %300, i32* %19, align 4
  br label %301

301:                                              ; preds = %298, %276
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %303 = call i32 @node_release(%struct.TYPE_24__* %302)
  %304 = load i32, i32* %19, align 4
  %305 = call i64 @FAILED(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %318, label %307

307:                                              ; preds = %301
  %308 = load i64, i64* %14, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %307
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %312 = icmp ne %struct.TYPE_22__* %311, null
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %313, %307, %301
  br label %334

319:                                              ; preds = %313, %310
  br label %320

320:                                              ; preds = %319, %273
  %321 = load i32*, i32** %13, align 8
  %322 = call i32 @nsIDOMNode_GetParentNode(i32* %321, i32** %12)
  store i32 %322, i32* %18, align 4
  %323 = load i32, i32* %18, align 4
  %324 = call i64 @NS_FAILED(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  br label %334

327:                                              ; preds = %320
  %328 = load i32*, i32** %13, align 8
  %329 = call i32 @nsIDOMNode_Release(i32* %328)
  %330 = load i32*, i32** %12, align 8
  store i32* %330, i32** %13, align 8
  br label %331

331:                                              ; preds = %327
  %332 = load i32*, i32** %13, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %264, label %334

334:                                              ; preds = %331, %326, %318, %272
  %335 = load i32*, i32** %13, align 8
  %336 = icmp ne i32* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i32*, i32** %13, align 8
  %339 = call i32 @nsIDOMNode_Release(i32* %338)
  br label %340

340:                                              ; preds = %337, %334
  br label %341

341:                                              ; preds = %340, %251, %245
  %342 = load i64, i64* %14, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %358

344:                                              ; preds = %341
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %346 = icmp ne %struct.TYPE_22__* %345, null
  br i1 %346, label %347, label %358

347:                                              ; preds = %344
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = icmp ne i32* %350, null
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %354 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @nsIDOMEvent_PreventDefault(i32* %356)
  br label %358

358:                                              ; preds = %352, %347, %344, %341
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 0
  %361 = call i32 @htmldoc_release(%struct.TYPE_25__* %360)
  br label %362

362:                                              ; preds = %358, %36
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @htmldoc_addref(%struct.TYPE_25__*) #1

declare dso_local i32 @nsIDOMNode_GetNodeType(i32*, i32*) #1

declare dso_local i32 @nsIDOMNode_AddRef(i32*) #1

declare dso_local i32 @get_node(%struct.TYPE_23__*, i32*, i64, %struct.TYPE_24__**) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @call_event_handlers(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @node_release(%struct.TYPE_24__*) #1

declare dso_local i32 @nsIDOMNode_GetParentNode(i32*, i32**) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @nsIDOMHTMLDocument_GetBody(i32, i32**) #1

declare dso_local i32 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsIDOMHTMLElement_Release(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @nsIDOMEvent_PreventDefault(i32*) #1

declare dso_local i32 @htmldoc_release(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
