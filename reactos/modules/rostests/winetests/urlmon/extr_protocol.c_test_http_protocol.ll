; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_http_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_http_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_http_protocol.posttest_url = internal constant [38 x i8] c"http://test.winehq.org/tests/post.php\00", align 16
@test_http_protocol.redirect_url = internal constant [38 x i8] c"http://test.winehq.org/tests/redirect\00", align 16
@test_http_protocol.winetest_url = internal constant [38 x i8] c"http://test.winehq.org/tests/data.php\00", align 16
@test_http_protocol.empty_url = internal constant [38 x i8] c"http://test.winehq.org/tests/empty.js\00", align 16
@test_http_protocol.cache_only_url = internal constant [40 x i8] c"http://test.winehq.org/tests/cache-only\00", align 16
@.str = private unnamed_addr constant [44 x i8] c"Testing http protocol (not from urlmon)...\0A\00", align 1
@BINDF_ASYNCHRONOUS = common dso_local global i32 0, align 4
@BINDF_ASYNCSTORAGE = common dso_local global i32 0, align 4
@BINDF_PULLDATA = common dso_local global i32 0, align 4
@bindf = common dso_local global i32 0, align 4
@HTTP_TEST = common dso_local global i32 0, align 4
@TEST_FIRST_HTTP = common dso_local global i32 0, align 4
@TYMED_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Testing http protocol (from urlmon)...\0A\00", align 1
@BINDF_FROMURLMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Testing http protocol (to file)...\0A\00", align 1
@BINDF_NEEDFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Testing http protocol (post data)...\0A\00", align 1
@TEST_POST = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Testing http protocol (post data stream)...\0A\00", align 1
@TEST_ASYNCREQ = common dso_local global i32 0, align 4
@TYMED_ISTREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Testing http protocol (direct read)...\0A\00", align 1
@TEST_DIRECT_READ = common dso_local global i32 0, align 4
@TEST_USEIURI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Testing http protocol (redirected)...\0A\00", align 1
@BINDF_NOWRITECACHE = common dso_local global i32 0, align 4
@TEST_REDIRECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"Testing http protocol (redirected, disable auto redirect)...\0A\00", align 1
@TEST_DISABLEAUTOREDIRECT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Testing http protocol empty file...\0A\00", align 1
@TEST_EMPTY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"Testing http protocol (from cache)...\0A\00", align 1
@TEST_FROMCACHE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Testing http protocol abort...\0A\00", align 1
@TEST_ABORT = common dso_local global i32 0, align 4
@CLSID_HttpProtocol = common dso_local global i32 0, align 4
@CLSID_HttpSProtocol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_http_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_http_protocol() #0 {
  %1 = call i32 @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %3 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @BINDF_PULLDATA, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* @bindf, align 4
  %7 = load i32, i32* @HTTP_TEST, align 4
  %8 = load i32, i32* @TEST_FIRST_HTTP, align 4
  %9 = load i32, i32* @TYMED_NULL, align 4
  %10 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.winetest_url, i64 0, i64 0), i32 %7, i32 %8, i32 %9)
  %11 = call i32 @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %13 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BINDF_PULLDATA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BINDF_FROMURLMON, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* @bindf, align 4
  %19 = load i32, i32* @HTTP_TEST, align 4
  %20 = load i32, i32* @TYMED_NULL, align 4
  %21 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.winetest_url, i64 0, i64 0), i32 %19, i32 0, i32 %20)
  %22 = call i32 @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %24 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BINDF_PULLDATA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BINDF_FROMURLMON, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BINDF_NEEDFILE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* @bindf, align 4
  %32 = load i32, i32* @HTTP_TEST, align 4
  %33 = load i32, i32* @TYMED_NULL, align 4
  %34 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.winetest_url, i64 0, i64 0), i32 %32, i32 0, i32 %33)
  %35 = call i32 @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %37 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BINDF_PULLDATA, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BINDF_FROMURLMON, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* @bindf, align 4
  %43 = load i32, i32* @HTTP_TEST, align 4
  %44 = load i32, i32* @TEST_FIRST_HTTP, align 4
  %45 = load i32, i32* @TEST_POST, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @TYMED_HGLOBAL, align 4
  %48 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.posttest_url, i64 0, i64 0), i32 %43, i32 %46, i32 %47)
  %49 = call i32 @trace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @HTTP_TEST, align 4
  %51 = load i32, i32* @TEST_FIRST_HTTP, align 4
  %52 = load i32, i32* @TEST_POST, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @TEST_ASYNCREQ, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @TYMED_ISTREAM, align 4
  %57 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.posttest_url, i64 0, i64 0), i32 %50, i32 %55, i32 %56)
  %58 = call i32 @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %60 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @BINDF_PULLDATA, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @BINDF_FROMURLMON, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* @bindf, align 4
  %66 = load i32, i32* @HTTP_TEST, align 4
  %67 = load i32, i32* @TEST_DIRECT_READ, align 4
  %68 = load i32, i32* @TEST_USEIURI, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @TYMED_NULL, align 4
  %71 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.winetest_url, i64 0, i64 0), i32 %66, i32 %69, i32 %70)
  %72 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %74 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @BINDF_PULLDATA, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @BINDF_FROMURLMON, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @BINDF_NOWRITECACHE, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* @bindf, align 4
  %82 = load i32, i32* @HTTP_TEST, align 4
  %83 = load i32, i32* @TEST_REDIRECT, align 4
  %84 = load i32, i32* @TYMED_NULL, align 4
  %85 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.redirect_url, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  %86 = call i32 @trace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %88 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @BINDF_PULLDATA, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @BINDF_FROMURLMON, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @BINDF_NOWRITECACHE, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* @bindf, align 4
  %96 = load i32, i32* @HTTP_TEST, align 4
  %97 = load i32, i32* @TEST_REDIRECT, align 4
  %98 = load i32, i32* @TEST_DISABLEAUTOREDIRECT, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @TYMED_NULL, align 4
  %101 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.redirect_url, i64 0, i64 0), i32 %96, i32 %99, i32 %100)
  %102 = call i32 @trace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %104 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @BINDF_PULLDATA, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @BINDF_FROMURLMON, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @BINDF_NOWRITECACHE, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* @bindf, align 4
  %112 = load i32, i32* @HTTP_TEST, align 4
  %113 = load i32, i32* @TEST_EMPTY, align 4
  %114 = load i32, i32* @TYMED_NULL, align 4
  %115 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.empty_url, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  %116 = call i64 @broken(i32 1)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %0
  %119 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %120 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %121 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @BINDF_PULLDATA, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @BINDF_FROMURLMON, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* @bindf, align 4
  %127 = load i32, i32* @HTTP_TEST, align 4
  %128 = load i32, i32* @TEST_FROMCACHE, align 4
  %129 = load i32, i32* @TYMED_NULL, align 4
  %130 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @test_http_protocol.cache_only_url, i64 0, i64 0), i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %118, %0
  %132 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %133 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %134 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @BINDF_PULLDATA, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @BINDF_FROMURLMON, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @BINDF_NOWRITECACHE, align 4
  %141 = or i32 %139, %140
  store i32 %141, i32* @bindf, align 4
  %142 = load i32, i32* @HTTP_TEST, align 4
  %143 = load i32, i32* @TEST_ABORT, align 4
  %144 = load i32, i32* @TYMED_NULL, align 4
  %145 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_http_protocol.winetest_url, i64 0, i64 0), i32 %142, i32 %143, i32 %144)
  %146 = call i32 @test_early_abort(i32* @CLSID_HttpProtocol)
  %147 = call i32 @test_early_abort(i32* @CLSID_HttpSProtocol)
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @test_http_protocol_url(i8*, i32, i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @test_early_abort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
