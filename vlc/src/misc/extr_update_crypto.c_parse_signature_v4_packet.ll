; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_parse_signature_v4_packet.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_parse_signature_v4_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32* }

@GCRY_PK_DSA = common dso_local global i64 0, align 8
@GCRY_PK_RSA = common dso_local global i64 0, align 8
@ISSUER_SUBPACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, i64)* @parse_signature_v4_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_signature_v4_packet(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 1, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %14, 10
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %260

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GCRY_PK_DSA, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %17
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GCRY_PK_RSA, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %260

45:                                               ; preds = %38, %17
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @memcpy(i32* %57, i32* %58, i32 2)
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32* %61, i32** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 2
  store i64 %63, i64* %8, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @scalar_number(i32* %68, i32 2)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 4
  %75 = load i64, i64* %7, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %45
  store i64 0, i64* %4, align 8
  br label %260

78:                                               ; preds = %45
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @malloc(i64 %79)
  %81 = inttoptr i64 %80 to i32*
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32* %81, i32** %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %78
  store i64 0, i64* %4, align 8
  br label %260

93:                                               ; preds = %78
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %9, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memcpy(i32* %98, i32* %99, i32 %101)
  %103 = load i64, i64* %9, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 %103
  store i32* %105, i32** %6, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @memcpy(i32* %110, i32* %111, i32 2)
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32* %114, i32** %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, 2
  store i64 %116, i64* %8, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @scalar_number(i32* %121, i32 2)
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %126, 2
  %128 = load i64, i64* %7, align 8
  %129 = icmp ugt i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %93
  store i64 0, i64* %4, align 8
  br label %260

131:                                              ; preds = %93
  %132 = load i64, i64* %10, align 8
  %133 = call i64 @malloc(i64 %132)
  %134 = inttoptr i64 %133 to i32*
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  store i32* %134, i32** %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %131
  store i64 0, i64* %4, align 8
  br label %260

146:                                              ; preds = %131
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = load i64, i64* %10, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @memcpy(i32* %151, i32* %152, i32 %154)
  %156 = load i64, i64* %10, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %156
  store i32* %158, i32** %6, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @memcpy(i32* %161, i32* %162, i32 2)
  %164 = load i32*, i32** %6, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32* %165, i32** %6, align 8
  %166 = load i64, i64* %8, align 8
  %167 = add i64 %166, 2
  store i64 %167, i64* %8, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %11, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = call i64 @scalar_number(i32* %178, i32 2)
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  store i32* %180, i32** %12, align 8
  br label %181

181:                                              ; preds = %256, %146
  %182 = load i32*, i32** %11, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = icmp ugt i32* %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i64 0, i64* %4, align 8
  br label %260

186:                                              ; preds = %181
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %188, 192
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load i32*, i32** %11, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32*, i32** %12, align 8
  %194 = icmp ugt i32* %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i64 0, i64* %4, align 8
  br label %260

196:                                              ; preds = %190
  %197 = load i32*, i32** %11, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %11, align 8
  %199 = load i32, i32* %197, align 4
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %13, align 8
  br label %238

201:                                              ; preds = %186
  %202 = load i32*, i32** %11, align 8
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %203, 255
  br i1 %204, label %205, label %225

205:                                              ; preds = %201
  %206 = load i32*, i32** %11, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32*, i32** %12, align 8
  %209 = icmp ugt i32* %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  store i64 0, i64* %4, align 8
  br label %260

211:                                              ; preds = %205
  %212 = load i32*, i32** %11, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %213, i32** %11, align 8
  %214 = load i32, i32* %212, align 4
  %215 = sub nsw i32 %214, 192
  %216 = shl i32 %215, 8
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %13, align 8
  %218 = load i32*, i32** %11, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %11, align 8
  %220 = load i32, i32* %218, align 4
  %221 = add nsw i32 %220, 192
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %13, align 8
  %224 = add i64 %223, %222
  store i64 %224, i64* %13, align 8
  br label %237

225:                                              ; preds = %201
  %226 = load i32*, i32** %11, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %11, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 4
  %229 = load i32*, i32** %12, align 8
  %230 = icmp ugt i32* %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i64 0, i64* %4, align 8
  br label %260

232:                                              ; preds = %225
  %233 = load i32*, i32** %11, align 8
  %234 = call i64 @U32_AT(i32* %233)
  store i64 %234, i64* %13, align 8
  %235 = load i32*, i32** %11, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 4
  store i32* %236, i32** %11, align 8
  br label %237

237:                                              ; preds = %232, %211
  br label %238

238:                                              ; preds = %237, %196
  %239 = load i32*, i32** %11, align 8
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @ISSUER_SUBPACKET, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %238
  %244 = load i32*, i32** %11, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 9
  %246 = load i32*, i32** %12, align 8
  %247 = icmp ugt i32* %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  store i64 0, i64* %4, align 8
  br label %260

249:                                              ; preds = %243
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 2
  %252 = load i32*, i32** %11, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = call i32 @memcpy(i32* %251, i32* %253, i32 8)
  %255 = load i64, i64* %8, align 8
  store i64 %255, i64* %4, align 8
  br label %260

256:                                              ; preds = %238
  %257 = load i64, i64* %13, align 8
  %258 = load i32*, i32** %11, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 %257
  store i32* %259, i32** %11, align 8
  br label %181

260:                                              ; preds = %249, %248, %231, %210, %195, %185, %145, %130, %92, %77, %44, %16
  %261 = load i64, i64* %4, align 8
  ret i64 %261
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @scalar_number(i32*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @U32_AT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
