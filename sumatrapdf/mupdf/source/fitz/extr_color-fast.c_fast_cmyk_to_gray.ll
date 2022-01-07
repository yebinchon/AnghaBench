; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_cmyk_to_gray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_cmyk_to_gray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_cmyk_to_gray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_cmyk_to_gray(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
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
  %28 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %14, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %17, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %62, %64
  %66 = sub i64 %61, %65
  store i64 %66, i64* %19, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %70, %72
  %74 = sub i64 %69, %73
  store i64 %74, i64* %20, align 8
  store i32 255, i32* %26, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %84 = call i32 @fz_throw(i32* %82, i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %77, %4
  %86 = load i64, i64* %11, align 8
  %87 = trunc i64 %86 to i32
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89, %85
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %95 = call i32 @fz_throw(i32* %93, i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %215, %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %222

101:                                              ; preds = %97
  %102 = load i64, i64* %11, align 8
  store i64 %102, i64* %28, align 8
  br label %103

103:                                              ; preds = %214, %101
  %104 = load i64, i64* %28, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %28, align 8
  %106 = icmp ne i64 %104, 0
  br i1 %106, label %107, label %215

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  store i32 %111, i32* %21, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  store i32 %115, i32* %22, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  store i32 %119, i32* %23, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 3
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  store i32 %123, i32* %24, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %107
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 4, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %26, align 4
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %26, align 4
  %136 = call i32 @fz_div255(i32 %134, i32 %135)
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %26, align 4
  %139 = call i32 @fz_div255(i32 %137, i32 %138)
  store i32 %139, i32* %22, align 4
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %26, align 4
  %142 = call i32 @fz_div255(i32 %140, i32 %141)
  store i32 %142, i32* %23, align 4
  %143 = load i32, i32* %24, align 4
  %144 = load i32, i32* %26, align 4
  %145 = call i32 @fz_div255(i32 %143, i32 %144)
  store i32 %145, i32* %24, align 4
  br label %146

146:                                              ; preds = %126, %107
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* %22, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %24, align 4
  %153 = add nsw i32 %151, %152
  %154 = call i32 @fz_mini(i32 %153, i32 255)
  %155 = sub nsw i32 255, %154
  store i32 %155, i32* %25, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %146
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %26, align 4
  %161 = call i32 @fz_mul255(i32 %159, i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %10, align 8
  store i8 %162, i8* %163, align 1
  br label %170

165:                                              ; preds = %146
  %166 = load i32, i32* %25, align 4
  %167 = trunc i32 %166 to i8
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %10, align 8
  store i8 %167, i8* %168, align 1
  br label %170

170:                                              ; preds = %165, %158
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %170
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 4
  store i8* %175, i8** %9, align 8
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %27, align 4
  br label %177

177:                                              ; preds = %186, %173
  %178 = load i32, i32* %27, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = load i8*, i8** %9, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %9, align 8
  %183 = load i8, i8* %181, align 1
  %184 = load i8*, i8** %10, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %10, align 8
  store i8 %183, i8* %184, align 1
  br label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %27, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %27, align 4
  br label %177

189:                                              ; preds = %177
  %190 = load i32, i32* %15, align 4
  %191 = load i8*, i8** %9, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %9, align 8
  br label %206

194:                                              ; preds = %170
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 4, %195
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i8*, i8** %9, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %9, align 8
  %202 = load i32, i32* %17, align 4
  %203 = load i8*, i8** %10, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %10, align 8
  br label %206

206:                                              ; preds = %194, %189
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load i32, i32* %26, align 4
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %10, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %10, align 8
  store i8 %211, i8* %212, align 1
  br label %214

214:                                              ; preds = %209, %206
  br label %103

215:                                              ; preds = %103
  %216 = load i64, i64* %19, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 %216
  store i8* %218, i8** %10, align 8
  %219 = load i64, i64* %20, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 %219
  store i8* %221, i8** %9, align 8
  br label %97

222:                                              ; preds = %97
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_div255(i32, i32) #1

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i32 @fz_mul255(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
