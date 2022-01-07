; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_getargs.c___getmainargs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_getargs.c___getmainargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@__argv = common dso_local global i8** null, align 8
@_environ = common dso_local global i8** null, align 8
@__argc = common dso_local global i32 0, align 4
@_acmdln = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@_pgmptr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__getmainargs(i32* %0, i8*** %1, i8*** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %17, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i8**, i8*** @__argv, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load i8**, i8*** @_environ, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8**, i8*** @__argv, align 8
  %30 = load i8***, i8**** %7, align 8
  store i8** %29, i8*** %30, align 8
  %31 = load i8**, i8*** @_environ, align 8
  %32 = load i8***, i8**** %8, align 8
  store i8** %31, i8*** %32, align 8
  %33 = load i32, i32* @__argc, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %274

35:                                               ; preds = %25, %5
  store i32 0, i32* @__argc, align 4
  %36 = load i8*, i8** @_acmdln, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %18, align 8
  %38 = load i64, i64* %18, align 8
  %39 = mul i64 1, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @malloc(i32 %40)
  store i8* %41, i8** %19, align 8
  br label %42

42:                                               ; preds = %213, %209, %187, %154, %118, %106, %35
  %43 = load i32, i32* @TRUE, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %227

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %18, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %69, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** @_acmdln, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load i8*, i8** @_acmdln, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 9
  br i1 %65, label %66, label %109

66:                                               ; preds = %58, %50
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %66, %45
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %19, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @strndup(i8* %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @aexpand(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %18, align 8
  %82 = icmp uge i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %227

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i8*, i8** @_acmdln, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = load i8*, i8** @_acmdln, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 9
  br label %101

101:                                              ; preds = %93, %85
  %102 = phi i1 [ true, %85 ], [ %100, %93 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %85

106:                                              ; preds = %101
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %14, align 4
  br label %42

109:                                              ; preds = %66, %58
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %17, align 4
  %111 = load i8*, i8** @_acmdln, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 92
  br i1 %117, label %118, label %134

118:                                              ; preds = %109
  %119 = load i8*, i8** @_acmdln, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %19, align 8
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 %123, i8* %128, align 1
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %14, align 4
  br label %42

134:                                              ; preds = %109
  %135 = load i8*, i8** @_acmdln, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 34
  br i1 %141, label %142, label %213

142:                                              ; preds = %134
  %143 = load i32, i32* %13, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %169

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = srem i32 %146, 2
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %13, align 4
  %151 = sdiv i32 %150, 2
  %152 = load i32, i32* %16, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %16, align 4
  br label %168

154:                                              ; preds = %145
  %155 = load i32, i32* %13, align 4
  %156 = sdiv i32 %155, 2
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %16, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %16, align 4
  %160 = load i8*, i8** %19, align 8
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8 34, i8* %164, align 1
  store i32 0, i32* %13, align 4
  %165 = load i32, i32* @TRUE, align 4
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %42

168:                                              ; preds = %149
  store i32 0, i32* %13, align 4
  br label %197

169:                                              ; preds = %142
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %196, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %11, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %172
  %176 = load i8*, i8** @_acmdln, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 34
  br i1 %183, label %184, label %196

184:                                              ; preds = %175
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %184
  %188 = load i8*, i8** %19, align 8
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8 34, i8* %192, align 1
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* @TRUE, align 4
  store i32 %195, i32* %14, align 4
  br label %42

196:                                              ; preds = %184, %175, %172, %169
  br label %197

197:                                              ; preds = %196, %168
  store i32 0, i32* %13, align 4
  %198 = load i32, i32* @FALSE, align 4
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i32, i32* @FALSE, align 4
  br label %209

207:                                              ; preds = %197
  %208 = load i32, i32* %9, align 4
  br label %209

209:                                              ; preds = %207, %205
  %210 = phi i32 [ %206, %205 ], [ %208, %207 ]
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  br label %42

213:                                              ; preds = %134
  %214 = load i8*, i8** @_acmdln, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = load i8*, i8** %19, align 8
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %16, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  store i8 %218, i8* %223, align 1
  store i32 0, i32* %13, align 4
  %224 = load i32, i32* @FALSE, align 4
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %42

227:                                              ; preds = %83, %42
  %228 = load i8*, i8** %19, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i32, i32* @__argc, align 4
  %231 = load i32*, i32** %6, align 8
  store i32 %230, i32* %231, align 4
  %232 = load i8**, i8*** @__argv, align 8
  %233 = icmp eq i8** %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %227
  %235 = call i8* @malloc(i32 8)
  %236 = bitcast i8* %235 to i8**
  store i8** %236, i8*** @__argv, align 8
  %237 = load i8**, i8*** @__argv, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 0
  store i8* null, i8** %238, align 8
  br label %239

239:                                              ; preds = %234, %227
  %240 = load i8**, i8*** @__argv, align 8
  %241 = load i8***, i8**** %7, align 8
  store i8** %240, i8*** %241, align 8
  %242 = load i8**, i8*** @_environ, align 8
  %243 = load i8***, i8**** %8, align 8
  store i8** %242, i8*** %243, align 8
  %244 = load i32, i32* @MAX_PATH, align 4
  %245 = sext i32 %244 to i64
  %246 = mul i64 %245, 1
  %247 = trunc i64 %246 to i32
  %248 = call i8* @malloc(i32 %247)
  store i8* %248, i8** @_pgmptr, align 8
  %249 = load i8*, i8** @_pgmptr, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %266

251:                                              ; preds = %239
  %252 = load i8*, i8** @_pgmptr, align 8
  %253 = load i32, i32* @MAX_PATH, align 4
  %254 = call i32 @GetModuleFileNameA(i32* null, i8* %252, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %251
  %257 = load i8*, i8** @_pgmptr, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  store i8 0, i8* %258, align 1
  br label %265

259:                                              ; preds = %251
  %260 = load i8*, i8** @_pgmptr, align 8
  %261 = load i32, i32* @MAX_PATH, align 4
  %262 = sub nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  store i8 0, i8* %264, align 1
  br label %265

265:                                              ; preds = %259, %256
  br label %271

266:                                              ; preds = %239
  %267 = load i8**, i8*** @__argv, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 0
  %269 = load i8*, i8** %268, align 8
  %270 = call i8* @_strdup(i8* %269)
  store i8* %270, i8** @_pgmptr, align 8
  br label %271

271:                                              ; preds = %266, %265
  %272 = call i32 (...) @GetProcessHeap()
  %273 = call i32 @HeapValidate(i32 %272, i32 0, i32* null)
  br label %274

274:                                              ; preds = %271, %28
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @aexpand(i32, i32) #1

declare dso_local i32 @strndup(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @GetModuleFileNameA(i32*, i8*, i32) #1

declare dso_local i8* @_strdup(i8*) #1

declare dso_local i32 @HeapValidate(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
