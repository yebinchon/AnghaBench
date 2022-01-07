; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_base64_codec.c_decodeBase64.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_base64_codec.c_decodeBase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"in_len: %d\0A\00", align 1
@SEC_E_INVALID_TOKEN = common dso_local global i32 0, align 4
@SEC_E_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decodeBase64(i8* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = srem i32 %23, 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %27, i32* %6, align 4
  br label %262

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @SEC_E_BUFFER_TOO_SMALL, align 4
  store i32 %33, i32* %6, align 4
  br label %262

34:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %70, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %106

38:                                               ; preds = %35
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @decode(i8 signext %41)
  store i32 %42, i32* %15, align 4
  %43 = icmp sgt i32 %42, 63
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %45, i32* %6, align 4
  br label %262

46:                                               ; preds = %38
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @decode(i8 signext %49)
  store i32 %50, i32* %16, align 4
  %51 = icmp sgt i32 %50, 63
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %53, i32* %6, align 4
  br label %262

54:                                               ; preds = %46
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @decode(i8 signext %57)
  store i32 %58, i32* %17, align 4
  %59 = icmp sgt i32 %58, 63
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %61, i32* %6, align 4
  br label %262

62:                                               ; preds = %54
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @decode(i8 signext %65)
  store i32 %66, i32* %18, align 4
  %67 = icmp sgt i32 %66, 63
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %69, i32* %6, align 4
  br label %262

70:                                               ; preds = %62
  %71 = load i32, i32* %15, align 4
  %72 = shl i32 %71, 2
  %73 = load i32, i32* %16, align 4
  %74 = ashr i32 %73, 4
  %75 = or i32 %72, %74
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 0
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %16, align 4
  %82 = shl i32 %81, 4
  %83 = load i32, i32* %17, align 4
  %84 = ashr i32 %83, 2
  %85 = or i32 %82, %84
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load i32, i32* %17, align 4
  %92 = shl i32 %91, 6
  %93 = load i32, i32* %18, align 4
  %94 = or i32 %92, %93
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %100, 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 3
  store i32 %103, i32* %13, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  store i8* %105, i8** %14, align 8
  br label %35

106:                                              ; preds = %35
  %107 = load i8*, i8** %14, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 61
  br i1 %111, label %112, label %140

112:                                              ; preds = %106
  %113 = load i8*, i8** %14, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = call i32 @decode(i8 signext %115)
  store i32 %116, i32* %15, align 4
  %117 = icmp sgt i32 %116, 63
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %119, i32* %6, align 4
  br label %262

120:                                              ; preds = %112
  %121 = load i8*, i8** %14, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @decode(i8 signext %123)
  store i32 %124, i32* %16, align 4
  %125 = icmp sgt i32 %124, 63
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %127, i32* %6, align 4
  br label %262

128:                                              ; preds = %120
  %129 = load i32, i32* %15, align 4
  %130 = shl i32 %129, 2
  %131 = load i32, i32* %16, align 4
  %132 = ashr i32 %131, 4
  %133 = or i32 %130, %132
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %258

140:                                              ; preds = %106
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 3
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 61
  br i1 %145, label %146, label %193

146:                                              ; preds = %140
  %147 = load i8*, i8** %14, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = call i32 @decode(i8 signext %149)
  store i32 %150, i32* %15, align 4
  %151 = icmp sgt i32 %150, 63
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %153, i32* %6, align 4
  br label %262

154:                                              ; preds = %146
  %155 = load i8*, i8** %14, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = call i32 @decode(i8 signext %157)
  store i32 %158, i32* %16, align 4
  %159 = icmp sgt i32 %158, 63
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %161, i32* %6, align 4
  br label %262

162:                                              ; preds = %154
  %163 = load i8*, i8** %14, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i8, i8* %164, align 1
  %166 = call i32 @decode(i8 signext %165)
  store i32 %166, i32* %17, align 4
  %167 = icmp sgt i32 %166, 63
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %169, i32* %6, align 4
  br label %262

170:                                              ; preds = %162
  %171 = load i32, i32* %15, align 4
  %172 = shl i32 %171, 2
  %173 = load i32, i32* %16, align 4
  %174 = ashr i32 %173, 4
  %175 = or i32 %172, %174
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 0
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* %16, align 4
  %182 = shl i32 %181, 4
  %183 = load i32, i32* %17, align 4
  %184 = ashr i32 %183, 2
  %185 = or i32 %182, %184
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %185, i32* %190, align 4
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 2
  store i32 %192, i32* %13, align 4
  br label %257

193:                                              ; preds = %140
  %194 = load i8*, i8** %14, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = call i32 @decode(i8 signext %196)
  store i32 %197, i32* %15, align 4
  %198 = icmp sgt i32 %197, 63
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %200, i32* %6, align 4
  br label %262

201:                                              ; preds = %193
  %202 = load i8*, i8** %14, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = call i32 @decode(i8 signext %204)
  store i32 %205, i32* %16, align 4
  %206 = icmp sgt i32 %205, 63
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %208, i32* %6, align 4
  br label %262

209:                                              ; preds = %201
  %210 = load i8*, i8** %14, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 2
  %212 = load i8, i8* %211, align 1
  %213 = call i32 @decode(i8 signext %212)
  store i32 %213, i32* %17, align 4
  %214 = icmp sgt i32 %213, 63
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %216, i32* %6, align 4
  br label %262

217:                                              ; preds = %209
  %218 = load i8*, i8** %14, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 3
  %220 = load i8, i8* %219, align 1
  %221 = call i32 @decode(i8 signext %220)
  store i32 %221, i32* %18, align 4
  %222 = icmp sgt i32 %221, 63
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load i32, i32* @SEC_E_INVALID_TOKEN, align 4
  store i32 %224, i32* %6, align 4
  br label %262

225:                                              ; preds = %217
  %226 = load i32, i32* %15, align 4
  %227 = shl i32 %226, 2
  %228 = load i32, i32* %16, align 4
  %229 = ashr i32 %228, 4
  %230 = or i32 %227, %229
  %231 = load i32*, i32** %9, align 8
  %232 = load i32, i32* %13, align 4
  %233 = add nsw i32 %232, 0
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  store i32 %230, i32* %235, align 4
  %236 = load i32, i32* %16, align 4
  %237 = shl i32 %236, 4
  %238 = load i32, i32* %17, align 4
  %239 = ashr i32 %238, 2
  %240 = or i32 %237, %239
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  store i32 %240, i32* %245, align 4
  %246 = load i32, i32* %17, align 4
  %247 = shl i32 %246, 6
  %248 = load i32, i32* %18, align 4
  %249 = or i32 %247, %248
  %250 = load i32*, i32** %9, align 8
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 %249, i32* %254, align 4
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 3
  store i32 %256, i32* %13, align 4
  br label %257

257:                                              ; preds = %225, %170
  br label %258

258:                                              ; preds = %257, %128
  %259 = load i32, i32* %13, align 4
  %260 = load i32*, i32** %11, align 8
  store i32 %259, i32* %260, align 4
  %261 = load i32, i32* @SEC_E_OK, align 4
  store i32 %261, i32* %6, align 4
  br label %262

262:                                              ; preds = %258, %223, %215, %207, %199, %168, %160, %152, %126, %118, %68, %60, %52, %44, %32, %26
  %263 = load i32, i32* %6, align 4
  ret i32 %263
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @decode(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
