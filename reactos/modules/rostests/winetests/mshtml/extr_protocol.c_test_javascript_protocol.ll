; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_test_javascript_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_test_javascript_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_JSProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CoGetClassObject failed: %08x\0A\00", align 1
@IID_IInternetProtocolInfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Could not get IInternetProtocolInfo interface: %08x\0A\00", align 1
@PARSE_CANONICALIZE = common dso_local global i32 0, align 4
@PARSE_UNESCAPE = common dso_local global i32 0, align 4
@PARSE_SECURITY_URL = common dso_local global i32 0, align 4
@PARSE_DOMAIN = common dso_local global i32 0, align 4
@javascript_test_url = common dso_local global i32 0, align 4
@INET_E_DEFAULT_ACTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"[%d] failed: %08x, expected INET_E_DEFAULT_ACTION\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"ParseUrl failed: %08x, expected INET_E_DEFAULT_ACTION\0A\00", align 1
@INET_E_USE_DEFAULT_PROTOCOLHANDLER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"CombineUrl failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"size=%d\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"CompareUrl failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"QueryInfo(%d) returned: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"QueryInfo(QUERY_USES_NETWORK) failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"buf=%d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [61 x i8] c"QueryInfo(QUERY_USES_NETWORK) failed: %08x, expected E_FAIL\0A\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"QueryInfo failed: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\0A\00", align 1
@IID_IClassFactory = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Could not get IClassFactory interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_javascript_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_javascript_protocol() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %9 = bitcast i32** %2 to i8**
  %10 = call i32 @CoGetClassObject(i32* @CLSID_JSProtocol, i32 %8, i32* null, i32* @IID_IUnknown, i8** %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @S_OK, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %222

21:                                               ; preds = %0
  %22 = load i32*, i32** %2, align 8
  %23 = bitcast i32** %1 to i8**
  %24 = call i32 @IUnknown_QueryInterface(i32* %22, i32* @IID_IInternetProtocolInfo, i8** %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @SUCCEEDED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %204

34:                                               ; preds = %21
  %35 = load i32, i32* @PARSE_CANONICALIZE, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %62, %34
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PARSE_UNESCAPE, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PARSE_SECURITY_URL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PARSE_DOMAIN, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32*, i32** %1, align 8
  %50 = load i32, i32* @javascript_test_url, align 4
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %53 = call i32 @IInternetProtocolInfo_ParseUrl(i32* %49, i32 %50, i32 %51, i32 0, i32* %52, i32 128, i32* %6, i32 0)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @INET_E_DEFAULT_ACTION, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %48, %44, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %36

65:                                               ; preds = %36
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* @javascript_test_url, align 4
  %68 = load i32, i32* @PARSE_UNESCAPE, align 4
  %69 = add nsw i32 %68, 1
  %70 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %71 = call i32 @IInternetProtocolInfo_ParseUrl(i32* %66, i32 %67, i32 %69, i32 0, i32* %70, i32 128, i32* %6, i32 0)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @INET_E_DEFAULT_ACTION, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 -559038737, i32* %6, align 4
  %78 = load i32*, i32** %1, align 8
  %79 = load i32, i32* @javascript_test_url, align 4
  %80 = load i32, i32* @javascript_test_url, align 4
  %81 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %82 = call i32 @IInternetProtocolInfo_CombineUrl(i32* %78, i32 %79, i32 %80, i32 0, i32* %81, i32 128, i32* %6, i32 0)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @INET_E_USE_DEFAULT_PROTOCOLHANDLER, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, -559038737
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = load i32, i32* @javascript_test_url, align 4
  %96 = load i32, i32* @javascript_test_url, align 4
  %97 = call i32 @IInternetProtocolInfo_CompareUrl(i32* %94, i32 %95, i32 %96, i32 0)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @E_NOTIMPL, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %124, %65
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 30
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  switch i32 %108, label %110 [
    i32 128, label %109
    i32 129, label %109
  ]

109:                                              ; preds = %107, %107
  br label %123

110:                                              ; preds = %107
  %111 = load i32*, i32** %1, align 8
  %112 = load i32, i32* @javascript_test_url, align 4
  %113 = load i32, i32* %7, align 4
  %114 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %115 = call i32 @IInternetProtocolInfo_QueryInfo(i32* %111, i32 %112, i32 %113, i32 0, i32* %114, i32 512, i32* %6, i32 0)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @INET_E_USE_DEFAULT_PROTOCOLHANDLER, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %110, %109
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %104

127:                                              ; preds = %104
  %128 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %129 = call i32 @memset(i32* %128, i8 signext 63, i32 512)
  %130 = load i32*, i32** %1, align 8
  %131 = load i32, i32* @javascript_test_url, align 4
  %132 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %133 = call i32 @IInternetProtocolInfo_QueryInfo(i32* %130, i32 %131, i32 128, i32 0, i32* %132, i32 512, i32* %6, i32 0)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @S_OK, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %4, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp eq i64 %141, 4
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %147 = load i32, i32* %146, align 16
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %155 = call i32 @memset(i32* %154, i8 signext 63, i32 512)
  %156 = load i32*, i32** %1, align 8
  %157 = load i32, i32* @javascript_test_url, align 4
  %158 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %159 = call i32 @IInternetProtocolInfo_QueryInfo(i32* %156, i32 %157, i32 128, i32 0, i32* %158, i32 512, i32* null, i32 0)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @S_OK, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %4, align 4
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %164)
  %166 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %167 = load i32, i32* %166, align 16
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %172 = load i32, i32* %171, align 16
  %173 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %172)
  %174 = load i32*, i32** %1, align 8
  %175 = load i32, i32* @javascript_test_url, align 4
  %176 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %177 = call i32 @IInternetProtocolInfo_QueryInfo(i32* %174, i32 %175, i32 128, i32 0, i32* %176, i32 3, i32* %6, i32 0)
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @E_FAIL, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %4, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %1, align 8
  %185 = load i32, i32* @javascript_test_url, align 4
  %186 = call i32 @IInternetProtocolInfo_QueryInfo(i32* %184, i32 %185, i32 128, i32 0, i32* null, i32 512, i32* %6, i32 0)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @E_FAIL, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %4, align 4
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %191)
  %193 = load i32*, i32** %1, align 8
  %194 = load i32, i32* @javascript_test_url, align 4
  %195 = call i32 @IInternetProtocolInfo_QueryInfo(i32* %193, i32 %194, i32 60, i32 0, i32* null, i32 512, i32* %6, i32 0)
  store i32 %195, i32* %4, align 4
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @INET_E_USE_DEFAULT_PROTOCOLHANDLER, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %4, align 4
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0), i32 %200)
  %202 = load i32*, i32** %1, align 8
  %203 = call i32 @IInternetProtocolInfo_Release(i32* %202)
  br label %204

204:                                              ; preds = %127, %21
  %205 = load i32*, i32** %2, align 8
  %206 = bitcast i32** %3 to i8**
  %207 = call i32 @IUnknown_QueryInterface(i32* %205, i32* @IID_IClassFactory, i8** %206)
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @S_OK, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %213 = load i32, i32* %4, align 4
  %214 = call i64 @SUCCEEDED(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %204
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @IClassFactory_Release(i32* %217)
  br label %219

219:                                              ; preds = %216, %204
  %220 = load i32*, i32** %2, align 8
  %221 = call i32 @IUnknown_Release(i32* %220)
  br label %222

222:                                              ; preds = %219, %20
  ret void
}

declare dso_local i32 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IInternetProtocolInfo_ParseUrl(i32*, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @IInternetProtocolInfo_CombineUrl(i32*, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @IInternetProtocolInfo_CompareUrl(i32*, i32, i32, i32) #1

declare dso_local i32 @IInternetProtocolInfo_QueryInfo(i32*, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @IInternetProtocolInfo_Release(i32*) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
