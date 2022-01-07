; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_URLDownloadToFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_URLDownloadToFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINDTEST_FILEDWLAPI = common dso_local global i32 0, align 4
@BINDTEST_EMULATE = common dso_local global i32 0, align 4
@TYMED_FILE = common dso_local global i32 0, align 4
@GetBindInfo = common dso_local global i32 0, align 4
@QueryInterface_IInternetProtocol = common dso_local global i32 0, align 4
@QueryInterface_IServiceProvider = common dso_local global i32 0, align 4
@emulate_protocol = common dso_local global i64 0, align 8
@QueryService_IInternetProtocol = common dso_local global i32 0, align 4
@OnStartBinding = common dso_local global i32 0, align 4
@test_protocol = common dso_local global i64 0, align 8
@SetPriority = common dso_local global i32 0, align 4
@Start = common dso_local global i32 0, align 4
@UnlockRequest = common dso_local global i32 0, align 4
@HTTP_TEST = common dso_local global i64 0, align 8
@HTTPS_TEST = common dso_local global i64 0, align 8
@QueryInterface_IHttpNegotiate = common dso_local global i32 0, align 4
@BeginningTransaction = common dso_local global i32 0, align 4
@QueryInterface_IHttpNegotiate2 = common dso_local global i32 0, align 4
@GetRootSecurityId = common dso_local global i32 0, align 4
@QueryInterface_IWindowForBindingUI = common dso_local global i32 0, align 4
@OnProgress_CONNECTING = common dso_local global i32 0, align 4
@FILE_TEST = common dso_local global i64 0, align 8
@OnProgress_SENDINGREQUEST = common dso_local global i32 0, align 4
@OnResponse = common dso_local global i32 0, align 4
@OnProgress_MIMETYPEAVAILABLE = common dso_local global i32 0, align 4
@OnProgress_BEGINDOWNLOADDATA = common dso_local global i32 0, align 4
@OnProgress_CACHEFILENAMEAVAILABLE = common dso_local global i32 0, align 4
@OnProgress_DOWNLOADINGDATA = common dso_local global i32 0, align 4
@OnProgress_ENDDOWNLOADDATA = common dso_local global i32 0, align 4
@OnStopBinding = common dso_local global i32 0, align 4
@current_url = common dso_local global i32 0, align 4
@dwl_htmlW = common dso_local global i32 0, align 4
@bsc = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"URLDownloadToFile failed: %08x\0A\00", align 1
@have_IHttpNegotiate2 = common dso_local global i64 0, align 8
@dwl_htmlA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DeleteFile failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @test_URLDownloadToFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_URLDownloadToFile(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* @BINDTEST_FILEDWLAPI, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @BINDTEST_EMULATE, align 4
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  %16 = or i32 %8, %15
  %17 = load i32, i32* @TYMED_FILE, align 4
  %18 = call i32 @init_bind_test(i64 %7, i32 %16, i32 %17)
  %19 = load i32, i32* @GetBindInfo, align 4
  %20 = call i32 @SET_EXPECT(i32 %19)
  %21 = load i32, i32* @QueryInterface_IInternetProtocol, align 4
  %22 = call i32 @SET_EXPECT(i32 %21)
  %23 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %24 = call i32 @SET_EXPECT(i32 %23)
  %25 = load i64, i64* @emulate_protocol, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = load i32, i32* @QueryService_IInternetProtocol, align 4
  %29 = call i32 @SET_EXPECT(i32 %28)
  br label %30

30:                                               ; preds = %27, %14
  %31 = load i32, i32* @OnStartBinding, align 4
  %32 = call i32 @SET_EXPECT(i32 %31)
  %33 = load i64, i64* @emulate_protocol, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i64, i64* @test_protocol, align 8
  %37 = call i64 @is_urlmon_protocol(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @SetPriority, align 4
  %41 = call i32 @SET_EXPECT(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* @Start, align 4
  %44 = call i32 @SET_EXPECT(i32 %43)
  %45 = load i32, i32* @UnlockRequest, align 4
  %46 = call i32 @SET_EXPECT(i32 %45)
  br label %123

47:                                               ; preds = %30
  %48 = load i64, i64* @test_protocol, align 8
  %49 = load i64, i64* @HTTP_TEST, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* @test_protocol, align 8
  %53 = load i64, i64* @HTTPS_TEST, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51, %47
  %56 = load i32, i32* @QueryInterface_IHttpNegotiate, align 4
  %57 = call i32 @SET_EXPECT(i32 %56)
  %58 = load i32, i32* @BeginningTransaction, align 4
  %59 = call i32 @SET_EXPECT(i32 %58)
  %60 = load i32, i32* @QueryInterface_IHttpNegotiate2, align 4
  %61 = call i32 @SET_EXPECT(i32 %60)
  %62 = load i32, i32* @GetRootSecurityId, align 4
  %63 = call i32 @SET_EXPECT(i32 %62)
  %64 = load i32, i32* @QueryInterface_IWindowForBindingUI, align 4
  %65 = call i32 @SET_EXPECT(i32 %64)
  %66 = load i32, i32* @OnProgress_CONNECTING, align 4
  %67 = call i32 @SET_EXPECT(i32 %66)
  br label %68

68:                                               ; preds = %55, %51
  %69 = load i64, i64* @test_protocol, align 8
  %70 = load i64, i64* @HTTP_TEST, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* @test_protocol, align 8
  %74 = load i64, i64* @HTTPS_TEST, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* @test_protocol, align 8
  %78 = load i64, i64* @FILE_TEST, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76, %72, %68
  %81 = load i32, i32* @OnProgress_SENDINGREQUEST, align 4
  %82 = call i32 @SET_EXPECT(i32 %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i64, i64* @test_protocol, align 8
  %85 = load i64, i64* @HTTP_TEST, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* @test_protocol, align 8
  %89 = load i64, i64* @HTTPS_TEST, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @QueryInterface_IHttpNegotiate, align 4
  %93 = call i32 @SET_EXPECT(i32 %92)
  %94 = load i32, i32* @OnResponse, align 4
  %95 = call i32 @SET_EXPECT(i32 %94)
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* @OnProgress_MIMETYPEAVAILABLE, align 4
  %98 = call i32 @SET_EXPECT(i32 %97)
  %99 = load i32, i32* @OnProgress_BEGINDOWNLOADDATA, align 4
  %100 = call i32 @SET_EXPECT(i32 %99)
  %101 = load i64, i64* @test_protocol, align 8
  %102 = load i64, i64* @FILE_TEST, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @OnProgress_CACHEFILENAMEAVAILABLE, align 4
  %106 = call i32 @SET_EXPECT(i32 %105)
  br label %107

107:                                              ; preds = %104, %96
  %108 = load i64, i64* @test_protocol, align 8
  %109 = load i64, i64* @HTTP_TEST, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* @test_protocol, align 8
  %113 = load i64, i64* @HTTPS_TEST, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111, %107
  %116 = load i32, i32* @OnProgress_DOWNLOADINGDATA, align 4
  %117 = call i32 @SET_EXPECT(i32 %116)
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* @OnProgress_ENDDOWNLOADDATA, align 4
  %120 = call i32 @SET_EXPECT(i32 %119)
  %121 = load i32, i32* @OnStopBinding, align 4
  %122 = call i32 @SET_EXPECT(i32 %121)
  br label %123

123:                                              ; preds = %118, %42
  %124 = load i32, i32* @current_url, align 4
  %125 = load i32, i32* @dwl_htmlW, align 4
  %126 = call i64 @URLDownloadToFileW(i32* null, i32 %124, i32 %125, i32 0, i32* @bsc)
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* @S_OK, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %131)
  %133 = load i32, i32* @GetBindInfo, align 4
  %134 = call i32 @CHECK_CALLED(i32 %133)
  %135 = load i32, i32* @QueryInterface_IInternetProtocol, align 4
  %136 = call i32 @CHECK_CALLED(i32 %135)
  %137 = load i64, i64* @emulate_protocol, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %123
  %140 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %141 = call i32 @CHECK_CALLED(i32 %140)
  %142 = load i32, i32* @QueryService_IInternetProtocol, align 4
  %143 = call i32 @CHECK_CALLED(i32 %142)
  br label %147

144:                                              ; preds = %123
  %145 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %146 = call i32 @CLEAR_CALLED(i32 %145)
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i32, i32* @OnStartBinding, align 4
  %149 = call i32 @CHECK_CALLED(i32 %148)
  %150 = load i64, i64* @emulate_protocol, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load i64, i64* @test_protocol, align 8
  %154 = call i64 @is_urlmon_protocol(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @SetPriority, align 4
  %158 = call i32 @CLEAR_CALLED(i32 %157)
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i32, i32* @Start, align 4
  %161 = call i32 @CHECK_CALLED(i32 %160)
  %162 = load i32, i32* @UnlockRequest, align 4
  %163 = call i32 @CHECK_CALLED(i32 %162)
  br label %248

164:                                              ; preds = %147
  %165 = load i64, i64* @test_protocol, align 8
  %166 = load i64, i64* @HTTP_TEST, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* @test_protocol, align 8
  %170 = load i64, i64* @HTTPS_TEST, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %168, %164
  %173 = load i32, i32* @QueryInterface_IHttpNegotiate, align 4
  %174 = call i32 @CHECK_CALLED(i32 %173)
  %175 = load i32, i32* @BeginningTransaction, align 4
  %176 = call i32 @CHECK_CALLED(i32 %175)
  %177 = load i64, i64* @have_IHttpNegotiate2, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load i32, i32* @QueryInterface_IHttpNegotiate2, align 4
  %181 = call i32 @CHECK_CALLED(i32 %180)
  %182 = load i32, i32* @GetRootSecurityId, align 4
  %183 = call i32 @CHECK_CALLED(i32 %182)
  br label %184

184:                                              ; preds = %179, %172
  %185 = load i32, i32* @QueryInterface_IWindowForBindingUI, align 4
  %186 = call i32 @CLEAR_CALLED(i32 %185)
  %187 = load i32, i32* @OnProgress_CONNECTING, align 4
  %188 = call i32 @CLEAR_CALLED(i32 %187)
  br label %189

189:                                              ; preds = %184, %168
  %190 = load i64, i64* @test_protocol, align 8
  %191 = load i64, i64* @FILE_TEST, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* @OnProgress_SENDINGREQUEST, align 4
  %195 = call i32 @CHECK_CALLED(i32 %194)
  br label %208

196:                                              ; preds = %189
  %197 = load i64, i64* @test_protocol, align 8
  %198 = load i64, i64* @HTTP_TEST, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i64, i64* @test_protocol, align 8
  %202 = load i64, i64* @HTTPS_TEST, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %200, %196
  %205 = load i32, i32* @OnProgress_SENDINGREQUEST, align 4
  %206 = call i32 @CLEAR_CALLED(i32 %205)
  br label %207

207:                                              ; preds = %204, %200
  br label %208

208:                                              ; preds = %207, %193
  %209 = load i64, i64* @test_protocol, align 8
  %210 = load i64, i64* @HTTP_TEST, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i64, i64* @test_protocol, align 8
  %214 = load i64, i64* @HTTPS_TEST, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %212, %208
  %217 = load i32, i32* @QueryInterface_IHttpNegotiate, align 4
  %218 = call i32 @CLEAR_CALLED(i32 %217)
  %219 = load i32, i32* @OnResponse, align 4
  %220 = call i32 @CHECK_CALLED(i32 %219)
  br label %221

221:                                              ; preds = %216, %212
  %222 = load i32, i32* @OnProgress_MIMETYPEAVAILABLE, align 4
  %223 = call i32 @CHECK_CALLED(i32 %222)
  %224 = load i32, i32* @OnProgress_BEGINDOWNLOADDATA, align 4
  %225 = call i32 @CHECK_CALLED(i32 %224)
  %226 = load i64, i64* @test_protocol, align 8
  %227 = load i64, i64* @FILE_TEST, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %221
  %230 = load i32, i32* @OnProgress_CACHEFILENAMEAVAILABLE, align 4
  %231 = call i32 @CHECK_CALLED(i32 %230)
  br label %232

232:                                              ; preds = %229, %221
  %233 = load i64, i64* @test_protocol, align 8
  %234 = load i64, i64* @HTTP_TEST, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i64, i64* @test_protocol, align 8
  %238 = load i64, i64* @HTTPS_TEST, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236, %232
  %241 = load i32, i32* @OnProgress_DOWNLOADINGDATA, align 4
  %242 = call i32 @CLEAR_CALLED(i32 %241)
  br label %243

243:                                              ; preds = %240, %236
  %244 = load i32, i32* @OnProgress_ENDDOWNLOADDATA, align 4
  %245 = call i32 @CHECK_CALLED(i32 %244)
  %246 = load i32, i32* @OnStopBinding, align 4
  %247 = call i32 @CHECK_CALLED(i32 %246)
  br label %248

248:                                              ; preds = %243, %159
  %249 = load i32, i32* @dwl_htmlA, align 4
  %250 = call i32 @DeleteFileA(i32 %249)
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* %5, align 4
  %252 = call i64 (...) @GetLastError()
  %253 = call i32 @ok(i32 %251, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %252)
  %254 = load i64, i64* %3, align 8
  %255 = load i64, i64* @FILE_TEST, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %260, label %257

257:                                              ; preds = %248
  %258 = load i32, i32* %4, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %248
  br label %276

261:                                              ; preds = %257
  %262 = load i32, i32* @current_url, align 4
  %263 = load i32, i32* @dwl_htmlW, align 4
  %264 = call i64 @URLDownloadToFileW(i32* null, i32 %262, i32 %263, i32 0, i32* null)
  store i64 %264, i64* %6, align 8
  %265 = load i64, i64* %6, align 8
  %266 = load i64, i64* @S_OK, align 8
  %267 = icmp eq i64 %265, %266
  %268 = zext i1 %267 to i32
  %269 = load i64, i64* %6, align 8
  %270 = call i32 @ok(i32 %268, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %269)
  %271 = load i32, i32* @dwl_htmlA, align 4
  %272 = call i32 @DeleteFileA(i32 %271)
  store i32 %272, i32* %5, align 4
  %273 = load i32, i32* %5, align 4
  %274 = call i64 (...) @GetLastError()
  %275 = call i32 @ok(i32 %273, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %274)
  br label %276

276:                                              ; preds = %261, %260
  ret void
}

declare dso_local i32 @init_bind_test(i64, i32, i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @is_urlmon_protocol(i64) #1

declare dso_local i64 @URLDownloadToFileW(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @CLEAR_CALLED(i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
