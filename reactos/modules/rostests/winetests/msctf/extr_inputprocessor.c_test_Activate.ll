; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_Activate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_Activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@test_ShouldActivate = common dso_local global i32 0, align 4
@g_ipp = common dso_local global i32 0, align 4
@CLSID_FakeService = common dso_local global i32 0, align 4
@gLangid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to Activate text service\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Activate() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TRUE, align 4
  store i32 %2, i32* @test_ShouldActivate, align 4
  %3 = load i32, i32* @g_ipp, align 4
  %4 = load i32, i32* @gLangid, align 4
  %5 = call i32 @ITfInputProcessorProfiles_ActivateLanguageProfile(i32 %3, i32* @CLSID_FakeService, i32 %4, i32* @CLSID_FakeService)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @SUCCEEDED(i32 %6)
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* @test_ShouldActivate, align 4
  ret void
}

declare dso_local i32 @ITfInputProcessorProfiles_ActivateLanguageProfile(i32, i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
