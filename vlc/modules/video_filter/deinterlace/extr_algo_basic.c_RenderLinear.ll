; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_basic.c_RenderLinear.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_basic.c_RenderLinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenderLinear(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @VLC_UNUSED(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %236, %5
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %239

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %13, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %52, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %44, i64 %62
  store i32* %63, i32** %14, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %100

66:                                               ; preds = %27
  %67 = load i32*, i32** %15, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memcpy(i32* %67, i32* %68, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %13, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %15, align 8
  br label %100

100:                                              ; preds = %66, %27
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 2, %108
  %110 = load i32*, i32** %14, align 8
  %111 = sext i32 %109 to i64
  %112 = sub i64 0, %111
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32* %113, i32** %14, align 8
  br label %114

114:                                              ; preds = %118, %100
  %115 = load i32*, i32** %15, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = icmp ult i32* %115, %116
  br i1 %117, label %118, label %187

118:                                              ; preds = %114
  %119 = load i32*, i32** %15, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @memcpy(i32* %119, i32* %120, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %15, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %143, i64 %153
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @Merge(i32* %141, i32* %142, i32* %154, i32 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 2, %171
  %173 = load i32*, i32** %13, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %13, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %15, align 8
  br label %114

187:                                              ; preds = %114
  %188 = load i32*, i32** %15, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @memcpy(i32* %188, i32* %189, i32 %197)
  %199 = load i32, i32* %10, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %235

201:                                              ; preds = %187
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32*, i32** %13, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %13, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32*, i32** %15, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %15, align 8
  %224 = load i32*, i32** %15, align 8
  %225 = load i32*, i32** %13, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @memcpy(i32* %224, i32* %225, i32 %233)
  br label %235

235:                                              ; preds = %201, %187
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %21

239:                                              ; preds = %21
  %240 = call i32 (...) @EndMerge()
  %241 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %241
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @Merge(i32*, i32*, i32*, i32) #1

declare dso_local i32 @EndMerge(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
