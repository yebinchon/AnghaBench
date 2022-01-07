; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-predict.c_fz_predict_png.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-predict.c_fz_predict_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [43 x i8] c"unknown png predictor %d, treating as none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*, i8*, i64, i32)* @fz_predict_png to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_predict_png(i32* %0, %struct.TYPE_3__* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %11, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i64, i64* %11, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %31 [
    i32 0, label %35
    i32 1, label %40
    i32 2, label %84
    i32 3, label %131
    i32 4, label %189
  ]

31:                                               ; preds = %29
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @fz_warn(i32* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %31
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @memcpy(i8* %36, i8* %37, i64 %38)
  br label %250

40:                                               ; preds = %29
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %14, align 8
  br label %43

43:                                               ; preds = %52, %40
  %44 = load i64, i64* %14, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  %49 = load i8, i8* %47, align 1
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  store i8 %49, i8* %50, align 1
  br label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %14, align 8
  br label %43

55:                                               ; preds = %43
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %56, %58
  store i64 %59, i64* %14, align 8
  br label %60

60:                                               ; preds = %80, %55
  %61 = load i64, i64* %14, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 0, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %67, %74
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %9, align 8
  store i8 %76, i8* %77, align 1
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  br label %80

80:                                               ; preds = %63
  %81 = load i64, i64* %14, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %14, align 8
  br label %60

83:                                               ; preds = %60
  br label %250

84:                                               ; preds = %29
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %103, %84
  %88 = load i64, i64* %14, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  %93 = load i8, i8* %91, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8*, i8** %15, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %15, align 8
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %94, %98
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  store i8 %100, i8* %101, align 1
  br label %103

103:                                              ; preds = %90
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %14, align 8
  br label %87

106:                                              ; preds = %87
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 %107, %109
  store i64 %110, i64* %14, align 8
  br label %111

111:                                              ; preds = %127, %106
  %112 = load i64, i64* %14, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  %117 = load i8, i8* %115, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8*, i8** %15, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %15, align 8
  %121 = load i8, i8* %119, align 1
  %122 = zext i8 %121 to i32
  %123 = add nsw i32 %118, %122
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  store i8 %124, i8* %125, align 1
  br label %127

127:                                              ; preds = %114
  %128 = load i64, i64* %14, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* %14, align 8
  br label %111

130:                                              ; preds = %111
  br label %250

131:                                              ; preds = %29
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %14, align 8
  br label %134

134:                                              ; preds = %151, %131
  %135 = load i64, i64* %14, align 8
  %136 = icmp ugt i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %10, align 8
  %140 = load i8, i8* %138, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8*, i8** %15, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %15, align 8
  %144 = load i8, i8* %142, align 1
  %145 = zext i8 %144 to i32
  %146 = sdiv i32 %145, 2
  %147 = add nsw i32 %141, %146
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %9, align 8
  store i8 %148, i8* %149, align 1
  br label %151

151:                                              ; preds = %137
  %152 = load i64, i64* %14, align 8
  %153 = add i64 %152, -1
  store i64 %153, i64* %14, align 8
  br label %134

154:                                              ; preds = %134
  %155 = load i64, i64* %11, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 %155, %157
  store i64 %158, i64* %14, align 8
  br label %159

159:                                              ; preds = %185, %154
  %160 = load i64, i64* %14, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %159
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %10, align 8
  %165 = load i8, i8* %163, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 0, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8*, i8** %15, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %15, align 8
  %176 = load i8, i8* %174, align 1
  %177 = zext i8 %176 to i32
  %178 = add nsw i32 %173, %177
  %179 = sdiv i32 %178, 2
  %180 = add nsw i32 %166, %179
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %9, align 8
  store i8 %181, i8* %182, align 1
  %183 = load i8*, i8** %9, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %9, align 8
  br label %185

185:                                              ; preds = %162
  %186 = load i64, i64* %14, align 8
  %187 = add i64 %186, -1
  store i64 %187, i64* %14, align 8
  br label %159

188:                                              ; preds = %159
  br label %250

189:                                              ; preds = %29
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %14, align 8
  br label %192

192:                                              ; preds = %208, %189
  %193 = load i64, i64* %14, align 8
  %194 = icmp ugt i64 %193, 0
  br i1 %194, label %195, label %211

195:                                              ; preds = %192
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %10, align 8
  %198 = load i8, i8* %196, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8*, i8** %15, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %15, align 8
  %202 = load i8, i8* %200, align 1
  %203 = call i32 @paeth(i8 zeroext 0, i8 zeroext %202, i8 zeroext 0)
  %204 = add nsw i32 %199, %203
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  store i8 %205, i8* %206, align 1
  br label %208

208:                                              ; preds = %195
  %209 = load i64, i64* %14, align 8
  %210 = add i64 %209, -1
  store i64 %210, i64* %14, align 8
  br label %192

211:                                              ; preds = %192
  %212 = load i64, i64* %11, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = sub i64 %212, %214
  store i64 %215, i64* %14, align 8
  br label %216

216:                                              ; preds = %246, %211
  %217 = load i64, i64* %14, align 8
  %218 = icmp ugt i64 %217, 0
  br i1 %218, label %219, label %249

219:                                              ; preds = %216
  %220 = load i8*, i8** %10, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %10, align 8
  %222 = load i8, i8* %220, align 1
  %223 = zext i8 %222 to i32
  %224 = load i8*, i8** %9, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sub nsw i32 0, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = load i8*, i8** %15, align 8
  %231 = load i8, i8* %230, align 1
  %232 = load i8*, i8** %15, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sub nsw i32 0, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = call i32 @paeth(i8 zeroext %229, i8 zeroext %231, i8 zeroext %237)
  %239 = add nsw i32 %223, %238
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %9, align 8
  store i8 %240, i8* %241, align 1
  %242 = load i8*, i8** %15, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %15, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %9, align 8
  br label %246

246:                                              ; preds = %219
  %247 = load i64, i64* %14, align 8
  %248 = add i64 %247, -1
  store i64 %248, i64* %14, align 8
  br label %216

249:                                              ; preds = %216
  br label %250

250:                                              ; preds = %249, %188, %130, %83, %35
  ret void
}

declare dso_local i32 @fz_warn(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @paeth(i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
