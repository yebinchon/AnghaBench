; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_sort_layers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_sort_layers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64*, %struct.TYPE_14__*, %struct.TYPE_11__, %struct.TYPE_14__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_sort_layers(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 1, i64* %6, align 8
  br label %20

20:                                               ; preds = %235, %1
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %21, %25
  br i1 %26, label %27, label %238

27:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %123, %27
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %126

35:                                               ; preds = %28
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %122

51:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %121

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %117, %74
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %76
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %83
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %93
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 %111
  %113 = call i32 @memcpy(%struct.TYPE_14__* %107, %struct.TYPE_14__* %112, i32 4)
  %114 = load i64, i64* %5, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %5, align 8
  br label %116

116:                                              ; preds = %102, %93, %83
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %11, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %11, align 8
  br label %76

120:                                              ; preds = %76
  br label %121

121:                                              ; preds = %120, %71
  br label %122

122:                                              ; preds = %121, %35
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %7, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %7, align 8
  br label %28

126:                                              ; preds = %28
  store i64 0, i64* %12, align 8
  br label %127

127:                                              ; preds = %231, %126
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %128, %132
  br i1 %133, label %134, label %234

134:                                              ; preds = %127
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %13, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %230

150:                                              ; preds = %134
  store i32 1, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %151

151:                                              ; preds = %176, %150
  %152 = load i64, i64* %15, align 8
  %153 = load i64, i64* %5, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %151
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = load i64, i64* %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %13, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %155
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = load i64, i64* %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %174, %165, %155
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %15, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %15, align 8
  br label %151

179:                                              ; preds = %151
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %229

182:                                              ; preds = %179
  %183 = load i64, i64* %12, align 8
  store i64 %183, i64* %16, align 8
  br label %184

184:                                              ; preds = %225, %182
  %185 = load i64, i64* %16, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp slt i64 %185, %189
  br i1 %190, label %191, label %228

191:                                              ; preds = %184
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = load i64, i64* %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %13, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %224

201:                                              ; preds = %191
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = load i64, i64* %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %201
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = load i64, i64* %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 %214
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = load i64, i64* %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i64 %219
  %221 = call i32 @memcpy(%struct.TYPE_14__* %215, %struct.TYPE_14__* %220, i32 4)
  %222 = load i64, i64* %5, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %5, align 8
  br label %224

224:                                              ; preds = %210, %201, %191
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %16, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %16, align 8
  br label %184

228:                                              ; preds = %184
  br label %229

229:                                              ; preds = %228, %179
  br label %230

230:                                              ; preds = %229, %134
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %12, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %12, align 8
  br label %127

234:                                              ; preds = %127
  br label %235

235:                                              ; preds = %234
  %236 = load i64, i64* %6, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %6, align 8
  br label %20

238:                                              ; preds = %20
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = call i32 @free(%struct.TYPE_14__* %241)
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 3
  store %struct.TYPE_14__* %245, %struct.TYPE_14__** %247, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = mul i64 4, %252
  %254 = trunc i64 %253 to i32
  %255 = call %struct.TYPE_14__* @malloc(i32 %254)
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 1
  store %struct.TYPE_14__* %255, %struct.TYPE_14__** %257, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = icmp ne %struct.TYPE_14__* %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %238
  %263 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %263, i32* %2, align 4
  br label %266

264:                                              ; preds = %238
  %265 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %264, %262
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
