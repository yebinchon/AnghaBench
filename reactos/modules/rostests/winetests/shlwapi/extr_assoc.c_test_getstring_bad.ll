; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_getstring_bad.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_getstring_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_getstring_bad.openwith = internal constant [13 x i8] c"OpenWith.exe\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@ASSOCSTR_EXECUTABLE = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@badBad = common dso_local global i32* null, align 8
@E_FAIL = common dso_local global i32 0, align 4
@ERROR_NO_ASSOCIATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected result : %08x\0A\00", align 1
@dotBad = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"wrong data\0A\00", align 1
@dotHtml = common dso_local global i32* null, align 8
@invalid = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i32 0, align 4
@ASSOCSTR_FRIENDLYAPPNAME = common dso_local global i32 0, align 4
@ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"got hr=%08x and len=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getstring_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getstring_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  store i32 -559038737, i32* %4, align 4
  %9 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %10 = load i32, i32* @open, align 4
  %11 = call i32 @pAssocQueryStringW(i32 0, i32 %9, i32* null, i32 %10, i8* null, i32* %4)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @E_INVALIDARG, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @expect_hr(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, -559038737
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -559038737, i32* %4, align 4
  %20 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %21 = load i32*, i32** @badBad, align 8
  %22 = load i32, i32* @open, align 4
  %23 = call i32 @pAssocQueryStringW(i32 0, i32 %20, i32* %21, i32 %22, i8* null, i32* %4)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @E_FAIL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %0
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ERROR_NO_ASSOCIATION, align 4
  %30 = call i32 @HRESULT_FROM_WIN32(i32 %29)
  %31 = icmp eq i32 %28, %30
  br label %32

32:                                               ; preds = %27, %0
  %33 = phi i1 [ true, %0 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, -559038737
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 @ARRAY_SIZE(i8* %8)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %44 = load i32*, i32** @dotBad, align 8
  %45 = load i32, i32* @open, align 4
  %46 = call i32 @pAssocQueryStringW(i32 0, i32 %43, i32* %44, i32 %45, i8* %8, i32* %4)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @E_FAIL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @ERROR_NO_ASSOCIATION, align 4
  %53 = call i32 @HRESULT_FROM_WIN32(i32 %52)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @S_OK, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %50, %32
  %60 = phi i1 [ true, %50 ], [ true, %32 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @S_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %59
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ARRAY_SIZE(i8* %8)
  %70 = icmp slt i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %8, i64 %75
  %77 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_getstring_bad.openwith, i64 0, i64 0))
  %78 = sext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = call i32 @lstrcmpiW(i8* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_getstring_bad.openwith, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %67, %59
  store i32 -559038737, i32* %4, align 4
  %87 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %88 = load i32*, i32** @dotHtml, align 8
  %89 = load i32, i32* @invalid, align 4
  %90 = call i32 @pAssocQueryStringW(i32 0, i32 %87, i32* %88, i32 %89, i8* null, i32* %4)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %93 = call i32 @HRESULT_FROM_WIN32(i32 %92)
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @ERROR_NO_ASSOCIATION, align 4
  %98 = call i32 @HRESULT_FROM_WIN32(i32 %97)
  %99 = icmp eq i32 %96, %98
  br label %100

100:                                              ; preds = %95, %86
  %101 = phi i1 [ true, %86 ], [ %99, %95 ]
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, -559038737
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %4, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %111 = load i32*, i32** @dotHtml, align 8
  %112 = load i32, i32* @open, align 4
  %113 = call i32 @pAssocQueryStringW(i32 0, i32 %110, i32* %111, i32 %112, i8* null, i32* null)
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @E_UNEXPECTED, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %100
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @E_INVALIDARG, align 4
  %120 = icmp eq i32 %118, %119
  br label %121

121:                                              ; preds = %117, %100
  %122 = phi i1 [ true, %100 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %3, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  store i32 -559038737, i32* %4, align 4
  %126 = load i32, i32* @ASSOCSTR_FRIENDLYAPPNAME, align 4
  %127 = load i32, i32* @open, align 4
  %128 = call i32 @pAssocQueryStringW(i32 0, i32 %126, i32* null, i32 %127, i8* null, i32* %4)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* @E_INVALIDARG, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @expect_hr(i32 %129, i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = icmp eq i32 %132, -559038737
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %4, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %135)
  store i32 -559038737, i32* %4, align 4
  %137 = load i32, i32* @ASSOCSTR_FRIENDLYAPPNAME, align 4
  %138 = load i32*, i32** @badBad, align 8
  %139 = load i32, i32* @open, align 4
  %140 = call i32 @pAssocQueryStringW(i32 0, i32 %137, i32* %138, i32 %139, i8* null, i32* %4)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @E_FAIL, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %149, label %144

144:                                              ; preds = %121
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @ERROR_NO_ASSOCIATION, align 4
  %147 = call i32 @HRESULT_FROM_WIN32(i32 %146)
  %148 = icmp eq i32 %145, %147
  br label %149

149:                                              ; preds = %144, %121
  %150 = phi i1 [ true, %121 ], [ %148, %144 ]
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %3, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = icmp eq i32 %154, -559038737
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %4, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %157)
  store i32 -559038737, i32* %4, align 4
  %159 = load i32, i32* @ASSOCSTR_FRIENDLYAPPNAME, align 4
  %160 = load i32*, i32** @dotBad, align 8
  %161 = load i32, i32* @open, align 4
  %162 = call i32 @pAssocQueryStringW(i32 0, i32 %159, i32* %160, i32 %161, i8* null, i32* %4)
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* @E_FAIL, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %180, label %166

166:                                              ; preds = %149
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @ERROR_NO_ASSOCIATION, align 4
  %169 = call i32 @HRESULT_FROM_WIN32(i32 %168)
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %180, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @ERROR_NOT_FOUND, align 4
  %174 = call i32 @HRESULT_FROM_WIN32(i32 %173)
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* @S_FALSE, align 4
  %179 = icmp eq i32 %177, %178
  br label %180

180:                                              ; preds = %176, %171, %166, %149
  %181 = phi i1 [ true, %171 ], [ true, %166 ], [ true, %149 ], [ %179, %176 ]
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %3, align 4
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @S_FALSE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @ARRAY_SIZE(i8* %8)
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %195, label %192

192:                                              ; preds = %188, %180
  %193 = load i32, i32* %4, align 4
  %194 = icmp eq i32 %193, -559038737
  br label %195

195:                                              ; preds = %192, %188
  %196 = phi i1 [ true, %188 ], [ %194, %192 ]
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* %4, align 4
  %200 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %198, i32 %199)
  store i32 -559038737, i32* %4, align 4
  %201 = load i32, i32* @ASSOCSTR_FRIENDLYAPPNAME, align 4
  %202 = load i32*, i32** @dotHtml, align 8
  %203 = load i32, i32* @invalid, align 4
  %204 = call i32 @pAssocQueryStringW(i32 0, i32 %201, i32* %202, i32 %203, i8* null, i32* %4)
  store i32 %204, i32* %3, align 4
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %207 = call i32 @HRESULT_FROM_WIN32(i32 %206)
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %218, label %209

209:                                              ; preds = %195
  %210 = load i32, i32* %3, align 4
  %211 = load i32, i32* @ERROR_NO_ASSOCIATION, align 4
  %212 = call i32 @HRESULT_FROM_WIN32(i32 %211)
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %218, label %214

214:                                              ; preds = %209
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* @E_FAIL, align 4
  %217 = icmp eq i32 %215, %216
  br label %218

218:                                              ; preds = %214, %209, %195
  %219 = phi i1 [ true, %209 ], [ true, %195 ], [ %217, %214 ]
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %3, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %4, align 4
  %224 = icmp eq i32 %223, -559038737
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %4, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @ASSOCSTR_FRIENDLYAPPNAME, align 4
  %229 = load i32*, i32** @dotHtml, align 8
  %230 = load i32, i32* @open, align 4
  %231 = call i32 @pAssocQueryStringW(i32 0, i32 %228, i32* %229, i32 %230, i8* null, i32* null)
  store i32 %231, i32* %3, align 4
  %232 = load i32, i32* %3, align 4
  %233 = load i32, i32* @E_UNEXPECTED, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %239, label %235

235:                                              ; preds = %218
  %236 = load i32, i32* %3, align 4
  %237 = load i32, i32* @E_INVALIDARG, align 4
  %238 = icmp eq i32 %236, %237
  br label %239

239:                                              ; preds = %235, %218
  %240 = phi i1 [ true, %218 ], [ %238, %235 ]
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %3, align 4
  %243 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %242)
  %244 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %244)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pAssocQueryStringW(i32, i32, i32*, i32, i8*, i32*) #2

declare dso_local i32 @expect_hr(i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @lstrcmpiW(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
