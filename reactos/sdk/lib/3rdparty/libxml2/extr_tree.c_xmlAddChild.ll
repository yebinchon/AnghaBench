; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlAddChild.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlAddChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__*, i32*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_TEXT_NODE = common dso_local global i64 0, align 8
@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XML_ATTRIBUTE_DECL = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @xmlAddChild(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = icmp eq %struct.TYPE_15__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %289

18:                                               ; preds = %11
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %18
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %289

28:                                               ; preds = %21
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = icmp eq %struct.TYPE_15__* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %289

33:                                               ; preds = %28
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XML_TEXT_NODE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %110

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XML_TEXT_NODE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 9
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @xmlNodeAddContent(%struct.TYPE_15__* %59, i32* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = call i32 @xmlFreeNode(%struct.TYPE_15__* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %3, align 8
  br label %289

67:                                               ; preds = %50, %45, %39
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = icmp ne %struct.TYPE_15__* %70, null
  br i1 %71, label %72, label %109

72:                                               ; preds = %67
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XML_TEXT_NODE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %72
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %80
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = icmp ne %struct.TYPE_15__* %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 9
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @xmlNodeAddContent(%struct.TYPE_15__* %99, i32* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = call i32 @xmlFreeNode(%struct.TYPE_15__* %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %3, align 8
  br label %289

109:                                              ; preds = %90, %80, %72, %67
  br label %110

110:                                              ; preds = %109, %33
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 10
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %6, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 10
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %116, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %110
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @xmlSetTreeDoc(%struct.TYPE_15__* %125, i64 %128)
  br label %130

130:                                              ; preds = %124, %110
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = icmp eq %struct.TYPE_15__* %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %3, align 8
  br label %289

136:                                              ; preds = %130
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @XML_TEXT_NODE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %136
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 9
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %142
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = icmp ne %struct.TYPE_15__* %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 9
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @xmlNodeAddContent(%struct.TYPE_15__* %152, i32* %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = call i32 @xmlFreeNode(%struct.TYPE_15__* %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %159, %struct.TYPE_15__** %3, align 8
  br label %289

160:                                              ; preds = %147, %142, %136
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %261

166:                                              ; preds = %160
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %289

173:                                              ; preds = %166
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 7
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = icmp ne %struct.TYPE_16__* %176, null
  br i1 %177, label %178, label %228

178:                                              ; preds = %173
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = icmp eq %struct.TYPE_14__* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call %struct.TYPE_16__* @xmlHasNsProp(%struct.TYPE_15__* %184, i64 %187, i32* null)
  store %struct.TYPE_16__* %188, %struct.TYPE_16__** %7, align 8
  br label %200

189:                                              ; preds = %178
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = call %struct.TYPE_16__* @xmlHasNsProp(%struct.TYPE_15__* %190, i64 %193, i32* %198)
  store %struct.TYPE_16__* %199, %struct.TYPE_16__** %7, align 8
  br label %200

200:                                              ; preds = %189, %183
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = icmp ne %struct.TYPE_16__* %201, null
  br i1 %202, label %203, label %220

203:                                              ; preds = %200
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = bitcast %struct.TYPE_15__* %205 to %struct.TYPE_16__*
  %207 = icmp ne %struct.TYPE_16__* %204, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @XML_ATTRIBUTE_DECL, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %216 = bitcast %struct.TYPE_16__* %215 to %struct.TYPE_15__*
  %217 = call i32 @xmlUnlinkNode(%struct.TYPE_15__* %216)
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %219 = call i32 @xmlFreeProp(%struct.TYPE_16__* %218)
  br label %220

220:                                              ; preds = %214, %208, %203, %200
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %223 = bitcast %struct.TYPE_15__* %222 to %struct.TYPE_16__*
  %224 = icmp eq %struct.TYPE_16__* %221, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %226, %struct.TYPE_15__** %3, align 8
  br label %289

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %173
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 7
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = icmp eq %struct.TYPE_16__* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %235 = bitcast %struct.TYPE_15__* %234 to %struct.TYPE_16__*
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 7
  store %struct.TYPE_16__* %235, %struct.TYPE_16__** %237, align 8
  br label %260

238:                                              ; preds = %228
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 7
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  store %struct.TYPE_16__* %241, %struct.TYPE_16__** %8, align 8
  br label %242

242:                                              ; preds = %247, %238
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  %246 = icmp ne %struct.TYPE_16__* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %242
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  store %struct.TYPE_16__* %250, %struct.TYPE_16__** %8, align 8
  br label %242

251:                                              ; preds = %242
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %253 = bitcast %struct.TYPE_15__* %252 to %struct.TYPE_16__*
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  store %struct.TYPE_16__* %253, %struct.TYPE_16__** %255, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %258 = bitcast %struct.TYPE_15__* %257 to %struct.TYPE_16__*
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  store %struct.TYPE_16__* %256, %struct.TYPE_16__** %259, align 8
  br label %260

260:                                              ; preds = %251, %233
  br label %287

261:                                              ; preds = %160
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 6
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = icmp eq %struct.TYPE_15__* %264, null
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 6
  store %struct.TYPE_15__* %267, %struct.TYPE_15__** %269, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 3
  store %struct.TYPE_15__* %270, %struct.TYPE_15__** %272, align 8
  br label %286

273:                                              ; preds = %261
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  store %struct.TYPE_15__* %276, %struct.TYPE_15__** %6, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 5
  store %struct.TYPE_15__* %277, %struct.TYPE_15__** %279, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 4
  store %struct.TYPE_15__* %280, %struct.TYPE_15__** %282, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 3
  store %struct.TYPE_15__* %283, %struct.TYPE_15__** %285, align 8
  br label %286

286:                                              ; preds = %273, %266
  br label %287

287:                                              ; preds = %286, %260
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %288, %struct.TYPE_15__** %3, align 8
  br label %289

289:                                              ; preds = %287, %225, %172, %151, %134, %96, %58, %32, %27, %17
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %290
}

declare dso_local i32 @xmlNodeAddContent(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @xmlFreeNode(%struct.TYPE_15__*) #1

declare dso_local i32 @xmlSetTreeDoc(%struct.TYPE_15__*, i64) #1

declare dso_local %struct.TYPE_16__* @xmlHasNsProp(%struct.TYPE_15__*, i64, i32*) #1

declare dso_local i32 @xmlUnlinkNode(%struct.TYPE_15__*) #1

declare dso_local i32 @xmlFreeProp(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
