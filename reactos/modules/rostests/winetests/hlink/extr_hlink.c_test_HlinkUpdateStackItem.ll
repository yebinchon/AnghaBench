; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_HlinkUpdateStackItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_HlinkUpdateStackItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_HlinkUpdateStackItem.location = internal constant [9 x i8] c"location\00", align 1
@HLID_CURRENT = common dso_local global i32 0, align 4
@Moniker = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@HBC_UpdateHlink = common dso_local global i32 0, align 4
@HlinkBrowseContext = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@HLF_UpdateHlink = common dso_local global i32 0, align 4
@testframe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HlinkUpdateStackItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HlinkUpdateStackItem() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @HLID_CURRENT, align 4
  %3 = call i64 @HlinkUpdateStackItem(i32* null, i32* null, i32 %2, i32* @Moniker, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_HlinkUpdateStackItem.location, i64 0, i64 0), i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @E_INVALIDARG, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32, i32* @HBC_UpdateHlink, align 4
  %11 = call i32 @SET_EXPECT(i32 %10)
  %12 = load i32, i32* @HLID_CURRENT, align 4
  %13 = call i64 @HlinkUpdateStackItem(i32* null, i32* @HlinkBrowseContext, i32 %12, i32* @Moniker, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_HlinkUpdateStackItem.location, i64 0, i64 0), i32* null)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @HBC_UpdateHlink, align 4
  %21 = call i32 @CHECK_CALLED(i32 %20)
  %22 = load i32, i32* @HLF_UpdateHlink, align 4
  %23 = call i32 @SET_EXPECT(i32 %22)
  %24 = load i32, i32* @HLID_CURRENT, align 4
  %25 = call i64 @HlinkUpdateStackItem(i32* @testframe, i32* @HlinkBrowseContext, i32 %24, i32* @Moniker, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_HlinkUpdateStackItem.location, i64 0, i64 0), i32* null)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @HLF_UpdateHlink, align 4
  %33 = call i32 @CHECK_CALLED(i32 %32)
  ret void
}

declare dso_local i64 @HlinkUpdateStackItem(i32*, i32*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
