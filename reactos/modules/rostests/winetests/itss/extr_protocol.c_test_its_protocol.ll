; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_test_its_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_test_its_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_its_protocol.wrong_url1 = internal constant [25 x i8] c"its:test.chm::/blan.html\00", align 16
@test_its_protocol.wrong_url2 = internal constant [25 x i8] c"its:tes.chm::b/lank.html\00", align 16
@test_its_protocol.wrong_url3 = internal constant [24 x i8] c"its:test.chm/blank.html\00", align 16
@test_its_protocol.wrong_url4 = internal constant [35 x i8] c"mk:@MSITStor:test.chm::/blank.html\00", align 16
@test_its_protocol.wrong_url5 = internal constant [26 x i8] c"file:tes.chm::/blank.html\00", align 16
@ITS_PROTOCOL = common dso_local global i32 0, align 4
@test_protocol = common dso_local global i32 0, align 4
@CLSID_ITSProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CoGetClassObject failed: %08x\0A\00", align 1
@IID_IInternetProtocolInfo = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not get IInternetProtocolInfo: %08x\0A\00", align 1
@IID_IClassFactory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not get IClassFactory interface\0A\00", align 1
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not get IInternetProtocol: %08x\0A\00", align 1
@STG_E_FILENOTFOUND = common dso_local global i32 0, align 4
@protocol_sink = common dso_local global i32 0, align 4
@bind_info = common dso_local global i32 0, align 4
@INET_E_USE_DEFAULT_PROTOCOLHANDLER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [65 x i8] c"Start failed: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"protocol ref=%d\0A\00", align 1
@blank_url1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@blank_url2 = common dso_local global i32 0, align 4
@blank_url3 = common dso_local global i32 0, align 4
@blank_url4 = common dso_local global i32 0, align 4
@blank_url5 = common dso_local global i32 0, align 4
@blank_url6 = common dso_local global i32 0, align 4
@blank_url8 = common dso_local global i32 0, align 4
@blank_url9 = common dso_local global i32 0, align 4
@BINDF_FROMURLMON = common dso_local global i32 0, align 4
@BINDF_NEEDFILE = common dso_local global i32 0, align 4
@bindf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_its_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_its_protocol() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @ITS_PROTOCOL, align 4
  store i32 %7, i32* @test_protocol, align 4
  %8 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %9 = bitcast i32** %3 to i8**
  %10 = call i64 @CoGetClassObject(i32* @CLSID_ITSProtocol, i32 %8, i32* null, i32* @IID_IUnknown, i8** %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %0
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @broken(i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %14, %0
  %22 = phi i1 [ true, %0 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @FAILED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %145

30:                                               ; preds = %21
  %31 = load i32*, i32** %3, align 8
  %32 = bitcast i32** %1 to i8**
  %33 = call i64 @IUnknown_QueryInterface(i32* %31, i32* @IID_IInternetProtocolInfo, i8** %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @E_NOINTERFACE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %5, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = bitcast i32** %2 to i8**
  %42 = call i64 @IUnknown_QueryInterface(i32* %40, i32* @IID_IClassFactory, i8** %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @SUCCEEDED(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %142

51:                                               ; preds = %30
  %52 = load i32*, i32** %2, align 8
  %53 = bitcast i32** %6 to i8**
  %54 = call i64 @IClassFactory_CreateInstance(i32* %52, i32* null, i32* @IID_IInternetProtocol, i8** %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @SUCCEEDED(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %139

64:                                               ; preds = %51
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @test_its_protocol_info(i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @STG_E_FILENOTFOUND, align 4
  %69 = call i32 @test_protocol_fail(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @test_its_protocol.wrong_url1, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @STG_E_FILENOTFOUND, align 4
  %72 = call i32 @test_protocol_fail(i32* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @test_its_protocol.wrong_url2, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* @STG_E_FILENOTFOUND, align 4
  %75 = call i32 @test_protocol_fail(i32* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_its_protocol.wrong_url3, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @IInternetProtocol_Start(i32* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_its_protocol.wrong_url4, i64 0, i64 0), i32* @protocol_sink, i32* @bind_info, i32 0, i32 0)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @INET_E_USE_DEFAULT_PROTOCOLHANDLER, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %5, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = call i64 @IInternetProtocol_Start(i32* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @test_its_protocol.wrong_url5, i64 0, i64 0), i32* @protocol_sink, i32* @bind_info, i32 0, i32 0)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @INET_E_USE_DEFAULT_PROTOCOLHANDLER, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %5, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 @IInternetProtocol_Release(i32* %92)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %4, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* @blank_url1, align 4
  %102 = load i32, i32* @TRUE, align 4
  %103 = call i32 @test_protocol_url(i32* %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = load i32, i32* @blank_url2, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @test_protocol_url(i32* %104, i32 %105, i32 %106)
  %108 = load i32*, i32** %2, align 8
  %109 = load i32, i32* @blank_url3, align 4
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i32 @test_protocol_url(i32* %108, i32 %109, i32 %110)
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* @blank_url4, align 4
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i32 @test_protocol_url(i32* %112, i32 %113, i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = load i32, i32* @blank_url5, align 4
  %118 = load i32, i32* @TRUE, align 4
  %119 = call i32 @test_protocol_url(i32* %116, i32 %117, i32 %118)
  %120 = load i32*, i32** %2, align 8
  %121 = load i32, i32* @blank_url6, align 4
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @test_protocol_url(i32* %120, i32 %121, i32 %122)
  %124 = load i32*, i32** %2, align 8
  %125 = load i32, i32* @blank_url8, align 4
  %126 = load i32, i32* @TRUE, align 4
  %127 = call i32 @test_protocol_url(i32* %124, i32 %125, i32 %126)
  %128 = load i32*, i32** %2, align 8
  %129 = load i32, i32* @blank_url9, align 4
  %130 = load i32, i32* @TRUE, align 4
  %131 = call i32 @test_protocol_url(i32* %128, i32 %129, i32 %130)
  %132 = load i32, i32* @BINDF_FROMURLMON, align 4
  %133 = load i32, i32* @BINDF_NEEDFILE, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* @bindf, align 4
  %135 = load i32*, i32** %2, align 8
  %136 = load i32, i32* @blank_url1, align 4
  %137 = load i32, i32* @TRUE, align 4
  %138 = call i32 @test_protocol_url(i32* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %64, %51
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @IClassFactory_Release(i32* %140)
  br label %142

142:                                              ; preds = %139, %30
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @IUnknown_Release(i32* %143)
  br label %145

145:                                              ; preds = %142, %29
  ret void
}

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @test_its_protocol_info(i32*) #1

declare dso_local i32 @test_protocol_fail(i32*, i8*, i32) #1

declare dso_local i64 @IInternetProtocol_Start(i32*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IInternetProtocol_Release(i32*) #1

declare dso_local i32 @test_protocol_url(i32*, i32, i32) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
