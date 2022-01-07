; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_extract.c_get_custom_from_yuv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_extract.c_get_custom_from_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@U8 = common dso_local global i32 0, align 4
@V8 = common dso_local global i32 0, align 4
@U10 = common dso_local global i32 0, align 4
@V10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32, i32*)* @get_custom_from_yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_custom_from_yuv(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32*], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca [2 x i32*], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %66, align 8
  %75 = getelementptr inbounds i32*, i32** %66, i64 1
  %76 = getelementptr inbounds i32*, i32** %66, i64 2
  br label %77

77:                                               ; preds = %77, %6
  %78 = phi i32** [ %75, %6 ], [ %79, %77 ]
  store i32* null, i32** %78, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  %80 = icmp eq i32** %79, %76
  br i1 %80, label %81, label %77

81:                                               ; preds = %77
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %19, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %20, align 8
  %98 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %98, align 8
  %107 = getelementptr inbounds i32*, i32** %98, i64 1
  %108 = getelementptr inbounds i32*, i32** %98, i64 2
  br label %109

109:                                              ; preds = %109, %81
  %110 = phi i32** [ %107, %81 ], [ %111, %109 ]
  store i32* null, i32** %110, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  %112 = icmp eq i32** %111, %108
  br i1 %112, label %113, label %109

113:                                              ; preds = %109
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %22, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %23, align 8
  %130 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %131 = load i32*, i32** %130, align 16
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %13, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  store i32* %136, i32** %24, align 8
  br label %137

137:                                              ; preds = %188, %113
  %138 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %139 = load i32*, i32** %138, align 16
  %140 = load i32*, i32** %24, align 8
  %141 = icmp ult i32* %139, %140
  br i1 %141, label %142, label %257

142:                                              ; preds = %137
  %143 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %144 = load i32*, i32** %143, align 16
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  store i32* %147, i32** %148, align 8
  %149 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  %150 = load i32*, i32** %149, align 16
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 1
  store i32* %153, i32** %154, align 8
  %155 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %156 = load i32*, i32** %155, align 16
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32* %159, i32** %25, align 8
  br label %160

160:                                              ; preds = %186, %142
  %161 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %162 = load i32*, i32** %161, align 16
  %163 = load i32*, i32** %25, align 8
  %164 = icmp ult i32* %162, %163
  br i1 %164, label %165, label %188

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @IS_YUV_10BITS(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %174 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  %175 = load i32, i32* @U8, align 4
  %176 = load i32, i32* @V8, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = call i32 @get_custom_pix_8b(i32** %173, i32** %174, i32** %19, i32** %22, i32** %20, i32** %23, i32 %175, i32 %176, i32* %177, i32 255)
  br label %186

179:                                              ; preds = %165
  %180 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %181 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  %182 = load i32, i32* @U10, align 4
  %183 = load i32, i32* @V10, align 4
  %184 = load i32*, i32** %12, align 8
  %185 = call i32 @get_custom_pix_10b(i32** %180, i32** %181, i32** %19, i32** %22, i32** %20, i32** %23, i32 %182, i32 %183, i32* %184, i32 1023)
  br label %186

186:                                              ; preds = %179, %172
  %187 = phi i32 [ %178, %172 ], [ %185, %179 ]
  br label %160

188:                                              ; preds = %160
  %189 = load i32, i32* %13, align 4
  %190 = mul nsw i32 2, %189
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 %190, %191
  %193 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %194 = load i32*, i32** %193, align 16
  %195 = sext i32 %192 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %193, align 16
  %197 = load i32, i32* %14, align 4
  %198 = mul nsw i32 2, %197
  %199 = load i32, i32* %15, align 4
  %200 = sub nsw i32 %198, %199
  %201 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  %202 = load i32*, i32** %201, align 16
  %203 = sext i32 %200 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %201, align 16
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = sub nsw i32 %212, %213
  %215 = load i32*, i32** %19, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %19, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sub nsw i32 %225, %226
  %228 = load i32*, i32** %22, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32* %230, i32** %22, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sub nsw i32 %238, %239
  %241 = load i32*, i32** %20, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32* %243, i32** %20, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load i32*, i32** %23, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32* %256, i32** %23, align 8
  br label %137

257:                                              ; preds = %137
  ret void
}

declare dso_local i32 @IS_YUV_10BITS(i32) #1

declare dso_local i32 @get_custom_pix_8b(i32**, i32**, i32**, i32**, i32**, i32**, i32, i32, i32*, i32) #1

declare dso_local i32 @get_custom_pix_10b(i32**, i32**, i32**, i32**, i32**, i32**, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
