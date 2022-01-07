; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_iterator_enc.c_VP8IteratorImport.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_iterator_enc.c_VP8IteratorImport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i32*, i32, i32*, i64, i64 }

@Y_OFF_ENC = common dso_local global i64 0, align 8
@U_OFF_ENC = common dso_local global i64 0, align 8
@V_OFF_ENC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VP8IteratorImport(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %31, %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = mul nsw i32 %37, 16
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %30, i64 %39
  store i32* %40, i32** %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = mul nsw i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %43, i64 %52
  store i32* %53, i32** %10, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = mul nsw i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %56, i64 %65
  store i32* %66, i32** %11, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %70, 16
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %69, %72
  %74 = call i32 @MinSize(i64 %73, i32 16)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 16
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %77, %80
  %82 = call i32 @MinSize(i64 %81, i32 16)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  %88 = ashr i32 %87, 1
  store i32 %88, i32* %15, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @Y_OFF_ENC, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @ImportBlock(i32* %89, i32 %92, i64 %97, i32 %98, i32 %99, i32 16)
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @U_OFF_ENC, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @ImportBlock(i32* %101, i32 %104, i64 %109, i32 %110, i32 %111, i32 8)
  %113 = load i32*, i32** %11, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @V_OFF_ENC, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @ImportBlock(i32* %113, i32 %116, i64 %121, i32 %122, i32 %123, i32 8)
  %125 = load i32*, i32** %4, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %2
  br label %266

128:                                              ; preds = %2
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = call i32 @InitLeft(%struct.TYPE_8__* %132)
  br label %218

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 -1
  store i32 127, i32* %141, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 -1
  store i32 127, i32* %145, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 -1
  store i32 127, i32* %149, align 4
  br label %187

150:                                              ; preds = %134
  %151 = load i32*, i32** %9, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 -1, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 -1
  store i32 %158, i32* %162, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 -1, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %163, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 -1
  store i32 %170, i32* %174, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 -1, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 -1
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %150, %137
  %188 = load i32*, i32** %9, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 -1
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @ImportLine(i32* %189, i32 %192, i32* %195, i32 %196, i32 16)
  %198 = load i32*, i32** %10, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 -1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @ImportLine(i32* %199, i32 %202, i32* %205, i32 %206, i32 8)
  %208 = load i32*, i32** %11, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 -1
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @ImportLine(i32* %209, i32 %212, i32* %215, i32 %216, i32 8)
  br label %218

218:                                              ; preds = %187, %131
  %219 = load i32*, i32** %4, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 5
  store i32* %220, i32** %222, align 8
  %223 = load i32*, i32** %4, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 16
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 6
  store i32* %224, i32** %226, align 8
  %227 = load i32, i32* %7, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %218
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @memset(i32* %230, i32 127, i32 128)
  br label %266

232:                                              ; preds = %218
  %233 = load i32*, i32** %9, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = sub i64 0, %237
  %239 = getelementptr inbounds i32, i32* %233, i64 %238
  %240 = load i32*, i32** %4, align 8
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @ImportLine(i32* %239, i32 1, i32* %240, i32 %241, i32 16)
  %243 = load i32*, i32** %10, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = sub i64 0, %247
  %249 = getelementptr inbounds i32, i32* %243, i64 %248
  %250 = load i32*, i32** %4, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 16
  %252 = load i32, i32* %14, align 4
  %253 = call i32 @ImportLine(i32* %249, i32 1, i32* %251, i32 %252, i32 8)
  %254 = load i32*, i32** %11, align 8
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = sub i64 0, %258
  %260 = getelementptr inbounds i32, i32* %254, i64 %259
  %261 = load i32*, i32** %4, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 16
  %263 = getelementptr inbounds i32, i32* %262, i64 8
  %264 = load i32, i32* %14, align 4
  %265 = call i32 @ImportLine(i32* %260, i32 1, i32* %263, i32 %264, i32 8)
  br label %266

266:                                              ; preds = %127, %232, %229
  ret void
}

declare dso_local i32 @MinSize(i64, i32) #1

declare dso_local i32 @ImportBlock(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @InitLeft(%struct.TYPE_8__*) #1

declare dso_local i32 @ImportLine(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
