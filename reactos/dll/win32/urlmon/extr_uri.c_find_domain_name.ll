; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_find_domain_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_find_domain_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@recognized_tlds = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Found domain name %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_domain_name(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = getelementptr inbounds i32, i32* %17, i64 -1
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %6, align 8
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %278

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32* @memrchrW(i32* %24, i8 signext 46, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %278

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32* @memrchrW(i32* %31, i8 signext 46, i32 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %104, label %42

42:                                               ; preds = %30
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -1
  %54 = ptrtoint i32* %51 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = icmp slt i64 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %278

60:                                               ; preds = %50
  br label %102

61:                                               ; preds = %42
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = icmp eq i64 %67, 3
  br i1 %68, label %69, label %91

69:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %87, %69
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @recognized_tlds, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @recognized_tlds, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @StrCmpNIW(i32* %76, i32 %82, i32 3)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  br label %278

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %70

90:                                               ; preds = %70
  br label %101

91:                                               ; preds = %61
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = icmp slt i64 %97, 3
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %278

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %90
  br label %102

102:                                              ; preds = %101, %60
  %103 = load i32*, i32** %6, align 8
  store i32 0, i32* %103, align 4
  br label %256

104:                                              ; preds = %30
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32*, i32** %7, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = icmp sgt i64 %111, 3
  br i1 %112, label %113, label %123

113:                                              ; preds = %104
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32*, i32** %4, align 8
  %117 = ptrtoint i32* %115 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = load i32*, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  br label %255

123:                                              ; preds = %104
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = ptrtoint i32* %124 to i64
  %128 = ptrtoint i32* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  %131 = icmp slt i64 %130, 4
  br i1 %131, label %132, label %244

132:                                              ; preds = %123
  %133 = load i32*, i32** %7, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = ptrtoint i32* %133 to i64
  %137 = ptrtoint i32* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  %140 = icmp eq i64 %139, 3
  br i1 %140, label %141, label %218

141:                                              ; preds = %132
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %205, %141
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** @recognized_tlds, align 8
  %145 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %144)
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %208

147:                                              ; preds = %142
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @recognized_tlds, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @StrCmpNIW(i32* %149, i32 %155, i32 3)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %204, label %158

158:                                              ; preds = %147
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = ptrtoint i32* %160 to i64
  %163 = ptrtoint i32* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 4
  %166 = trunc i64 %165 to i32
  %167 = call i32* @memrchrW(i32* %159, i8 signext 46, i32 %166)
  store i32* %167, i32** %12, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %158
  %171 = load i32*, i32** %6, align 8
  store i32 0, i32* %171, align 4
  br label %182

172:                                              ; preds = %158
  %173 = load i32*, i32** %12, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32*, i32** %4, align 8
  %176 = ptrtoint i32* %174 to i64
  %177 = ptrtoint i32* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 4
  %180 = trunc i64 %179 to i32
  %181 = load i32*, i32** %6, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %172, %170
  %183 = load i32*, i32** %4, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32*, i32** %4, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32*, i32** %4, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = ptrtoint i32* %191 to i64
  %198 = ptrtoint i32* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 4
  %201 = trunc i64 %200 to i32
  %202 = call i32 @debugstr_wn(i32* %187, i32 %201)
  %203 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %202)
  br label %278

204:                                              ; preds = %147
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %142

208:                                              ; preds = %142
  %209 = load i32*, i32** %8, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32*, i32** %4, align 8
  %212 = ptrtoint i32* %210 to i64
  %213 = ptrtoint i32* %211 to i64
  %214 = sub i64 %212, %213
  %215 = sdiv exact i64 %214, 4
  %216 = trunc i64 %215 to i32
  %217 = load i32*, i32** %6, align 8
  store i32 %216, i32* %217, align 4
  br label %243

218:                                              ; preds = %132
  %219 = load i32*, i32** %4, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = load i32*, i32** %4, align 8
  %222 = ptrtoint i32* %220 to i64
  %223 = ptrtoint i32* %221 to i64
  %224 = sub i64 %222, %223
  %225 = sdiv exact i64 %224, 4
  %226 = trunc i64 %225 to i32
  %227 = call i32* @memrchrW(i32* %219, i8 signext 46, i32 %226)
  store i32* %227, i32** %13, align 8
  %228 = load i32*, i32** %13, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %218
  %231 = load i32*, i32** %6, align 8
  store i32 0, i32* %231, align 4
  br label %242

232:                                              ; preds = %218
  %233 = load i32*, i32** %13, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32*, i32** %4, align 8
  %236 = ptrtoint i32* %234 to i64
  %237 = ptrtoint i32* %235 to i64
  %238 = sub i64 %236, %237
  %239 = sdiv exact i64 %238, 4
  %240 = trunc i64 %239 to i32
  %241 = load i32*, i32** %6, align 8
  store i32 %240, i32* %241, align 4
  br label %242

242:                                              ; preds = %232, %230
  br label %243

243:                                              ; preds = %242, %208
  br label %254

244:                                              ; preds = %123
  %245 = load i32*, i32** %8, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32*, i32** %4, align 8
  %248 = ptrtoint i32* %246 to i64
  %249 = ptrtoint i32* %247 to i64
  %250 = sub i64 %248, %249
  %251 = sdiv exact i64 %250, 4
  %252 = trunc i64 %251 to i32
  %253 = load i32*, i32** %6, align 8
  store i32 %252, i32* %253, align 4
  br label %254

254:                                              ; preds = %244, %243
  br label %255

255:                                              ; preds = %254, %113
  br label %256

256:                                              ; preds = %255, %102
  %257 = load i32*, i32** %4, align 8
  %258 = load i32*, i32** %6, align 8
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32*, i32** %4, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32*, i32** %4, align 8
  %267 = load i32*, i32** %6, align 8
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = ptrtoint i32* %265 to i64
  %272 = ptrtoint i32* %270 to i64
  %273 = sub i64 %271, %272
  %274 = sdiv exact i64 %273, 4
  %275 = trunc i64 %274 to i32
  %276 = call i32 @debugstr_wn(i32* %261, i32 %275)
  %277 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %256, %182, %99, %85, %59, %29, %22
  ret void
}

declare dso_local i32* @memrchrW(i32*, i8 signext, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @StrCmpNIW(i32*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
