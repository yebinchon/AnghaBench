; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_decode_string.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_decode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_3__*, i32, i32*, i32)* @decode_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_string(i8* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [7 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %243, %6
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %246

24:                                               ; preds = %20
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bytereverse(i32 %29)
  %31 = and i32 %30, 127
  store i32 %31, i32* %16, align 4
  store i32 32, i32* %17, align 4
  %32 = load i32, i32* %16, align 4
  switch i32 %32, label %187 [
    i32 35, label %33
    i32 36, label %43
    i32 64, label %53
    i32 91, label %63
    i32 92, label %73
    i32 93, label %83
    i32 94, label %93
    i32 95, label %103
    i32 96, label %113
    i32 123, label %123
    i32 124, label %133
    i32 125, label %143
    i32 126, label %153
    i32 13, label %163
  ]

33:                                               ; preds = %24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %17, align 4
  br label %216

43:                                               ; preds = %24
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %17, align 4
  br label %216

53:                                               ; preds = %24
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  br label %216

63:                                               ; preds = %24
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %17, align 4
  br label %216

73:                                               ; preds = %24
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %17, align 4
  br label %216

83:                                               ; preds = %24
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %17, align 4
  br label %216

93:                                               ; preds = %24
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %17, align 4
  br label %216

103:                                              ; preds = %24
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 7
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %17, align 4
  br label %216

113:                                              ; preds = %24
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 8
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %17, align 4
  br label %216

123:                                              ; preds = %24
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 9
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %17, align 4
  br label %216

133:                                              ; preds = %24
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 10
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %17, align 4
  br label %216

143:                                              ; preds = %24
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 11
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %17, align 4
  br label %216

153:                                              ; preds = %24
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 12
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %17, align 4
  br label %216

163:                                              ; preds = %24
  br label %164

164:                                              ; preds = %181, %163
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* %12, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @bytereverse(i32 %175)
  %177 = and i32 %176, 127
  %178 = icmp ne i32 %177, 11
  br label %179

179:                                              ; preds = %169, %164
  %180 = phi i1 [ false, %164 ], [ %178, %169 ]
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %164

184:                                              ; preds = %179
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 2
  store i32 %186, i32* %15, align 4
  br label %216

187:                                              ; preds = %24
  %188 = load i32, i32* %16, align 4
  %189 = icmp sge i32 %188, 8
  br i1 %189, label %190, label %207

190:                                              ; preds = %187
  %191 = load i32, i32* %16, align 4
  %192 = icmp sle i32 %191, 15
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 13, %201
  %203 = sub nsw i32 %202, 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %17, align 4
  br label %216

207:                                              ; preds = %190, %187
  %208 = load i32, i32* %16, align 4
  %209 = icmp sgt i32 %208, 32
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load i32, i32* %16, align 4
  %212 = icmp slt i32 %211, 127
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = load i32, i32* %16, align 4
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %213, %210, %207
  br label %216

216:                                              ; preds = %215, %193, %184, %153, %143, %133, %123, %113, %103, %93, %83, %73, %63, %53, %43, %33
  %217 = load i32, i32* %17, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  store i32 32, i32* %17, align 4
  br label %220

220:                                              ; preds = %219, %216
  %221 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %222 = load i32, i32* %17, align 4
  %223 = call i32 @to_utf8(i8* %221, i32 %222)
  %224 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %225 = call i64 @strlen(i8* %224)
  store i64 %225, i64* %18, align 8
  %226 = load i8*, i8** %14, align 8
  %227 = load i64, i64* %18, align 8
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  %229 = load i8*, i8** %7, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = getelementptr inbounds i8, i8* %232, i64 -1
  %234 = icmp ult i8* %228, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %220
  %236 = load i8*, i8** %14, align 8
  %237 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %238 = call i32 @strcpy(i8* %236, i8* %237)
  %239 = load i64, i64* %18, align 8
  %240 = load i8*, i8** %14, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 %239
  store i8* %241, i8** %14, align 8
  br label %242

242:                                              ; preds = %235, %220
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %15, align 4
  br label %20

246:                                              ; preds = %20
  %247 = load i8*, i8** %14, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %14, align 8
  store i8 0, i8* %247, align 1
  ret void
}

declare dso_local i32 @bytereverse(i32) #1

declare dso_local i32 @to_utf8(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
