; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_https_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_https_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_https_protocol.https_winehq_url = internal constant [41 x i8] c"https://test.winehq.org/tests/hello.html\00", align 16
@.str = private unnamed_addr constant [41 x i8] c"Testing https protocol (from urlmon)...\0A\00", align 1
@BINDF_ASYNCHRONOUS = common dso_local global i32 0, align 4
@BINDF_ASYNCSTORAGE = common dso_local global i32 0, align 4
@BINDF_PULLDATA = common dso_local global i32 0, align 4
@BINDF_FROMURLMON = common dso_local global i32 0, align 4
@BINDF_NOWRITECACHE = common dso_local global i32 0, align 4
@bindf = common dso_local global i32 0, align 4
@HTTPS_TEST = common dso_local global i32 0, align 4
@TEST_FIRST_HTTP = common dso_local global i32 0, align 4
@TYMED_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_https_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_https_protocol() #0 {
  %1 = call i32 @trace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %3 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @BINDF_PULLDATA, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @BINDF_FROMURLMON, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @BINDF_NOWRITECACHE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* @bindf, align 4
  %11 = load i32, i32* @HTTPS_TEST, align 4
  %12 = load i32, i32* @TEST_FIRST_HTTP, align 4
  %13 = load i32, i32* @TYMED_NULL, align 4
  %14 = call i32 @test_http_protocol_url(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @test_https_protocol.https_winehq_url, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @test_http_protocol_url(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
