; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_find_ne_resource.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_find_ne_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@SEEK_CUR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No resources in NE dll\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No typeid entry found for %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"No resid entry found for %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*)* @find_ne_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ne_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SEEK_CUR, align 4
  %27 = call i32 @LZSeek(i32 %25, i32 0, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %7, align 4
  %29 = bitcast %struct.TYPE_6__* %12 to i8*
  %30 = call i32 @LZRead(i32 %28, i8* %29, i32 8)
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 8, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %6, align 4
  br label %274

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %6, align 4
  br label %274

46:                                               ; preds = %35
  %47 = load i32, i32* %17, align 4
  %48 = call i32* @heap_alloc(i32 %47)
  store i32* %48, i32** %16, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %274

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @SEEK_SET, align 4
  %60 = call i32 @LZSeek(i32 %54, i32 %58, i32 %59)
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @LZRead(i32 %62, i8* %64, i32 %65)
  %67 = icmp ne i32 %61, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @heap_free(i32* %69)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %6, align 4
  br label %274

72:                                               ; preds = %53
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = bitcast i32* %74 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %13, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @IS_INTRESOURCE(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %126, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @strlen(i32 %80)
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %114, %79
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %82
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 32768
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %87
  %94 = load i32*, i32** %16, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32* %99, i32** %20, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %19, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  %105 = load i32*, i32** %20, align 8
  %106 = bitcast i32* %105 to i8*
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @strncasecmp(i8* %107, i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %104
  br label %162

113:                                              ; preds = %104, %93
  br label %114

114:                                              ; preds = %113, %87
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 1
  %117 = bitcast %struct.TYPE_4__* %116 to i8*
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 24
  %123 = getelementptr inbounds i8, i8* %117, i64 %122
  %124 = bitcast i8* %123 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %124, %struct.TYPE_4__** %13, align 8
  br label %82

125:                                              ; preds = %82
  br label %156

126:                                              ; preds = %72
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @LOWORD(i32 %127)
  %129 = or i32 %128, 32768
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %21, align 8
  br label %131

131:                                              ; preds = %144, %126
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %21, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %162

144:                                              ; preds = %136
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 1
  %147 = bitcast %struct.TYPE_4__* %146 to i8*
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 24
  %153 = getelementptr inbounds i8, i8* %147, i64 %152
  %154 = bitcast i8* %153 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %154, %struct.TYPE_4__** %13, align 8
  br label %131

155:                                              ; preds = %131
  br label %156

156:                                              ; preds = %155, %125
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %16, align 8
  %160 = call i32 @heap_free(i32* %159)
  %161 = load i32, i32* @FALSE, align 4
  store i32 %161, i32* %6, align 4
  br label %274

162:                                              ; preds = %143, %112
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 1
  %165 = bitcast %struct.TYPE_4__* %164 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %165, %struct.TYPE_5__** %14, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @IS_INTRESOURCE(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %212, label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @strlen(i32 %170)
  store i32 %171, i32* %22, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %18, align 4
  br label %175

175:                                              ; preds = %206, %169
  %176 = load i32, i32* %18, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %211

178:                                              ; preds = %175
  %179 = load i32*, i32** %16, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  store i32* %184, i32** %23, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, 32768
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  br label %206

191:                                              ; preds = %178
  %192 = load i32*, i32** %23, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %22, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load i32*, i32** %23, align 8
  %198 = bitcast i32* %197 to i8*
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %22, align 4
  %202 = call i32 @strncasecmp(i8* %199, i32 %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %196
  br label %244

205:                                              ; preds = %196, %191
  br label %206

206:                                              ; preds = %205, %190
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %18, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 1
  store %struct.TYPE_5__* %210, %struct.TYPE_5__** %14, align 8
  br label %175

211:                                              ; preds = %175
  br label %238

212:                                              ; preds = %162
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @LOWORD(i32 %213)
  %215 = or i32 %214, 32768
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %24, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %18, align 4
  br label %220

220:                                              ; preds = %232, %212
  %221 = load i32, i32* %18, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %220
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* %24, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %244

231:                                              ; preds = %223
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %18, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %18, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 1
  store %struct.TYPE_5__* %236, %struct.TYPE_5__** %14, align 8
  br label %220

237:                                              ; preds = %220
  br label %238

238:                                              ; preds = %237, %211
  %239 = load i32, i32* %8, align 4
  %240 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %239)
  %241 = load i32*, i32** %16, align 8
  %242 = call i32 @heap_free(i32* %241)
  %243 = load i32, i32* @FALSE, align 4
  store i32 %243, i32* %6, align 4
  br label %274

244:                                              ; preds = %230, %204
  %245 = load i32*, i32** %10, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %257

247:                                              ; preds = %244
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i32*, i32** %16, align 8
  %252 = bitcast i32* %251 to i64*
  %253 = load i64, i64* %252, align 8
  %254 = shl i64 %250, %253
  %255 = trunc i64 %254 to i32
  %256 = load i32*, i32** %10, align 8
  store i32 %255, i32* %256, align 4
  br label %257

257:                                              ; preds = %247, %244
  %258 = load i32*, i32** %11, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %270

260:                                              ; preds = %257
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load i32*, i32** %16, align 8
  %265 = bitcast i32* %264 to i64*
  %266 = load i64, i64* %265, align 8
  %267 = shl i64 %263, %266
  %268 = trunc i64 %267 to i32
  %269 = load i32*, i32** %11, align 8
  store i32 %268, i32* %269, align 4
  br label %270

270:                                              ; preds = %260, %257
  %271 = load i32*, i32** %16, align 8
  %272 = call i32 @heap_free(i32* %271)
  %273 = load i32, i32* @TRUE, align 4
  store i32 %273, i32* %6, align 4
  br label %274

274:                                              ; preds = %270, %238, %156, %68, %51, %43, %33
  %275 = load i32, i32* %6, align 4
  ret i32 %275
}

declare dso_local i32 @LZSeek(i32, i32, i32) #1

declare dso_local i32 @LZRead(i32, i8*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @IS_INTRESOURCE(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
