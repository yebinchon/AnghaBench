; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_ftp_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_ftp_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ftp_protocol.ftp_urlW = internal constant [52 x float] [float 1.020000e+02, float 1.160000e+02, float 1.120000e+02, float 5.800000e+01, float 4.700000e+01, float 4.700000e+01, float 1.020000e+02, float 1.160000e+02, float 1.120000e+02, float 4.600000e+01, float 1.190000e+02, float 1.050000e+02, float 1.100000e+02, float 1.010000e+02, float 1.040000e+02, float 1.130000e+02, float 4.600000e+01, float 1.110000e+02, float 1.140000e+02, float 1.030000e+02, float 4.700000e+01, float 1.120000e+02, float 1.170000e+02, float 9.800000e+01, float 4.700000e+01, float 1.110000e+02, float 1.160000e+02, float 1.040000e+02, float 1.010000e+02, float 1.140000e+02, float 4.700000e+01, float 1.190000e+02, float 1.050000e+02, float 1.100000e+02, float 1.010000e+02, float 1.080000e+02, float 1.110000e+02, float 1.030000e+02, float 1.110000e+02, float 4.600000e+01, float 1.200000e+02, float 9.900000e+01, float 1.020000e+02, float 4.600000e+01, float 1.160000e+02, float 9.700000e+01, float 1.140000e+02, float 4.600000e+01, float 9.800000e+01, float 1.220000e+02, float 5.000000e+01, float 0.000000e+00], align 16
@.str = private unnamed_addr constant [25 x i8] c"Testing ftp protocol...\0A\00", align 1
@FTP_TEST = common dso_local global i32 0, align 4
@BINDF_ASYNCHRONOUS = common dso_local global i32 0, align 4
@BINDF_ASYNCSTORAGE = common dso_local global i32 0, align 4
@BINDF_PULLDATA = common dso_local global i32 0, align 4
@BINDF_FROMURLMON = common dso_local global i32 0, align 4
@BINDF_NOWRITECACHE = common dso_local global i32 0, align 4
@bindf = common dso_local global i32 0, align 4
@STATE_STARTDOWNLOADING = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@E_PENDING = common dso_local global i64 0, align 8
@expect_hrResult = common dso_local global i64 0, align 8
@CLSID_FtpProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"CoGetClassObject failed: %08x\0A\00", align 1
@IID_IInternetProtocolInfo = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\0A\00", align 1
@IID_IClassFactory = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not get IClassFactory interface\0A\00", align 1
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@async_protocol = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not get IInternetProtocol: %08x\0A\00", align 1
@GetBindInfo = common dso_local global i32 0, align 4
@ReportProgress_FINDINGRESOURCE = common dso_local global i32 0, align 4
@ReportProgress_CONNECTING = common dso_local global i32 0, align 4
@ReportProgress_SENDINGREQUEST = common dso_local global i32 0, align 4
@Switch = common dso_local global i32 0, align 4
@protocol_sink = common dso_local global i32 0, align 4
@bind_info = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Start failed: %08x\0A\00", align 1
@ReportResult = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Read failed: %08x (%d bytes)\0A\00", align 1
@event_complete = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"wait timed out\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"Read failed: %08x\0A\00", align 1
@pCreateUri = common dso_local global i64 0, align 8
@IID_IInternetProtocolEx = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"Could not get IInternetProtocolEx iface: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ref=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ftp_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ftp_protocol() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [4096 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @FTP_TEST, align 4
  %12 = call i32 @init_test(i32 %11, i32 0)
  %13 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %14 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @BINDF_PULLDATA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @BINDF_FROMURLMON, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BINDF_NOWRITECACHE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* @bindf, align 4
  %22 = load i32, i32* @STATE_STARTDOWNLOADING, align 4
  store i32 %22, i32* @state, align 4
  %23 = load i64, i64* @E_PENDING, align 8
  store i64 %23, i64* @expect_hrResult, align 8
  %24 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %25 = bitcast i32** %3 to i8**
  %26 = call i64 @CoGetClassObject(i32* @CLSID_FtpProtocol, i32 %24, i32* null, i32* @IID_IUnknown, i8** %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %0
  br label %192

37:                                               ; preds = %0
  %38 = load i32*, i32** %3, align 8
  %39 = bitcast i32** %1 to i8**
  %40 = call i64 @IUnknown_QueryInterface(i32* %38, i32* @IID_IInternetProtocolInfo, i8** %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @E_NOINTERFACE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %7, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = bitcast i32** %2 to i8**
  %49 = call i64 @IUnknown_QueryInterface(i32* %47, i32* @IID_IClassFactory, i8** %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @IUnknown_Release(i32* %55)
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @FAILED(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %37
  br label %192

61:                                               ; preds = %37
  %62 = load i32*, i32** %2, align 8
  %63 = call i64 @IClassFactory_CreateInstance(i32* %62, i32* null, i32* @IID_IInternetProtocol, i8** bitcast (i32* @async_protocol to i8**))
  store i64 %63, i64* %7, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @IClassFactory_Release(i32* %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @async_protocol, align 4
  %73 = call i32 @test_priority(i32 %72)
  %74 = load i32, i32* @GetBindInfo, align 4
  %75 = call i32 @SET_EXPECT(i32 %74)
  %76 = load i32, i32* @ReportProgress_FINDINGRESOURCE, align 4
  %77 = call i32 @SET_EXPECT(i32 %76)
  %78 = load i32, i32* @ReportProgress_CONNECTING, align 4
  %79 = call i32 @SET_EXPECT(i32 %78)
  %80 = load i32, i32* @ReportProgress_SENDINGREQUEST, align 4
  %81 = call i32 @SET_EXPECT(i32 %80)
  %82 = load i32, i32* @Switch, align 4
  %83 = call i32 @SET_EXPECT(i32 %82)
  %84 = load i32, i32* @async_protocol, align 4
  %85 = call i64 @IInternetProtocol_Start(i32 %84, float* getelementptr inbounds ([52 x float], [52 x float]* @test_ftp_protocol.ftp_urlW, i64 0, i64 0), i32* @protocol_sink, i32* @bind_info, i32 0, i32 0)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %7, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* @GetBindInfo, align 4
  %93 = call i32 @CHECK_CALLED(i32 %92)
  %94 = load i32, i32* @ReportResult, align 4
  %95 = call i32 @SET_EXPECT(i32 %94)
  %96 = load i32, i32* @async_protocol, align 4
  %97 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 0
  %98 = call i64 @IInternetProtocol_Read(i32 %96, i32* %97, i32 1, i32* %6)
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @E_PENDING, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %61
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102, %61
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 1
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i1 [ false, %105 ], [ %111, %109 ]
  br label %114

114:                                              ; preds = %112, %102
  %115 = phi i1 [ true, %102 ], [ %113, %112 ]
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %7, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %117, i32 %118)
  %120 = load i32, i32* @event_complete, align 4
  %121 = call i64 @WaitForSingleObject(i32 %120, i32 90000)
  %122 = load i64, i64* @WAIT_OBJECT_0, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %126

126:                                              ; preds = %114, %154
  %127 = load i32, i32* @async_protocol, align 4
  %128 = getelementptr inbounds [4096 x i32], [4096 x i32]* %4, i64 0, i64 0
  %129 = call i64 @IInternetProtocol_Read(i32 %127, i32* %128, i32 16384, i32* %6)
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @E_PENDING, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %126
  %134 = load i32, i32* @event_complete, align 4
  %135 = call i64 @WaitForSingleObject(i32 %134, i32 90000)
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @WAIT_OBJECT_0, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* @WAIT_OBJECT_0, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  br label %155

148:                                              ; preds = %133
  br label %154

149:                                              ; preds = %126
  %150 = load i32, i32* %6, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %155

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %148
  br label %126

155:                                              ; preds = %152, %147
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* @S_FALSE, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %7, align 8
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %160)
  %162 = load i32, i32* @ReportResult, align 4
  %163 = call i32 @CHECK_CALLED(i32 %162)
  %164 = load i32, i32* @Switch, align 4
  %165 = call i32 @CHECK_CALLED(i32 %164)
  %166 = load i32, i32* @async_protocol, align 4
  %167 = call i32 @test_protocol_terminate(i32 %166)
  %168 = load i64, i64* @pCreateUri, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %155
  %171 = load i32, i32* @async_protocol, align 4
  %172 = bitcast i32** %9 to i8**
  %173 = call i64 @IInternetProtocol_QueryInterface(i32 %171, i32* @IID_IInternetProtocolEx, i8** %172)
  store i64 %173, i64* %7, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* @S_OK, align 8
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i64, i64* %7, align 8
  %179 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i64 %178)
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 @IInternetProtocolEx_Release(i32* %180)
  br label %182

182:                                              ; preds = %170, %155
  %183 = load i32, i32* @async_protocol, align 4
  %184 = call i64 @IInternetProtocol_Release(i32 %183)
  store i64 %184, i64* %5, align 8
  %185 = load i64, i64* %5, align 8
  %186 = icmp ne i64 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = load i64, i64* %5, align 8
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 %189)
  %191 = call i32 @test_early_abort(i32* @CLSID_FtpProtocol)
  br label %192

192:                                              ; preds = %182, %60, %36
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_test(i32, i32) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @test_priority(i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IInternetProtocol_Start(i32, float*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i64 @IInternetProtocol_Read(i32, i32*, i32, i32*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @test_protocol_terminate(i32) #1

declare dso_local i64 @IInternetProtocol_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @IInternetProtocolEx_Release(i32*) #1

declare dso_local i64 @IInternetProtocol_Release(i32) #1

declare dso_local i32 @test_early_abort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
