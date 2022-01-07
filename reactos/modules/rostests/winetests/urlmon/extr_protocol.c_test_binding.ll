; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_binding.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = common dso_local global i32 0, align 4
@TEST_BINDING = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"CoInternetGetSession failed: %08x\0A\00", align 1
@TEST_EMULATEPROT = common dso_local global i32 0, align 4
@ClassFactory = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@protocol_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"RegisterNameSpace failed: %08x\0A\00", align 1
@binding_urls = common dso_local global i32* null, align 8
@binding_protocol = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"CreateBinding failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"protocol == NULL\0A\00", align 1
@IID_IInternetBindInfo = common dso_local global i32 0, align 4
@prot_bind_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"QueryInterface(IID_IInternetBindInfo) failed: %08x\0A\00", align 1
@IID_IInternetProtocolSink = common dso_local global i32 0, align 4
@binding_sink = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"QueryInterface(IID_IInternetProtocolSink) failed: %08x\0A\00", align 1
@TEST_USEIURI = common dso_local global i32 0, align 4
@IID_IInternetProtocolEx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Could not get IInternetProtocolEx iface: %08x\0A\00", align 1
@Uri_CREATE_FILE_USE_DOS_PATH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"CreateUri failed: %08x\0A\00", align 1
@ex_priority = common dso_local global i64 0, align 8
@QueryService_InternetProtocol = common dso_local global i32 0, align 4
@CreateInstance = common dso_local global i32 0, align 4
@ReportProgress_PROTOCOLCLASSID = common dso_local global i32 0, align 4
@SetPriority = common dso_local global i32 0, align 4
@impl_protex = common dso_local global i64 0, align 8
@StartEx = common dso_local global i32 0, align 4
@Start = common dso_local global i32 0, align 4
@expect_hrResult = common dso_local global i64 0, align 8
@protocol_sink = common dso_local global i32 0, align 4
@bind_info = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"StartEx failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Start failed: %08x\0A\00", align 1
@HTTP_TEST = common dso_local global i32 0, align 4
@HTTPS_TEST = common dso_local global i32 0, align 4
@prot_state = common dso_local global i32 0, align 4
@event_complete = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"wait timed out\0A\00", align 1
@mimefilter_test = common dso_local global i64 0, align 8
@filtered_protocol = common dso_local global i32* null, align 8
@Continue = common dso_local global i32 0, align 4
@pdata = common dso_local global i32 0, align 4
@test_abort = common dso_local global i64 0, align 8
@Abort = common dso_local global i32 0, align 4
@E_ABORT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"Abort failed: %08x\0A\00", align 1
@event_complete2 = common dso_local global i32 0, align 4
@direct_read = common dso_local global i64 0, align 8
@ReportData = common dso_local global i32 0, align 4
@MimeFilter_LockRequest = common dso_local global i32 0, align 4
@LockRequest = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"LockRequest failed: %08x\0A\00", align 1
@MimeFilter_UnlockRequest = common dso_local global i32 0, align 4
@UnlockRequest = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"UnlockRequest failed: %08x\0A\00", align 1
@MimeFilter_Terminate = common dso_local global i32 0, align 4
@Terminate = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Terminate failed: %08x\0A\00", align 1
@Protocol_destructor = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"ref=%u, expected 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"UnregisterNameSpace failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @test_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_binding(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %10, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* @pi, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TEST_BINDING, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @init_test(i32 %14, i32 %17)
  %19 = call i64 @pCoInternetGetSession(i32 0, i32** %9, i32 0)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %12, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @TEST_EMULATEPROT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %3
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** @protocol_names, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IInternetSession_RegisterNameSpace(i32* %31, i32* @ClassFactory, i32* @IID_NULL, i32 %36, i32 0, i32* null, i32 0)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %12, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %30, %3
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** @binding_urls, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IInternetSession_CreateBinding(i32* %45, i32* null, i32 %50, i32* null, i32* null, i32** %8, i32 0)
  store i64 %51, i64* %12, align 8
  %52 = load i32*, i32** %8, align 8
  store i32* %52, i32** @binding_protocol, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %12, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32*, i32** %8, align 8
  %64 = call i64 @IInternetProtocol_QueryInterface(i32* %63, i32* @IID_IInternetBindInfo, i8** bitcast (i32* @prot_bind_info to i8**))
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %12, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call i64 @IInternetProtocol_QueryInterface(i32* %71, i32* @IID_IInternetProtocolSink, i8** bitcast (i32* @binding_sink to i8**))
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %12, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @TEST_USEIURI, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %44
  %84 = load i32*, i32** %8, align 8
  %85 = bitcast i32** %7 to i8**
  %86 = call i64 @IInternetProtocol_QueryInterface(i32* %84, i32* @IID_IInternetProtocolEx, i8** %85)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %12, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** @binding_urls, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %99 = call i64 @pCreateUri(i32 %97, i32 %98, i32 0, i32** %10)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %12, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %83, %44
  store i64 0, i64* @ex_priority, align 8
  %107 = load i32, i32* @QueryService_InternetProtocol, align 4
  %108 = call i32 @SET_EXPECT(i32 %107)
  %109 = load i32, i32* @CreateInstance, align 4
  %110 = call i32 @SET_EXPECT(i32 %109)
  %111 = load i32, i32* @ReportProgress_PROTOCOLCLASSID, align 4
  %112 = call i32 @SET_EXPECT(i32 %111)
  %113 = load i32, i32* @SetPriority, align 4
  %114 = call i32 @SET_EXPECT(i32 %113)
  %115 = load i64, i64* @impl_protex, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load i32, i32* @StartEx, align 4
  %119 = call i32 @SET_EXPECT(i32 %118)
  br label %123

120:                                              ; preds = %106
  %121 = load i32, i32* @Start, align 4
  %122 = call i32 @SET_EXPECT(i32 %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i64, i64* @S_OK, align 8
  store i64 %124, i64* @expect_hrResult, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load i32*, i32** %7, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* @pi, align 4
  %131 = call i64 @IInternetProtocolEx_StartEx(i32* %128, i32* %129, i32* @protocol_sink, i32* @bind_info, i32 %130, i32 0)
  store i64 %131, i64* %12, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %12, align 8
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 %136)
  br label %153

138:                                              ; preds = %123
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** @binding_urls, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @pi, align 4
  %146 = call i64 @IInternetProtocol_Start(i32* %139, i32 %144, i32* @protocol_sink, i32* @bind_info, i32 %145, i32 0)
  store i64 %146, i64* %12, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* @S_OK, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i64, i64* %12, align 8
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %138, %127
  %154 = load i32, i32* @QueryService_InternetProtocol, align 4
  %155 = call i32 @CHECK_CALLED(i32 %154)
  %156 = load i32, i32* @CreateInstance, align 4
  %157 = call i32 @CHECK_CALLED(i32 %156)
  %158 = load i32, i32* @ReportProgress_PROTOCOLCLASSID, align 4
  %159 = call i32 @CHECK_CALLED(i32 %158)
  %160 = load i32, i32* @SetPriority, align 4
  %161 = call i32 @CLEAR_CALLED(i32 %160)
  %162 = load i64, i64* @impl_protex, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %153
  %165 = load i32, i32* @StartEx, align 4
  %166 = call i32 @CHECK_CALLED(i32 %165)
  br label %170

167:                                              ; preds = %153
  %168 = load i32, i32* @Start, align 4
  %169 = call i32 @CHECK_CALLED(i32 %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32*, i32** %7, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @IInternetProtocolEx_Release(i32* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32*, i32** %10, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @IUri_Release(i32* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @HTTP_TEST, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @HTTPS_TEST, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %269

190:                                              ; preds = %186, %182
  br label %191

191:                                              ; preds = %253, %190
  %192 = load i32, i32* @prot_state, align 4
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %256

194:                                              ; preds = %191
  %195 = load i32, i32* @event_complete, align 4
  %196 = call i64 @WaitForSingleObject(i32 %195, i32 90000)
  %197 = load i64, i64* @WAIT_OBJECT_0, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %201 = load i64, i64* @mimefilter_test, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %194
  %204 = load i32*, i32** @filtered_protocol, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load i32, i32* @Continue, align 4
  %208 = call i32 @SET_EXPECT(i32 %207)
  %209 = load i32*, i32** @filtered_protocol, align 8
  %210 = load i32, i32* @pdata, align 4
  %211 = call i32 @IInternetProtocol_Continue(i32* %209, i32 %210)
  %212 = load i32, i32* @Continue, align 4
  %213 = call i32 @CHECK_CALLED(i32 %212)
  br label %222

214:                                              ; preds = %203, %194
  %215 = load i32, i32* @Continue, align 4
  %216 = call i32 @SET_EXPECT(i32 %215)
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* @pdata, align 4
  %219 = call i32 @IInternetProtocol_Continue(i32* %217, i32 %218)
  %220 = load i32, i32* @Continue, align 4
  %221 = call i32 @CHECK_CALLED(i32 %220)
  br label %222

222:                                              ; preds = %214, %206
  %223 = load i64, i64* @test_abort, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %222
  %226 = load i32, i32* @prot_state, align 4
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %228, label %253

228:                                              ; preds = %225
  %229 = load i32, i32* @Abort, align 4
  %230 = call i32 @SET_EXPECT(i32 %229)
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* @E_ABORT, align 4
  %233 = call i64 @IInternetProtocol_Abort(i32* %231, i32 %232, i32 0)
  store i64 %233, i64* %12, align 8
  %234 = load i64, i64* %12, align 8
  %235 = load i64, i64* @S_OK, align 8
  %236 = icmp eq i64 %234, %235
  %237 = zext i1 %236 to i32
  %238 = load i64, i64* %12, align 8
  %239 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %238)
  %240 = load i32, i32* @Abort, align 4
  %241 = call i32 @CHECK_CALLED(i32 %240)
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* @E_ABORT, align 4
  %244 = call i64 @IInternetProtocol_Abort(i32* %242, i32 %243, i32 0)
  store i64 %244, i64* %12, align 8
  %245 = load i64, i64* %12, align 8
  %246 = load i64, i64* @S_OK, align 8
  %247 = icmp eq i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i64, i64* %12, align 8
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %249)
  %251 = load i32, i32* @event_complete2, align 4
  %252 = call i32 @SetEvent(i32 %251)
  br label %256

253:                                              ; preds = %225, %222
  %254 = load i32, i32* @event_complete2, align 4
  %255 = call i32 @SetEvent(i32 %254)
  br label %191

256:                                              ; preds = %228, %191
  %257 = load i64, i64* @direct_read, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, i32* @ReportData, align 4
  %261 = call i32 @CHECK_CALLED(i32 %260)
  br label %262

262:                                              ; preds = %259, %256
  %263 = load i32, i32* @event_complete, align 4
  %264 = call i64 @WaitForSingleObject(i32 %263, i32 90000)
  %265 = load i64, i64* @WAIT_OBJECT_0, align 8
  %266 = icmp eq i64 %264, %265
  %267 = zext i1 %266 to i32
  %268 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %322

269:                                              ; preds = %186
  %270 = load i64, i64* @mimefilter_test, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* @MimeFilter_LockRequest, align 4
  %274 = call i32 @SET_EXPECT(i32 %273)
  br label %278

275:                                              ; preds = %269
  %276 = load i32, i32* @LockRequest, align 4
  %277 = call i32 @SET_EXPECT(i32 %276)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32*, i32** %8, align 8
  %280 = call i64 @IInternetProtocol_LockRequest(i32* %279, i32 0)
  store i64 %280, i64* %12, align 8
  %281 = load i64, i64* %12, align 8
  %282 = load i64, i64* @S_OK, align 8
  %283 = icmp eq i64 %281, %282
  %284 = zext i1 %283 to i32
  %285 = load i64, i64* %12, align 8
  %286 = call i32 (i32, i8*, ...) @ok(i32 %284, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 %285)
  %287 = load i64, i64* @mimefilter_test, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %278
  %290 = load i32, i32* @MimeFilter_LockRequest, align 4
  %291 = call i32 @CHECK_CALLED(i32 %290)
  br label %295

292:                                              ; preds = %278
  %293 = load i32, i32* @LockRequest, align 4
  %294 = call i32 @CHECK_CALLED(i32 %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i64, i64* @mimefilter_test, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* @MimeFilter_UnlockRequest, align 4
  %300 = call i32 @SET_EXPECT(i32 %299)
  br label %304

301:                                              ; preds = %295
  %302 = load i32, i32* @UnlockRequest, align 4
  %303 = call i32 @SET_EXPECT(i32 %302)
  br label %304

304:                                              ; preds = %301, %298
  %305 = load i32*, i32** %8, align 8
  %306 = call i64 @IInternetProtocol_UnlockRequest(i32* %305)
  store i64 %306, i64* %12, align 8
  %307 = load i64, i64* %12, align 8
  %308 = load i64, i64* @S_OK, align 8
  %309 = icmp eq i64 %307, %308
  %310 = zext i1 %309 to i32
  %311 = load i64, i64* %12, align 8
  %312 = call i32 (i32, i8*, ...) @ok(i32 %310, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i64 %311)
  %313 = load i64, i64* @mimefilter_test, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %304
  %316 = load i32, i32* @MimeFilter_UnlockRequest, align 4
  %317 = call i32 @CHECK_CALLED(i32 %316)
  br label %321

318:                                              ; preds = %304
  %319 = load i32, i32* @UnlockRequest, align 4
  %320 = call i32 @CHECK_CALLED(i32 %319)
  br label %321

321:                                              ; preds = %318, %315
  br label %322

322:                                              ; preds = %321, %262
  %323 = load i64, i64* @mimefilter_test, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load i32, i32* @MimeFilter_Terminate, align 4
  %327 = call i32 @SET_EXPECT(i32 %326)
  br label %331

328:                                              ; preds = %322
  %329 = load i32, i32* @Terminate, align 4
  %330 = call i32 @SET_EXPECT(i32 %329)
  br label %331

331:                                              ; preds = %328, %325
  %332 = load i32*, i32** %8, align 8
  %333 = call i64 @IInternetProtocol_Terminate(i32* %332, i32 0)
  store i64 %333, i64* %12, align 8
  %334 = load i64, i64* %12, align 8
  %335 = load i64, i64* @S_OK, align 8
  %336 = icmp eq i64 %334, %335
  %337 = zext i1 %336 to i32
  %338 = load i64, i64* %12, align 8
  %339 = call i32 (i32, i8*, ...) @ok(i32 %337, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i64 %338)
  %340 = load i64, i64* @mimefilter_test, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %331
  %343 = load i32, i32* @MimeFilter_Terminate, align 4
  %344 = call i32 @CLEAR_CALLED(i32 %343)
  br label %348

345:                                              ; preds = %331
  %346 = load i32, i32* @Terminate, align 4
  %347 = call i32 @CHECK_CALLED(i32 %346)
  br label %348

348:                                              ; preds = %345, %342
  %349 = load i32*, i32** @filtered_protocol, align 8
  %350 = icmp ne i32* %349, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load i32*, i32** @filtered_protocol, align 8
  %353 = call i64 @IInternetProtocol_Release(i32* %352)
  br label %354

354:                                              ; preds = %351, %348
  %355 = load i32, i32* @prot_bind_info, align 4
  %356 = call i32 @IInternetBindInfo_Release(i32 %355)
  %357 = load i32, i32* @binding_sink, align 4
  %358 = call i32 @IInternetProtocolSink_Release(i32 %357)
  %359 = load i32, i32* @Protocol_destructor, align 4
  %360 = call i32 @SET_EXPECT(i32 %359)
  %361 = load i32*, i32** %8, align 8
  %362 = call i64 @IInternetProtocol_Release(i32* %361)
  store i64 %362, i64* %11, align 8
  %363 = load i64, i64* %11, align 8
  %364 = icmp ne i64 %363, 0
  %365 = xor i1 %364, true
  %366 = zext i1 %365 to i32
  %367 = load i64, i64* %11, align 8
  %368 = call i32 (i32, i8*, ...) @ok(i32 %366, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i64 %367)
  %369 = load i32, i32* @Protocol_destructor, align 4
  %370 = call i32 @CHECK_CALLED(i32 %369)
  %371 = load i32, i32* %6, align 4
  %372 = load i32, i32* @TEST_EMULATEPROT, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %389

375:                                              ; preds = %354
  %376 = load i32*, i32** %9, align 8
  %377 = load i32*, i32** @protocol_names, align 8
  %378 = load i32, i32* %4, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = call i64 @IInternetSession_UnregisterNameSpace(i32* %376, i32* @ClassFactory, i32 %381)
  store i64 %382, i64* %12, align 8
  %383 = load i64, i64* %12, align 8
  %384 = load i64, i64* @S_OK, align 8
  %385 = icmp eq i64 %383, %384
  %386 = zext i1 %385 to i32
  %387 = load i64, i64* %12, align 8
  %388 = call i32 (i32, i8*, ...) @ok(i32 %386, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i64 %387)
  br label %389

389:                                              ; preds = %375, %354
  %390 = load i32*, i32** %9, align 8
  %391 = call i32 @IInternetSession_Release(i32* %390)
  ret void
}

declare dso_local i32 @init_test(i32, i32) #1

declare dso_local i64 @pCoInternetGetSession(i32, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IInternetSession_RegisterNameSpace(i32*, i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i64 @IInternetSession_CreateBinding(i32*, i32*, i32, i32*, i32*, i32**, i32) #1

declare dso_local i64 @IInternetProtocol_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @pCreateUri(i32, i32, i32, i32**) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IInternetProtocolEx_StartEx(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IInternetProtocol_Start(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @CLEAR_CALLED(i32) #1

declare dso_local i32 @IInternetProtocolEx_Release(i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @IInternetProtocol_Continue(i32*, i32) #1

declare dso_local i64 @IInternetProtocol_Abort(i32*, i32, i32) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i64 @IInternetProtocol_LockRequest(i32*, i32) #1

declare dso_local i64 @IInternetProtocol_UnlockRequest(i32*) #1

declare dso_local i64 @IInternetProtocol_Terminate(i32*, i32) #1

declare dso_local i64 @IInternetProtocol_Release(i32*) #1

declare dso_local i32 @IInternetBindInfo_Release(i32) #1

declare dso_local i32 @IInternetProtocolSink_Release(i32) #1

declare dso_local i64 @IInternetSession_UnregisterNameSpace(i32*, i32*, i32) #1

declare dso_local i32 @IInternetSession_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
