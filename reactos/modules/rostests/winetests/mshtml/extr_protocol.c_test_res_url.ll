; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_test_res_url.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_test_res_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@res_url_base = common dso_local global i32 0, align 4
@res_url_base_len = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@CLSID_ResProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Could not create ResProtocol instance: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Read failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Terminate failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ref=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_res_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_res_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [100 x i32], align 16
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @res_url_base, align 4
  %15 = load i32, i32* @res_url_base_len, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memcpy(i32* %13, i32 %14, i32 %18)
  %20 = load i32, i32* @CP_ACP, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @res_url_base_len, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %13, i64 %23
  %25 = mul nuw i64 4, %11
  %26 = udiv i64 %25, 4
  %27 = load i32, i32* @res_url_base_len, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %26, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @MultiByteToWideChar(i32 %20, i32 0, i8* %21, i32 -1, i32* %24, i32 %30)
  %32 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %33 = bitcast i32** %5 to i8**
  %34 = call i64 @CoCreateInstance(i32* @CLSID_ResProtocol, i32* null, i32 %32, i32* @IID_IInternetProtocol, i8** %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @protocol_start(i32* %41, i32* %13)
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %45 = call i64 @IInternetProtocol_Read(i32* %43, i32* %44, i32 400, i64* %6)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @IInternetProtocol_Terminate(i32* %52, i32 0)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @IInternetProtocol_Release(i32* %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @protocol_start(i32*, i32*) #2

declare dso_local i64 @IInternetProtocol_Read(i32*, i32*, i32, i64*) #2

declare dso_local i64 @IInternetProtocol_Terminate(i32*, i32) #2

declare dso_local i64 @IInternetProtocol_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
