; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_decompress_rle8.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_decompress_rle8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"buffer overflow in bitmap data in bmp image\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"premature end of bitmap data in bmp image\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8**)* @bmp_decompress_rle8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bmp_decompress_rle8(i32* %0, %struct.info* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %23 = load %struct.info*, %struct.info** %6, align 8
  %24 = getelementptr inbounds %struct.info, %struct.info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.info*, %struct.info** %6, align 8
  %27 = getelementptr inbounds %struct.info, %struct.info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = add nsw i32 %29, 3
  %31 = sdiv i32 %30, 4
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %15, align 4
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i8* @fz_calloc(i32* %34, i32 %35, i32 %36)
  store i8* %37, i8** %12, align 8
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8* %43, i8** %11, align 8
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %249, %4
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8**, i8*** %8, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ule i8* %46, %48
  br i1 %49, label %50, label %250

50:                                               ; preds = %44
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i8*, i8** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %9, align 8
  store i32 0, i32* %16, align 4
  br label %249

76:                                               ; preds = %56, %50
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i8*, i8** %11, align 8
  store i8* %89, i8** %10, align 8
  br label %250

90:                                               ; preds = %82, %76
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %90
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %131

102:                                              ; preds = %96
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 4
  %105 = load i8**, i8*** %8, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ugt i8* %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %250

109:                                              ; preds = %102
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %15, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %118, %121
  %123 = load i8*, i8** %10, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %10, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  store i8* %127, i8** %9, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %16, align 4
  br label %247

131:                                              ; preds = %96, %90
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %206

137:                                              ; preds = %131
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp sge i32 %141, 3
  br i1 %142, label %143, label %206

143:                                              ; preds = %137
  %144 = load i8*, i8** %9, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 1
  %150 = sdiv i32 %149, 2
  %151 = mul nsw i32 %150, 2
  store i32 %151, i32* %21, align 4
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8**, i8*** %8, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ugt i8* %156, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %143
  br label %250

161:                                              ; preds = %143
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* %20, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8*, i8** %11, align 8
  %167 = icmp ugt i8* %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @fz_warn(i32* %169, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %250

171:                                              ; preds = %161
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  store i8* %173, i8** %9, align 8
  store i32 0, i32* %17, align 4
  br label %174

174:                                              ; preds = %188, %171
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %20, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %174
  %179 = load i8*, i8** %9, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = load i8*, i8** %10, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 %183, i8* %187, align 1
  br label %188

188:                                              ; preds = %178
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %174

191:                                              ; preds = %174
  %192 = load i32, i32* %20, align 4
  %193 = load i8*, i8** %10, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8* %195, i8** %10, align 8
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  %198 = sdiv i32 %197, 2
  %199 = mul nsw i32 %198, 2
  %200 = load i8*, i8** %9, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8* %202, i8** %9, align 8
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %16, align 4
  br label %246

206:                                              ; preds = %137, %131
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  store i32 %210, i32* %22, align 4
  %211 = load i8*, i8** %10, align 8
  %212 = load i32, i32* %22, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8*, i8** %11, align 8
  %216 = icmp ugt i8* %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %206
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @fz_warn(i32* %218, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %250

220:                                              ; preds = %206
  store i32 0, i32* %17, align 4
  br label %221

221:                                              ; preds = %233, %220
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %22, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %221
  %226 = load i8*, i8** %9, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  %228 = load i8, i8* %227, align 1
  %229 = load i8*, i8** %10, align 8
  %230 = load i32, i32* %17, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  store i8 %228, i8* %232, align 1
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  br label %221

236:                                              ; preds = %221
  %237 = load i32, i32* %22, align 4
  %238 = load i8*, i8** %10, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %10, align 8
  %241 = load i8*, i8** %9, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 2
  store i8* %242, i8** %9, align 8
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %16, align 4
  br label %246

246:                                              ; preds = %236, %191
  br label %247

247:                                              ; preds = %246, %109
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248, %73
  br label %44

250:                                              ; preds = %217, %168, %160, %108, %88, %44
  %251 = load i8*, i8** %10, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = icmp ult i8* %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load i32*, i32** %5, align 8
  %256 = call i32 @fz_warn(i32* %255, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %250
  %258 = load i32, i32* @BI_RGB, align 4
  %259 = load %struct.info*, %struct.info** %6, align 8
  %260 = getelementptr inbounds %struct.info, %struct.info* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  %261 = load %struct.info*, %struct.info** %6, align 8
  %262 = getelementptr inbounds %struct.info, %struct.info* %261, i32 0, i32 2
  store i32 8, i32* %262, align 4
  %263 = load i8*, i8** %11, align 8
  %264 = load i8**, i8*** %8, align 8
  store i8* %263, i8** %264, align 8
  %265 = load i8*, i8** %12, align 8
  ret i8* %265
}

declare dso_local i8* @fz_calloc(i32*, i32, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
