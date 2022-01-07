; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_profile_mgr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_profile_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_ipp = common dso_local global i32 0, align 4
@IID_ITfInputProcessorProfileMgr = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"ITfInputProcessorProfileMgr is not supported.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not get ITfInputProcessorProfileMgr iface: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"EnumProfiles failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_profile_mgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_profile_mgr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @g_ipp, align 4
  %5 = bitcast i32** %2 to i8**
  %6 = call i64 @ITfInputProcessorProfiles_QueryInterface(i32 %4, i32* @IID_ITfInputProcessorProfileMgr, i8** %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @win_skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %31

12:                                               ; preds = %0
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @ITfInputProcessorProfileMgr_EnumProfiles(i32* %19, i32 0, i32** %1)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @IEnumTfInputProcessorProfiles_Release(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @ITfInputProcessorProfileMgr_Release(i32* %29)
  br label %31

31:                                               ; preds = %12, %10
  ret void
}

declare dso_local i64 @ITfInputProcessorProfiles_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @ITfInputProcessorProfileMgr_EnumProfiles(i32*, i32, i32**) #1

declare dso_local i32 @IEnumTfInputProcessorProfiles_Release(i32*) #1

declare dso_local i32 @ITfInputProcessorProfileMgr_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
