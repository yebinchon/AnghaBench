; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_http_protocol_url.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_http_protocol_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@http_url = common dso_local global i32 0, align 4
@http_post_test = common dso_local global i32 0, align 4
@TEST_FROMCACHE = common dso_local global i32 0, align 4
@HTTPS_TEST = common dso_local global i32 0, align 4
@CLSID_HttpSProtocol = common dso_local global i32 0, align 4
@CLSID_HttpProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CoGetClassObject failed: %08x\0A\00", align 1
@IID_IInternetProtocolInfo = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\0A\00", align 1
@IID_IClassFactory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not get IClassFactory interface\0A\00", align 1
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@async_protocol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not get IInternetProtocol: %08x\0A\00", align 1
@ReportProgress_COOKIE_SENT = common dso_local global i32 0, align 4
@http_is_first = common dso_local global i64 0, align 8
@ReportProgress_FINDINGRESOURCE = common dso_local global i32 0, align 4
@ReportProgress_CONNECTING = common dso_local global i32 0, align 4
@ReportProgress_SENDINGREQUEST = common dso_local global i32 0, align 4
@test_redirect = common dso_local global i64 0, align 8
@bindinfo_options = common dso_local global i32 0, align 4
@BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS = common dso_local global i32 0, align 4
@ReportProgress_REDIRECTING = common dso_local global i32 0, align 4
@ReportProgress_PROXYDETECTING = common dso_local global i32 0, align 4
@HTTP_TEST = common dso_local global i32 0, align 4
@ReportProgress_CACHEFILENAMEAVAILABLE = common dso_local global i32 0, align 4
@QueryService_HttpSecurity = common dso_local global i32 0, align 4
@bindf = common dso_local global i32 0, align 4
@BINDF_FROMURLMON = common dso_local global i32 0, align 4
@OnResponse = common dso_local global i32 0, align 4
@ReportProgress_RAWMIMETYPE = common dso_local global i32 0, align 4
@ReportData = common dso_local global i32 0, align 4
@Switch = common dso_local global i32 0, align 4
@TEST_USEIURI = common dso_local global i32 0, align 4
@E_ABORT = common dso_local global i64 0, align 8
@direct_read = common dso_local global i64 0, align 8
@test_abort = common dso_local global i64 0, align 8
@bind_from_cache = common dso_local global i64 0, align 8
@ReportResult = common dso_local global i32 0, align 4
@TEST_DISABLEAUTOREDIRECT = common dso_local global i32 0, align 4
@INET_E_REDIRECT_FAILED = common dso_local global i64 0, align 8
@expect_hrResult = common dso_local global i64 0, align 8
@wait_for_switch = common dso_local global i64 0, align 8
@event_continue = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"wait timed out\0A\00", align 1
@continue_protdata = common dso_local global i32 0, align 4
@event_continue_done = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Read failed: %08x (%d bytes)\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@E_PENDING = common dso_local global i64 0, align 8
@event_complete = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Abort failed: %08x\0A\00", align 1
@INET_E_RESULT_DISPATCHED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"Read failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ref=%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"DeleteUrlCacheEntryA failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @test_http_protocol_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_http_protocol_url(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3600 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca [1500 x i32], align 16
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @init_test(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* @http_url, align 4
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* @http_post_test, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TEST_FROMCACHE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @create_cache_entry(i32 %29)
  br label %31

31:                                               ; preds = %28, %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HTTPS_TEST, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32* @CLSID_HttpSProtocol, i32* @CLSID_HttpProtocol
  %37 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %38 = bitcast i32** %11 to i8**
  %39 = call i64 @CoGetClassObject(i32* %36, i32 %37, i32* null, i32* @IID_IUnknown, i8** %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %12, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @FAILED(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %494

50:                                               ; preds = %31
  %51 = load i32*, i32** %11, align 8
  %52 = bitcast i32** %9 to i8**
  %53 = call i64 @IUnknown_QueryInterface(i32* %51, i32* @IID_IInternetProtocolInfo, i8** %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @E_NOINTERFACE, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %12, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = bitcast i32** %10 to i8**
  %62 = call i64 @IUnknown_QueryInterface(i32* %60, i32* @IID_IClassFactory, i8** %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @IUnknown_Release(i32* %68)
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @FAILED(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %494

74:                                               ; preds = %50
  %75 = load i32*, i32** %10, align 8
  %76 = call i64 @IClassFactory_CreateInstance(i32* %75, i32* null, i32* @IID_IInternetProtocol, i8** bitcast (i32* @async_protocol to i8**))
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %12, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  %83 = load i64, i64* %12, align 8
  %84 = call i64 @SUCCEEDED(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %481

86:                                               ; preds = %74
  %87 = load i32, i32* @async_protocol, align 4
  %88 = call i32 @test_priority(i32 %87)
  %89 = load i32, i32* @ReportProgress_COOKIE_SENT, align 4
  %90 = call i32 @SET_EXPECT(i32 %89)
  %91 = load i64, i64* @http_is_first, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32, i32* @ReportProgress_FINDINGRESOURCE, align 4
  %95 = call i32 @SET_EXPECT(i32 %94)
  %96 = load i32, i32* @ReportProgress_CONNECTING, align 4
  %97 = call i32 @SET_EXPECT(i32 %96)
  br label %98

98:                                               ; preds = %93, %86
  %99 = load i32, i32* @ReportProgress_SENDINGREQUEST, align 4
  %100 = call i32 @SET_EXPECT(i32 %99)
  %101 = load i64, i64* @test_redirect, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* @bindinfo_options, align 4
  %105 = load i32, i32* @BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ReportProgress_REDIRECTING, align 4
  %110 = call i32 @SET_EXPECT(i32 %109)
  br label %111

111:                                              ; preds = %108, %103, %98
  %112 = load i32, i32* @ReportProgress_PROXYDETECTING, align 4
  %113 = call i32 @SET_EXPECT(i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @HTTP_TEST, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @ReportProgress_CACHEFILENAMEAVAILABLE, align 4
  %119 = call i32 @SET_EXPECT(i32 %118)
  br label %123

120:                                              ; preds = %111
  %121 = load i32, i32* @QueryService_HttpSecurity, align 4
  %122 = call i32 @SET_EXPECT(i32 %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* @bindf, align 4
  %125 = load i32, i32* @BINDF_FROMURLMON, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* @OnResponse, align 4
  %130 = call i32 @SET_EXPECT(i32 %129)
  %131 = load i32, i32* @ReportProgress_RAWMIMETYPE, align 4
  %132 = call i32 @SET_EXPECT(i32 %131)
  %133 = load i32, i32* @ReportData, align 4
  %134 = call i32 @SET_EXPECT(i32 %133)
  br label %138

135:                                              ; preds = %123
  %136 = load i32, i32* @Switch, align 4
  %137 = call i32 @SET_EXPECT(i32 %136)
  br label %138

138:                                              ; preds = %135, %128
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @TEST_USEIURI, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @http_protocol_start(i32 %139, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %138
  %148 = load i32, i32* @async_protocol, align 4
  %149 = load i64, i64* @E_ABORT, align 8
  %150 = call i64 @IInternetProtocol_Abort(i32 %148, i64 %149, i32 0)
  %151 = load i32, i32* @async_protocol, align 4
  %152 = call i64 @IInternetProtocol_Release(i32 %151)
  br label %494

153:                                              ; preds = %138
  %154 = load i64, i64* @direct_read, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* @test_abort, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load i64, i64* @bind_from_cache, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* @ReportResult, align 4
  %164 = call i32 @SET_EXPECT(i32 %163)
  br label %165

165:                                              ; preds = %162, %159, %156, %153
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @TEST_DISABLEAUTOREDIRECT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i64, i64* @INET_E_REDIRECT_FAILED, align 8
  store i64 %171, i64* @expect_hrResult, align 8
  br label %180

172:                                              ; preds = %165
  %173 = load i64, i64* @test_abort, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i64, i64* @E_ABORT, align 8
  store i64 %176, i64* @expect_hrResult, align 8
  br label %179

177:                                              ; preds = %172
  %178 = load i64, i64* @S_OK, align 8
  store i64 %178, i64* @expect_hrResult, align 8
  br label %179

179:                                              ; preds = %177, %175
  br label %180

180:                                              ; preds = %179, %170
  %181 = load i64, i64* @direct_read, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %180
  %184 = load i32, i32* @Switch, align 4
  %185 = call i32 @SET_EXPECT(i32 %184)
  br label %186

186:                                              ; preds = %189, %183
  %187 = load i64, i64* @wait_for_switch, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = load i32, i32* @event_continue, align 4
  %191 = call i64 @WaitForSingleObject(i32 %190, i32 90000)
  %192 = load i64, i64* @WAIT_OBJECT_0, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %196 = load i32, i32* @Switch, align 4
  %197 = call i32 @CHECK_CALLED(i32 %196)
  %198 = call i32 @call_continue(i32* @continue_protdata)
  %199 = load i32, i32* @event_continue_done, align 4
  %200 = call i32 @SetEvent(i32 %199)
  br label %186

201:                                              ; preds = %186
  br label %428

202:                                              ; preds = %180
  %203 = load i64, i64* @bind_from_cache, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %256

205:                                              ; preds = %202
  %206 = load i32, i32* @async_protocol, align 4
  %207 = getelementptr inbounds [1500 x i32], [1500 x i32]* %16, i64 0, i64 0
  %208 = call i64 @IInternetProtocol_Read(i32 %206, i32* %207, i32 100, i32* %14)
  store i64 %208, i64* %12, align 8
  %209 = load i64, i64* %12, align 8
  %210 = load i64, i64* @S_OK, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32, i32* %14, align 4
  %214 = icmp eq i32 %213, 100
  br label %215

215:                                              ; preds = %212, %205
  %216 = phi i1 [ false, %205 ], [ %214, %212 ]
  %217 = zext i1 %216 to i32
  %218 = load i64, i64* %12, align 8
  %219 = load i32, i32* %14, align 4
  %220 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %218, i32 %219)
  %221 = load i32, i32* @ReportResult, align 4
  %222 = call i32 @SET_EXPECT(i32 %221)
  %223 = load i32, i32* @async_protocol, align 4
  %224 = getelementptr inbounds [1500 x i32], [1500 x i32]* %16, i64 0, i64 0
  %225 = call i64 @IInternetProtocol_Read(i32 %223, i32* %224, i32 6000, i32* %14)
  store i64 %225, i64* %12, align 8
  %226 = load i64, i64* %12, align 8
  %227 = load i64, i64* @S_OK, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %215
  %230 = load i32, i32* %14, align 4
  %231 = icmp eq i32 %230, 900
  br label %232

232:                                              ; preds = %229, %215
  %233 = phi i1 [ false, %215 ], [ %231, %229 ]
  %234 = zext i1 %233 to i32
  %235 = load i64, i64* %12, align 8
  %236 = load i32, i32* %14, align 4
  %237 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %235, i32 %236)
  %238 = load i32, i32* @ReportResult, align 4
  %239 = call i32 @CHECK_CALLED(i32 %238)
  %240 = load i32, i32* @async_protocol, align 4
  %241 = getelementptr inbounds [1500 x i32], [1500 x i32]* %16, i64 0, i64 0
  %242 = call i64 @IInternetProtocol_Read(i32 %240, i32* %241, i32 6000, i32* %14)
  store i64 %242, i64* %12, align 8
  %243 = load i64, i64* %12, align 8
  %244 = load i64, i64* @S_FALSE, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %232
  %247 = load i32, i32* %14, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  br label %250

250:                                              ; preds = %246, %232
  %251 = phi i1 [ false, %232 ], [ %249, %246 ]
  %252 = zext i1 %251 to i32
  %253 = load i64, i64* %12, align 8
  %254 = load i32, i32* %14, align 4
  %255 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %253, i32 %254)
  br label %427

256:                                              ; preds = %202
  %257 = load i32, i32* @async_protocol, align 4
  %258 = getelementptr inbounds [3600 x i32], [3600 x i32]* %13, i64 0, i64 0
  %259 = call i64 @IInternetProtocol_Read(i32 %257, i32* %258, i32 1, i32* %14)
  store i64 %259, i64* %12, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i64, i64* @E_PENDING, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %256
  %264 = load i32, i32* %14, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %275, label %266

266:                                              ; preds = %263, %256
  %267 = load i64, i64* %12, align 8
  %268 = load i64, i64* @S_OK, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = load i32, i32* %14, align 4
  %272 = icmp eq i32 %271, 1
  br label %273

273:                                              ; preds = %270, %266
  %274 = phi i1 [ false, %266 ], [ %272, %270 ]
  br label %275

275:                                              ; preds = %273, %263
  %276 = phi i1 [ true, %263 ], [ %274, %273 ]
  %277 = zext i1 %276 to i32
  %278 = load i64, i64* %12, align 8
  %279 = load i32, i32* %14, align 4
  %280 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %278, i32 %279)
  %281 = load i32, i32* @event_complete, align 4
  %282 = call i64 @WaitForSingleObject(i32 %281, i32 90000)
  %283 = load i64, i64* @WAIT_OBJECT_0, align 8
  %284 = icmp eq i64 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 (i32, i8*, ...) @ok(i32 %285, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %287 = load i32, i32* @bindf, align 4
  %288 = load i32, i32* @BINDF_FROMURLMON, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %275
  %292 = load i32, i32* @Switch, align 4
  %293 = call i32 @CHECK_CALLED(i32 %292)
  br label %297

294:                                              ; preds = %275
  %295 = load i32, i32* @ReportData, align 4
  %296 = call i32 @CHECK_CALLED(i32 %295)
  br label %297

297:                                              ; preds = %294, %291
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @HTTPS_TEST, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = load i32, i32* @QueryService_HttpSecurity, align 4
  %303 = call i32 @CLEAR_CALLED(i32 %302)
  br label %304

304:                                              ; preds = %301, %297
  br label %305

305:                                              ; preds = %304, %413
  %306 = load i32, i32* @bindf, align 4
  %307 = load i32, i32* @BINDF_FROMURLMON, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load i32, i32* @Switch, align 4
  %312 = call i32 @SET_EXPECT(i32 %311)
  br label %316

313:                                              ; preds = %305
  %314 = load i32, i32* @ReportData, align 4
  %315 = call i32 @SET_EXPECT(i32 %314)
  br label %316

316:                                              ; preds = %313, %310
  %317 = load i32, i32* @async_protocol, align 4
  %318 = getelementptr inbounds [3600 x i32], [3600 x i32]* %13, i64 0, i64 0
  %319 = call i64 @IInternetProtocol_Read(i32 %317, i32* %318, i32 14400, i32* %14)
  store i64 %319, i64* %12, align 8
  %320 = load i64, i64* %12, align 8
  %321 = load i64, i64* @E_PENDING, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %397

323:                                              ; preds = %316
  %324 = load i32, i32* @async_protocol, align 4
  %325 = getelementptr inbounds [3600 x i32], [3600 x i32]* %13, i64 0, i64 0
  %326 = call i64 @IInternetProtocol_Read(i32 %324, i32* %325, i32 1, i32* %14)
  store i64 %326, i64* %12, align 8
  %327 = load i64, i64* %12, align 8
  %328 = load i64, i64* @E_PENDING, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %323
  %331 = load i32, i32* %14, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %342, label %333

333:                                              ; preds = %330, %323
  %334 = load i64, i64* %12, align 8
  %335 = load i64, i64* @S_OK, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %333
  %338 = load i32, i32* %14, align 4
  %339 = icmp eq i32 %338, 1
  br label %340

340:                                              ; preds = %337, %333
  %341 = phi i1 [ false, %333 ], [ %339, %337 ]
  br label %342

342:                                              ; preds = %340, %330
  %343 = phi i1 [ true, %330 ], [ %341, %340 ]
  %344 = zext i1 %343 to i32
  %345 = load i64, i64* %12, align 8
  %346 = load i32, i32* %14, align 4
  %347 = call i32 (i32, i8*, ...) @ok(i32 %344, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %345, i32 %346)
  %348 = load i32, i32* @event_complete, align 4
  %349 = call i64 @WaitForSingleObject(i32 %348, i32 90000)
  %350 = load i64, i64* @WAIT_OBJECT_0, align 8
  %351 = icmp eq i64 %349, %350
  %352 = zext i1 %351 to i32
  %353 = call i32 (i32, i8*, ...) @ok(i32 %352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %354 = load i32, i32* @bindf, align 4
  %355 = load i32, i32* @BINDF_FROMURLMON, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %342
  %359 = load i32, i32* @Switch, align 4
  %360 = call i32 @CHECK_CALLED(i32 %359)
  br label %364

361:                                              ; preds = %342
  %362 = load i32, i32* @ReportData, align 4
  %363 = call i32 @CHECK_CALLED(i32 %362)
  br label %364

364:                                              ; preds = %361, %358
  %365 = load i64, i64* @test_abort, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %396

367:                                              ; preds = %364
  %368 = load i32, i32* @ReportResult, align 4
  %369 = call i32 @SET_EXPECT(i32 %368)
  %370 = load i32, i32* @async_protocol, align 4
  %371 = load i64, i64* @E_ABORT, align 8
  %372 = call i64 @IInternetProtocol_Abort(i32 %370, i64 %371, i32 0)
  store i64 %372, i64* %17, align 8
  %373 = load i64, i64* %17, align 8
  %374 = load i64, i64* @S_OK, align 8
  %375 = icmp eq i64 %373, %374
  %376 = zext i1 %375 to i32
  %377 = load i64, i64* %17, align 8
  %378 = call i32 (i32, i8*, ...) @ok(i32 %376, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %377)
  %379 = load i32, i32* @ReportResult, align 4
  %380 = call i32 @CHECK_CALLED(i32 %379)
  %381 = load i32, i32* @async_protocol, align 4
  %382 = load i64, i64* @E_ABORT, align 8
  %383 = call i64 @IInternetProtocol_Abort(i32 %381, i64 %382, i32 0)
  store i64 %383, i64* %17, align 8
  %384 = load i64, i64* %17, align 8
  %385 = load i64, i64* @INET_E_RESULT_DISPATCHED, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %391, label %387

387:                                              ; preds = %367
  %388 = load i64, i64* %17, align 8
  %389 = load i64, i64* @S_OK, align 8
  %390 = icmp eq i64 %388, %389
  br label %391

391:                                              ; preds = %387, %367
  %392 = phi i1 [ true, %367 ], [ %390, %387 ]
  %393 = zext i1 %392 to i32
  %394 = load i64, i64* %17, align 8
  %395 = call i32 (i32, i8*, ...) @ok(i32 %393, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %394)
  br label %414

396:                                              ; preds = %364
  br label %413

397:                                              ; preds = %316
  %398 = load i32, i32* @bindf, align 4
  %399 = load i32, i32* @BINDF_FROMURLMON, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = load i32, i32* @Switch, align 4
  %404 = call i32 @CHECK_NOT_CALLED(i32 %403)
  br label %408

405:                                              ; preds = %397
  %406 = load i32, i32* @ReportData, align 4
  %407 = call i32 @CHECK_NOT_CALLED(i32 %406)
  br label %408

408:                                              ; preds = %405, %402
  %409 = load i32, i32* %14, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  br label %414

412:                                              ; preds = %408
  br label %413

413:                                              ; preds = %412, %396
  br label %305

414:                                              ; preds = %411, %391
  %415 = load i64, i64* @test_abort, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %426, label %417

417:                                              ; preds = %414
  %418 = load i64, i64* %12, align 8
  %419 = load i64, i64* @S_FALSE, align 8
  %420 = icmp eq i64 %418, %419
  %421 = zext i1 %420 to i32
  %422 = load i64, i64* %12, align 8
  %423 = call i32 (i32, i8*, ...) @ok(i32 %421, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %422)
  %424 = load i32, i32* @ReportResult, align 4
  %425 = call i32 @CHECK_CALLED(i32 %424)
  br label %426

426:                                              ; preds = %417, %414
  br label %427

427:                                              ; preds = %426, %250
  br label %428

428:                                              ; preds = %427, %201
  %429 = load i32, i32* %6, align 4
  %430 = load i32, i32* @HTTPS_TEST, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %428
  %433 = load i32, i32* @ReportProgress_SENDINGREQUEST, align 4
  %434 = call i32 @CLEAR_CALLED(i32 %433)
  br label %435

435:                                              ; preds = %432, %428
  %436 = load i32, i32* %6, align 4
  %437 = load i32, i32* @HTTP_TEST, align 4
  %438 = icmp eq i32 %436, %437
  br i1 %438, label %443, label %439

439:                                              ; preds = %435
  %440 = load i32, i32* %6, align 4
  %441 = load i32, i32* @HTTPS_TEST, align 4
  %442 = icmp eq i32 %440, %441
  br i1 %442, label %443, label %446

443:                                              ; preds = %439, %435
  %444 = load i32, i32* @ReportProgress_COOKIE_SENT, align 4
  %445 = call i32 @CLEAR_CALLED(i32 %444)
  br label %446

446:                                              ; preds = %443, %439
  %447 = load i32, i32* @async_protocol, align 4
  %448 = load i64, i64* @E_ABORT, align 8
  %449 = call i64 @IInternetProtocol_Abort(i32 %447, i64 %448, i32 0)
  store i64 %449, i64* %12, align 8
  %450 = load i64, i64* %12, align 8
  %451 = load i64, i64* @INET_E_RESULT_DISPATCHED, align 8
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %457, label %453

453:                                              ; preds = %446
  %454 = load i64, i64* %12, align 8
  %455 = load i64, i64* @S_OK, align 8
  %456 = icmp eq i64 %454, %455
  br label %457

457:                                              ; preds = %453, %446
  %458 = phi i1 [ true, %446 ], [ %456, %453 ]
  %459 = zext i1 %458 to i32
  %460 = load i64, i64* %12, align 8
  %461 = call i32 (i32, i8*, ...) @ok(i32 %459, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %460)
  %462 = load i32, i32* @async_protocol, align 4
  %463 = call i32 @test_protocol_terminate(i32 %462)
  %464 = load i32, i32* @async_protocol, align 4
  %465 = load i64, i64* @E_ABORT, align 8
  %466 = call i64 @IInternetProtocol_Abort(i32 %464, i64 %465, i32 0)
  store i64 %466, i64* %12, align 8
  %467 = load i64, i64* %12, align 8
  %468 = load i64, i64* @S_OK, align 8
  %469 = icmp eq i64 %467, %468
  %470 = zext i1 %469 to i32
  %471 = load i64, i64* %12, align 8
  %472 = call i32 (i32, i8*, ...) @ok(i32 %470, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %471)
  %473 = load i32, i32* @async_protocol, align 4
  %474 = call i64 @IInternetProtocol_Release(i32 %473)
  store i64 %474, i64* %15, align 8
  %475 = load i64, i64* %15, align 8
  %476 = icmp ne i64 %475, 0
  %477 = xor i1 %476, true
  %478 = zext i1 %477 to i32
  %479 = load i64, i64* %15, align 8
  %480 = call i32 (i32, i8*, ...) @ok(i32 %478, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 %479)
  br label %481

481:                                              ; preds = %457, %74
  %482 = load i32*, i32** %10, align 8
  %483 = call i32 @IClassFactory_Release(i32* %482)
  %484 = load i32, i32* %7, align 4
  %485 = load i32, i32* @TEST_FROMCACHE, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %494

488:                                              ; preds = %481
  %489 = load i32, i32* %5, align 4
  %490 = call i32 @DeleteUrlCacheEntryW(i32 %489)
  store i32 %490, i32* %18, align 4
  %491 = load i32, i32* %18, align 4
  %492 = call i64 (...) @GetLastError()
  %493 = call i32 (i32, i8*, ...) @ok(i32 %491, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %492)
  br label %494

494:                                              ; preds = %49, %73, %147, %488, %481
  ret void
}

declare dso_local i32 @init_test(i32, i32) #1

declare dso_local i32 @create_cache_entry(i32) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @test_priority(i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @http_protocol_start(i32, i32) #1

declare dso_local i64 @IInternetProtocol_Abort(i32, i64, i32) #1

declare dso_local i64 @IInternetProtocol_Release(i32) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @call_continue(i32*) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i64 @IInternetProtocol_Read(i32, i32*, i32, i32*) #1

declare dso_local i32 @CLEAR_CALLED(i32) #1

declare dso_local i32 @CHECK_NOT_CALLED(i32) #1

declare dso_local i32 @test_protocol_terminate(i32) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @DeleteUrlCacheEntryW(i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
