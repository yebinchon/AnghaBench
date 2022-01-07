; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictExists.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32*, %struct.TYPE_6__* }

@INT_MAX = common dso_local global i32 0, align 4
@MIN_DICT_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlDictExists(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  store i32* null, i32** %4, align 8
  br label %268

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %12, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp uge i32 %36, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @INT_MAX, align 4
  %44 = sdiv i32 %43, 2
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %35
  store i32* null, i32** %4, align 8
  br label %268

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @xmlDictComputeKey(%struct.TYPE_5__* %48, i32* %49, i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = urem i64 %52, %55
  store i64 %56, i64* %8, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  br label %135

66:                                               ; preds = %47
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %11, align 8
  br label %72

72:                                               ; preds = %105, %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @memcmp(i32* %92, i32* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %4, align 8
  br label %268

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %83, %77
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %11, align 8
  br label %72

109:                                              ; preds = %72
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %109
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @memcmp(i32* %124, i32* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %121
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %4, align 8
  br label %268

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %115, %109
  br label %135

135:                                              ; preds = %134, %65
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = icmp ne %struct.TYPE_5__* %138, null
  br i1 %139, label %140, label %267

140:                                              ; preds = %135
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MIN_DICT_SIZE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @MIN_DICT_SIZE, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %168, label %154

154:                                              ; preds = %146, %140
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MIN_DICT_SIZE, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %154
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @MIN_DICT_SIZE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %160, %146
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %12, align 4
  %174 = call i64 @xmlDictComputeKey(%struct.TYPE_5__* %171, i32* %172, i32 %173)
  store i64 %174, i64* %13, align 8
  br label %177

175:                                              ; preds = %160, %154
  %176 = load i64, i64* %9, align 8
  store i64 %176, i64* %13, align 8
  br label %177

177:                                              ; preds = %175, %168
  %178 = load i64, i64* %13, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = urem i64 %178, %183
  store i64 %184, i64* %8, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load i64, i64* %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %266

195:                                              ; preds = %177
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i64, i64* %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %201
  store %struct.TYPE_6__* %202, %struct.TYPE_6__** %14, align 8
  br label %203

203:                                              ; preds = %236, %195
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = icmp ne %struct.TYPE_6__* %206, null
  br i1 %207, label %208, label %240

208:                                              ; preds = %203
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %13, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %233

214:                                              ; preds = %208
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %214
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* %12, align 4
  %226 = call i32 @memcmp(i32* %223, i32* %224, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %220
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  store i32* %231, i32** %4, align 8
  br label %268

232:                                              ; preds = %220
  br label %233

233:                                              ; preds = %232, %214, %208
  %234 = load i64, i64* %10, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %10, align 8
  br label %236

236:                                              ; preds = %233
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  store %struct.TYPE_6__* %239, %struct.TYPE_6__** %14, align 8
  br label %203

240:                                              ; preds = %203
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %13, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %265

246:                                              ; preds = %240
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %12, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %246
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load i32*, i32** %6, align 8
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @memcmp(i32* %255, i32* %256, i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %252
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  store i32* %263, i32** %4, align 8
  br label %268

264:                                              ; preds = %252
  br label %265

265:                                              ; preds = %264, %246, %240
  br label %266

266:                                              ; preds = %265, %177
  br label %267

267:                                              ; preds = %266, %135
  store i32* null, i32** %4, align 8
  br label %268

268:                                              ; preds = %267, %260, %228, %129, %97, %46, %20
  %269 = load i32*, i32** %4, align 8
  ret i32* %269
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmlDictComputeKey(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
