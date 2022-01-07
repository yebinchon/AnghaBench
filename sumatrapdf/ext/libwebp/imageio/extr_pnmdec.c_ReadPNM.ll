; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_pnmdec.c_ReadPNM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_pnmdec.c_ReadPNM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.Metadata = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i64, i32, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error parsing PNM header.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported P%d PNM format.\0A\00", align 1
@WEBP_MAX_DIMENSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid %dx%d dimension for PNM\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Truncated PNM file (P%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadPNM(i32* %0, i64 %1, %struct.TYPE_7__* %2, i32 %3, %struct.Metadata* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Metadata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_8__, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.Metadata* %4, %struct.Metadata** %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %16, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  store i32* %21, i32** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = call i64 @ReadHeader(%struct.TYPE_8__* %19)
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %18, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %262

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 7
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @stderr, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %262

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = icmp eq %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %262

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WEBP_MAX_DIMENSION, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WEBP_MAX_DIMENSION, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @stderr, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %63)
  br label %262

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %68, %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %72, %74
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %77, %78
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load i32, i32* @stderr, align 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %262

86:                                               ; preds = %65
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %88, 3
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %94

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %91, %90
  %95 = phi i64 [ 3, %90 ], [ %93, %91 ]
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %95, %98
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %94
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = call i32 @ImgIoUtilCheckSizeArgumentsOverflow(i64 %104, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103, %94
  br label %262

111:                                              ; preds = %103
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 %112, %115
  %117 = call i64 @malloc(i64 %116)
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %16, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %262

122:                                              ; preds = %111
  %123 = load i32*, i32** %16, align 8
  store i32* %123, i32** %17, align 8
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %228, %122
  %125 = load i32, i32* %13, align 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %231

129:                                              ; preds = %124
  %130 = load i64, i64* %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %132, %135
  %137 = add i64 %130, %136
  %138 = load i64, i64* %7, align 8
  %139 = icmp ule i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %182

145:                                              ; preds = %129
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %178, %145
  %147 = load i32, i32* %12, align 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %181

151:                                              ; preds = %146
  %152 = load i32*, i32** %6, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %153, %155
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 3, %161
  %163 = add nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load i32*, i32** %17, align 8
  %167 = load i32, i32* %12, align 4
  %168 = mul nsw i32 3, %167
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  store i32 %159, i32* %171, align 4
  %172 = load i32*, i32** %17, align 8
  %173 = load i32, i32* %12, align 4
  %174 = mul nsw i32 3, %173
  %175 = add nsw i32 %174, 0
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  store i32 %159, i32* %177, align 4
  br label %178

178:                                              ; preds = %151
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %146

181:                                              ; preds = %146
  br label %216

182:                                              ; preds = %129
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 3
  br i1 %185, label %186, label %198

186:                                              ; preds = %182
  %187 = load i32*, i32** %17, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = load i64, i64* %18, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 3, %192
  %194 = sext i32 %193 to i64
  %195 = mul i64 %194, 4
  %196 = trunc i64 %195 to i32
  %197 = call i32 @memcpy(i32* %187, i32* %190, i32 %196)
  br label %215

198:                                              ; preds = %182
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %214

202:                                              ; preds = %198
  %203 = load i32*, i32** %17, align 8
  %204 = load i32*, i32** %6, align 8
  %205 = load i64, i64* %18, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 4, %208
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 4
  %212 = trunc i64 %211 to i32
  %213 = call i32 @memcpy(i32* %203, i32* %206, i32 %212)
  br label %214

214:                                              ; preds = %202, %198
  br label %215

215:                                              ; preds = %214, %186
  br label %216

216:                                              ; preds = %215, %181
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 %218, %221
  %223 = load i64, i64* %18, align 8
  %224 = add i64 %223, %222
  store i64 %224, i64* %18, align 8
  %225 = load i64, i64* %14, align 8
  %226 = load i32*, i32** %17, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 %225
  store i32* %227, i32** %17, align 8
  br label %228

228:                                              ; preds = %216
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  br label %124

231:                                              ; preds = %124
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 4
  br i1 %243, label %244, label %250

244:                                              ; preds = %231
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %246 = load i32*, i32** %16, align 8
  %247 = load i64, i64* %14, align 8
  %248 = trunc i64 %247 to i32
  %249 = call i32 @WebPPictureImportRGBA(%struct.TYPE_7__* %245, i32* %246, i32 %248)
  br label %256

250:                                              ; preds = %231
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %252 = load i32*, i32** %16, align 8
  %253 = load i64, i64* %14, align 8
  %254 = trunc i64 %253 to i32
  %255 = call i32 @WebPPictureImportRGB(%struct.TYPE_7__* %251, i32* %252, i32 %254)
  br label %256

256:                                              ; preds = %250, %244
  %257 = phi i32 [ %249, %244 ], [ %255, %250 ]
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %11, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256
  br label %262

261:                                              ; preds = %256
  store i32 1, i32* %11, align 4
  br label %262

262:                                              ; preds = %261, %260, %121, %110, %81, %58, %47, %39, %28
  %263 = load i32*, i32** %16, align 8
  %264 = bitcast i32* %263 to i8*
  %265 = call i32 @free(i8* %264)
  %266 = load %struct.Metadata*, %struct.Metadata** %10, align 8
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %11, align 4
  ret i32 %268
}

declare dso_local i64 @ReadHeader(%struct.TYPE_8__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ImgIoUtilCheckSizeArgumentsOverflow(i64, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @WebPPictureImportRGBA(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @WebPPictureImportRGB(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
