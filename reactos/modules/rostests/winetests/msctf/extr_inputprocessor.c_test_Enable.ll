; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_Enable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_Enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@g_ipp = common dso_local global i32 0, align 4
@CLSID_FakeService = common dso_local global i32 0, align 4
@gLangid = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to enable text service\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get enabled state\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"enabled state incorrect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @FALSE, align 8
  store i64 %3, i64* %2, align 8
  %4 = load i32, i32* @g_ipp, align 4
  %5 = load i32, i32* @gLangid, align 4
  %6 = load i64, i64* @TRUE, align 8
  %7 = call i32 @ITfInputProcessorProfiles_EnableLanguageProfile(i32 %4, i32* @CLSID_FakeService, i32 %5, i32* @CLSID_FakeService, i64 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @SUCCEEDED(i32 %8)
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @g_ipp, align 4
  %12 = load i32, i32* @gLangid, align 4
  %13 = call i32 @ITfInputProcessorProfiles_IsEnabledLanguageProfile(i32 %11, i32* @CLSID_FakeService, i32 %12, i32* @CLSID_FakeService, i64* %2)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @SUCCEEDED(i32 %14)
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @TRUE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ITfInputProcessorProfiles_EnableLanguageProfile(i32, i32*, i32, i32*, i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @ITfInputProcessorProfiles_IsEnabledLanguageProfile(i32, i32*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
