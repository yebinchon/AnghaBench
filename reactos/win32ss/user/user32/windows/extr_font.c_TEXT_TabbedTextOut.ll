; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_font.c_TEXT_TabbedTextOut.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_font.c_TEXT_TabbedTextOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@OPAQUE = common dso_local global i64 0, align 8
@ETO_OPAQUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TEXT_TabbedTextOut(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32* %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__, align 4
  %25 = alloca %struct.TYPE_9__, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 %8, i64* %18, align 8
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %23, align 4
  %28 = load i32*, i32** %16, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %9
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @GetTextMetricsW(i32 %32, %struct.TYPE_7__* %24)
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 8, %41
  store i32 %42, i32* %19, align 4
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %258, %43
  %45 = load i32, i32* %14, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %266

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %26, align 4
  %49 = load i32, i32* %26, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %21, align 4
  br label %51

51:                                               ; preds = %65, %47
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 9
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %68

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %21, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %21, align 4
  br label %51

68:                                               ; preds = %63, %51
  %69 = load i32, i32* %21, align 4
  store i32 %69, i32* %22, align 4
  br label %70

70:                                               ; preds = %84, %68
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 9
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %87

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %22, align 4
  br label %70

87:                                               ; preds = %82, %70
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %21, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @GetTextExtentPointW(i32 %88, i8* %92, i32 %95, %struct.TYPE_8__* %20)
  %97 = load i32, i32* %21, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %220

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %162, %99
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %167

104:                                              ; preds = %100
  %105 = load i32, i32* %17, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @abs(i32 %107) #3
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %11, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %161

112:                                              ; preds = %104
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* %21, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %112
  %121 = load i32, i32* %17, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %121, %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %11, align 4
  br label %167

132:                                              ; preds = %112
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** %16, align 8
  %135 = load i32, i32* %21, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %133, %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %140, %142
  %144 = load i32, i32* %11, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %132
  %147 = load i32, i32* %17, align 4
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* %21, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %147, %153
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %155, %157
  store i32 %158, i32* %26, align 4
  br label %167

159:                                              ; preds = %132
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160, %104
  br label %162

162:                                              ; preds = %161
  %163 = load i32*, i32** %16, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %16, align 8
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %15, align 4
  br label %100

167:                                              ; preds = %146, %120, %100
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %21, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %167
  %172 = load i32, i32* %19, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %171
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %17, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load i32, i32* %19, align 4
  %180 = sdiv i32 %178, %179
  %181 = load i32, i32* %21, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %19, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %175, %184
  store i32 %185, i32* %26, align 4
  %186 = load i32, i32* %26, align 4
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %186, %188
  store i32 %189, i32* %11, align 4
  br label %219

190:                                              ; preds = %171, %167
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %21, align 4
  %193 = icmp sle i32 %191, %192
  br i1 %193, label %194, label %218

194:                                              ; preds = %190
  %195 = load i32, i32* %19, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %194
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %17, align 4
  %201 = sub nsw i32 %199, %200
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %201, %203
  %205 = load i32, i32* %19, align 4
  %206 = sub nsw i32 0, %205
  %207 = sdiv i32 %204, %206
  %208 = load i32, i32* %21, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %19, align 4
  %211 = sub nsw i32 0, %210
  %212 = mul nsw i32 %209, %211
  %213 = add nsw i32 %198, %212
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %214, %216
  store i32 %217, i32* %26, align 4
  br label %218

218:                                              ; preds = %197, %194, %190
  br label %219

219:                                              ; preds = %218, %174
  br label %225

220:                                              ; preds = %87
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %11, align 4
  br label %225

225:                                              ; preds = %220, %219
  %226 = load i64, i64* %18, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %258

228:                                              ; preds = %225
  %229 = load i32, i32* %12, align 4
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* %11, align 4
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* %12, align 4
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %233, %235
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %26, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %10, align 4
  %242 = call i64 @GetBkMode(i32 %241)
  %243 = load i64, i64* @OPAQUE, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %228
  %246 = load i32, i32* @ETO_OPAQUE, align 4
  br label %248

247:                                              ; preds = %228
  br label %248

248:                                              ; preds = %247, %245
  %249 = phi i32 [ %246, %245 ], [ 0, %247 ]
  %250 = load i8*, i8** %13, align 8
  %251 = load i32, i32* %21, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i32, i32* %22, align 4
  %255 = load i32, i32* %21, align 4
  %256 = sub nsw i32 %254, %255
  %257 = call i32 @ExtTextOutW(i32 %238, i32 %239, i32 %240, i32 %249, %struct.TYPE_9__* %25, i8* %253, i32 %256, i32* null)
  br label %258

258:                                              ; preds = %248, %225
  %259 = load i32, i32* %22, align 4
  %260 = load i32, i32* %14, align 4
  %261 = sub nsw i32 %260, %259
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %22, align 4
  %263 = load i8*, i8** %13, align 8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  store i8* %265, i8** %13, align 8
  br label %44

266:                                              ; preds = %44
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %272, i32* %273, align 4
  br label %274

274:                                              ; preds = %270, %266
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %23, align 4
  %277 = sub nsw i32 %275, %276
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @MAKELONG(i32 %277, i32 %279)
  ret i32 %280
}

declare dso_local i32 @GetTextMetricsW(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GetTextExtentPointW(i32, i8*, i32, %struct.TYPE_8__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @ExtTextOutW(i32, i32, i32, i32, %struct.TYPE_9__*, i8*, i32, i32*) #1

declare dso_local i64 @GetBkMode(i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
