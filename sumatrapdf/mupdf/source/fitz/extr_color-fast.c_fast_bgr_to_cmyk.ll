; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_bgr_to_cmyk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_bgr_to_cmyk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_bgr_to_cmyk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_bgr_to_cmyk(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %10, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %17, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %18, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %64, %66
  %68 = sub i64 %63, %67
  store i64 %68, i64* %19, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %72, %74
  %76 = sub i64 %71, %75
  store i64 %76, i64* %20, align 8
  store i32 255, i32* %28, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %86 = call i32 @fz_throw(i32* %84, i32 %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %79, %4
  %88 = load i64, i64* %11, align 8
  %89 = trunc i64 %88 to i32
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91, %87
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %97 = call i32 @fz_throw(i32* %95, i32 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %91
  br label %99

99:                                               ; preds = %251, %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %12, align 4
  %102 = icmp ne i32 %100, 0
  br i1 %102, label %103, label %258

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %30, align 8
  br label %105

105:                                              ; preds = %250, %103
  %106 = load i64, i64* %30, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %30, align 8
  %108 = icmp ne i64 %106, 0
  br i1 %108, label %109, label %251

109:                                              ; preds = %105
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  store i32 %113, i32* %27, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  store i32 %117, i32* %26, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %25, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %109
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 3, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  store i32 %131, i32* %28, align 4
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %28, align 4
  %134 = call i32 @fz_div255(i32 %132, i32 %133)
  store i32 %134, i32* %25, align 4
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* %28, align 4
  %137 = call i32 @fz_div255(i32 %135, i32 %136)
  store i32 %137, i32* %26, align 4
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %28, align 4
  %140 = call i32 @fz_div255(i32 %138, i32 %139)
  store i32 %140, i32* %27, align 4
  br label %141

141:                                              ; preds = %124, %109
  %142 = load i32, i32* %25, align 4
  %143 = sub nsw i32 255, %142
  store i32 %143, i32* %21, align 4
  %144 = load i32, i32* %26, align 4
  %145 = sub nsw i32 255, %144
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %27, align 4
  %147 = sub nsw i32 255, %146
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* %23, align 4
  %151 = call i32 @fz_mini(i32 %149, i32 %150)
  %152 = call i32 @fz_mini(i32 %148, i32 %151)
  store i32 %152, i32* %24, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %24, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %24, align 4
  %158 = sub nsw i32 %156, %157
  store i32 %158, i32* %22, align 4
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %24, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %23, align 4
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %141
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %28, align 4
  %167 = call i8* @fz_mul255(i32 %165, i32 %166)
  %168 = ptrtoint i8* %167 to i8
  %169 = load i8*, i8** %10, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %10, align 8
  store i8 %168, i8* %169, align 1
  %171 = load i32, i32* %22, align 4
  %172 = load i32, i32* %28, align 4
  %173 = call i8* @fz_mul255(i32 %171, i32 %172)
  %174 = ptrtoint i8* %173 to i8
  %175 = load i8*, i8** %10, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %10, align 8
  store i8 %174, i8* %175, align 1
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* %28, align 4
  %179 = call i8* @fz_mul255(i32 %177, i32 %178)
  %180 = ptrtoint i8* %179 to i8
  %181 = load i8*, i8** %10, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %10, align 8
  store i8 %180, i8* %181, align 1
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* %28, align 4
  %185 = call i8* @fz_mul255(i32 %183, i32 %184)
  %186 = ptrtoint i8* %185 to i8
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %10, align 8
  store i8 %186, i8* %187, align 1
  br label %206

189:                                              ; preds = %141
  %190 = load i32, i32* %21, align 4
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %10, align 8
  store i8 %191, i8* %192, align 1
  %194 = load i32, i32* %22, align 4
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %10, align 8
  store i8 %195, i8* %196, align 1
  %198 = load i32, i32* %23, align 4
  %199 = trunc i32 %198 to i8
  %200 = load i8*, i8** %10, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %10, align 8
  store i8 %199, i8* %200, align 1
  %202 = load i32, i32* %24, align 4
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %10, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %10, align 8
  store i8 %203, i8* %204, align 1
  br label %206

206:                                              ; preds = %189, %164
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %230

209:                                              ; preds = %206
  %210 = load i8*, i8** %9, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 3
  store i8* %211, i8** %9, align 8
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %29, align 4
  br label %213

213:                                              ; preds = %222, %209
  %214 = load i32, i32* %29, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = load i8*, i8** %9, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %9, align 8
  %219 = load i8, i8* %217, align 1
  %220 = load i8*, i8** %10, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %10, align 8
  store i8 %219, i8* %220, align 1
  br label %222

222:                                              ; preds = %216
  %223 = load i32, i32* %29, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %29, align 4
  br label %213

225:                                              ; preds = %213
  %226 = load i32, i32* %15, align 4
  %227 = load i8*, i8** %9, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %9, align 8
  br label %242

230:                                              ; preds = %206
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 3, %231
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %232, %233
  %235 = load i8*, i8** %9, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %9, align 8
  %238 = load i32, i32* %17, align 4
  %239 = load i8*, i8** %10, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8* %241, i8** %10, align 8
  br label %242

242:                                              ; preds = %230, %225
  %243 = load i32, i32* %18, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load i32, i32* %28, align 4
  %247 = trunc i32 %246 to i8
  %248 = load i8*, i8** %10, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %10, align 8
  store i8 %247, i8* %248, align 1
  br label %250

250:                                              ; preds = %245, %242
  br label %105

251:                                              ; preds = %105
  %252 = load i64, i64* %19, align 8
  %253 = load i8*, i8** %10, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 %252
  store i8* %254, i8** %10, align 8
  %255 = load i64, i64* %20, align 8
  %256 = load i8*, i8** %9, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 %255
  store i8* %257, i8** %9, align 8
  br label %99

258:                                              ; preds = %99
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_div255(i32, i32) #1

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i8* @fz_mul255(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
