; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutRTFText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutRTFText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@STREAMOUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%.*s\\\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CP_SYMBOL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"\\u%d?\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\\'%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @ME_StreamOutRTFText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_StreamOutRTFText(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @STREAMOUT_BUFFER_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @lstrlenW(i32* %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %3
  br label %27

27:                                               ; preds = %253, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %254

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CP_UTF8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %114

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @STREAMOUT_BUFFER_SIZE, align 4
  %39 = sdiv i32 %38, 6
  %40 = call i32 @min(i32 %37, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i64, i64* @CP_UTF8, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @STREAMOUT_BUFFER_SIZE, align 4
  %45 = call i32 @WideCharToMultiByte(i64 %41, i32 0, i32* %42, i32 %43, i8* %20, i32 %44, i32* null, i32* null)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %6, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %93, %36
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %20, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 123
  br i1 %63, label %78, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %20, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 125
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %20, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 92
  br i1 %77, label %78, label %92

78:                                               ; preds = %71, %64, %57
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %20, i64 %84
  %86 = call i32 @ME_StreamOutPrint(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %82, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %258

90:                                               ; preds = %78
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %53

96:                                               ; preds = %53
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %20, i64 %103
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @ME_StreamOutMove(%struct.TYPE_5__* %101, i8* %104, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %100
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %258

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %96
  store i32 0, i32* %10, align 4
  br label %240

114:                                              ; preds = %30
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 128
  br i1 %117, label %118, label %146

118:                                              ; preds = %114
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 123
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 125
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 92
  br i1 %129, label %130, label %135

130:                                              ; preds = %126, %122, %118
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %20, i64 %133
  store i8 92, i8* %134, align 1
  br label %135

135:                                              ; preds = %130, %126
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %6, align 8
  %138 = load i32, i32* %136, align 4
  %139 = trunc i32 %138 to i8
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %20, i64 %142
  store i8 %139, i8* %143, align 1
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %7, align 4
  br label %239

146:                                              ; preds = %114
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %15, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CP_SYMBOL, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %160

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %158
  %161 = phi i32* [ null, %158 ], [ %15, %159 ]
  %162 = call i32 @WideCharToMultiByte(i64 %150, i32 0, i32* %151, i32 1, i8* %152, i32 3, i32* null, i32* %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %20, i64 %167
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %169, align 4
  %171 = trunc i32 %170 to i16
  %172 = sext i16 %171 to i32
  %173 = call i64 @sprintf(i8* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %10, align 4
  br label %234

178:                                              ; preds = %160
  %179 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp slt i32 %181, 128
  br i1 %182, label %183, label %210

183:                                              ; preds = %178
  %184 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 123
  br i1 %187, label %198, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 125
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 92
  br i1 %197, label %198, label %203

198:                                              ; preds = %193, %188, %183
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %20, i64 %201
  store i8 92, i8* %202, align 1
  br label %203

203:                                              ; preds = %198, %193
  %204 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %20, i64 %208
  store i8 %205, i8* %209, align 1
  br label %233

210:                                              ; preds = %178
  store i32 0, i32* %13, align 4
  br label %211

211:                                              ; preds = %229, %210
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %232

215:                                              ; preds = %211
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %20, i64 %217
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = call i64 @sprintf(i8* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %224
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %10, align 4
  br label %229

229:                                              ; preds = %215
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %13, align 4
  br label %211

232:                                              ; preds = %211
  br label %233

233:                                              ; preds = %232, %203
  br label %234

234:                                              ; preds = %233, %165
  %235 = load i32*, i32** %6, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %6, align 8
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %234, %135
  br label %240

240:                                              ; preds = %239, %113
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @STREAMOUT_BUFFER_SIZE, align 4
  %243 = sub nsw i32 %242, 11
  %244 = icmp sge i32 %241, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @ME_StreamOutMove(%struct.TYPE_5__* %246, i8* %20, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %245
  %251 = load i32, i32* @FALSE, align 4
  store i32 %251, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %258

252:                                              ; preds = %245
  store i32 0, i32* %10, align 4
  br label %253

253:                                              ; preds = %252, %240
  br label %27

254:                                              ; preds = %27
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @ME_StreamOutMove(%struct.TYPE_5__* %255, i8* %20, i32 %256)
  store i32 %257, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %258

258:                                              ; preds = %254, %250, %110, %88
  %259 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %259)
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrlenW(i32*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @WideCharToMultiByte(i64, i32, i32*, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @ME_StreamOutPrint(%struct.TYPE_5__*, i8*, i32, i8*) #2

declare dso_local i32 @ME_StreamOutMove(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i64 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
