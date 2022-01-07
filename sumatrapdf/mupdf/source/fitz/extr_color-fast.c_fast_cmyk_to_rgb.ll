; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_cmyk_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_cmyk_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_cmyk_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_cmyk_to_rgb(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
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

99:                                               ; preds = %243, %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %12, align 4
  %102 = icmp ne i32 %100, 0
  br i1 %102, label %103, label %250

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %30, align 8
  br label %105

105:                                              ; preds = %242, %103
  %106 = load i64, i64* %30, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %30, align 8
  %108 = icmp ne i64 %106, 0
  br i1 %108, label %109, label %243

109:                                              ; preds = %105
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  store i32 %113, i32* %21, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  store i32 %117, i32* %22, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %23, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  store i32 %125, i32* %24, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %109
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 4, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  store i32 %135, i32* %28, align 4
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %28, align 4
  %138 = call i32 @fz_div255(i32 %136, i32 %137)
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %28, align 4
  %141 = call i32 @fz_div255(i32 %139, i32 %140)
  store i32 %141, i32* %22, align 4
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %28, align 4
  %144 = call i32 @fz_div255(i32 %142, i32 %143)
  store i32 %144, i32* %23, align 4
  %145 = load i32, i32* %24, align 4
  %146 = load i32, i32* %28, align 4
  %147 = call i32 @fz_div255(i32 %145, i32 %146)
  store i32 %147, i32* %24, align 4
  br label %148

148:                                              ; preds = %128, %109
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %24, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i32 @fz_mini(i32 %151, i32 255)
  %153 = sub nsw i32 255, %152
  store i32 %153, i32* %25, align 4
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %24, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @fz_mini(i32 %156, i32 255)
  %158 = sub nsw i32 255, %157
  store i32 %158, i32* %26, align 4
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %24, align 4
  %161 = add nsw i32 %159, %160
  %162 = call i32 @fz_mini(i32 %161, i32 255)
  %163 = sub nsw i32 255, %162
  store i32 %163, i32* %27, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %148
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %28, align 4
  %169 = call i8* @fz_mul255(i32 %167, i32 %168)
  %170 = ptrtoint i8* %169 to i8
  %171 = load i8*, i8** %10, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %10, align 8
  store i8 %170, i8* %171, align 1
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* %28, align 4
  %175 = call i8* @fz_mul255(i32 %173, i32 %174)
  %176 = ptrtoint i8* %175 to i8
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %10, align 8
  store i8 %176, i8* %177, align 1
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* %28, align 4
  %181 = call i8* @fz_mul255(i32 %179, i32 %180)
  %182 = ptrtoint i8* %181 to i8
  %183 = load i8*, i8** %10, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %10, align 8
  store i8 %182, i8* %183, align 1
  br label %198

185:                                              ; preds = %148
  %186 = load i32, i32* %25, align 4
  %187 = trunc i32 %186 to i8
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %10, align 8
  store i8 %187, i8* %188, align 1
  %190 = load i32, i32* %26, align 4
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %10, align 8
  store i8 %191, i8* %192, align 1
  %194 = load i32, i32* %27, align 4
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %10, align 8
  store i8 %195, i8* %196, align 1
  br label %198

198:                                              ; preds = %185, %166
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %198
  %202 = load i8*, i8** %9, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 4
  store i8* %203, i8** %9, align 8
  %204 = load i32, i32* %14, align 4
  store i32 %204, i32* %29, align 4
  br label %205

205:                                              ; preds = %214, %201
  %206 = load i32, i32* %29, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %205
  %209 = load i8*, i8** %9, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %9, align 8
  %211 = load i8, i8* %209, align 1
  %212 = load i8*, i8** %10, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %10, align 8
  store i8 %211, i8* %212, align 1
  br label %214

214:                                              ; preds = %208
  %215 = load i32, i32* %29, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %29, align 4
  br label %205

217:                                              ; preds = %205
  %218 = load i32, i32* %15, align 4
  %219 = load i8*, i8** %9, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8* %221, i8** %9, align 8
  br label %234

222:                                              ; preds = %198
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 4, %223
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i8*, i8** %9, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %9, align 8
  %230 = load i32, i32* %17, align 4
  %231 = load i8*, i8** %10, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  store i8* %233, i8** %10, align 8
  br label %234

234:                                              ; preds = %222, %217
  %235 = load i32, i32* %18, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load i32, i32* %28, align 4
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %10, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %10, align 8
  store i8 %239, i8* %240, align 1
  br label %242

242:                                              ; preds = %237, %234
  br label %105

243:                                              ; preds = %105
  %244 = load i64, i64* %19, align 8
  %245 = load i8*, i8** %10, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 %244
  store i8* %246, i8** %10, align 8
  %247 = load i64, i64* %20, align 8
  %248 = load i8*, i8** %9, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 %247
  store i8* %249, i8** %9, align 8
  br label %99

250:                                              ; preds = %99
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
