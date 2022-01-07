; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_httpreq.c_test_supporterrorinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_httpreq.c_test_supporterrorinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_ISupportErrorInfo = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to get ISupportErrorInfo, hr %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unexpected error info instance.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_supporterrorinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_supporterrorinfo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* (...) @create_xhr()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @EXPECT_REF(i32* %7, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32** %4 to i8**
  %11 = call i64 @IXMLHttpRequest_QueryInterface(i32* %9, i32* @IID_ISupportErrorInfo, i8** %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @EXPECT_REF(i32* %18, i32 2)
  %20 = load i32*, i32** %2, align 8
  %21 = bitcast i32** %5 to i8**
  %22 = call i64 @IXMLHttpRequest_QueryInterface(i32* %20, i32* @IID_ISupportErrorInfo, i8** %21)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp eq i32* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @EXPECT_REF(i32* %34, i32 3)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ISupportErrorInfo_Release(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ISupportErrorInfo_Release(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @IXMLHttpRequest_Release(i32* %40)
  %42 = call i32* (...) @create_server_xhr()
  store i32* %42, i32** %3, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @EXPECT_REF(i32* %43, i32 1)
  %45 = load i32*, i32** %3, align 8
  %46 = bitcast i32** %4 to i8**
  %47 = call i64 @IServerXMLHTTPRequest_QueryInterface(i32* %45, i32* @IID_ISupportErrorInfo, i8** %46)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %1, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @EXPECT_REF(i32* %54, i32 2)
  %56 = load i32*, i32** %3, align 8
  %57 = bitcast i32** %5 to i8**
  %58 = call i64 @IServerXMLHTTPRequest_QueryInterface(i32* %56, i32* @IID_ISupportErrorInfo, i8** %57)
  store i64 %58, i64* %1, align 8
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %1, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = icmp eq i32* %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @EXPECT_REF(i32* %70, i32 3)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ISupportErrorInfo_Release(i32* %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @ISupportErrorInfo_Release(i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @IServerXMLHTTPRequest_Release(i32* %76)
  ret void
}

declare dso_local i32* @create_xhr(...) #1

declare dso_local i32 @EXPECT_REF(i32*, i32) #1

declare dso_local i64 @IXMLHttpRequest_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ISupportErrorInfo_Release(i32*) #1

declare dso_local i32 @IXMLHttpRequest_Release(i32*) #1

declare dso_local i32* @create_server_xhr(...) #1

declare dso_local i64 @IServerXMLHTTPRequest_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IServerXMLHTTPRequest_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
