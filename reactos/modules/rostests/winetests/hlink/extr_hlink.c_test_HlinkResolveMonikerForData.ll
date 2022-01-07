; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_HlinkResolveMonikerForData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_HlinkResolveMonikerForData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_bctx = common dso_local global i32* null, align 8
@IsSystemMoniker = common dso_local global i32 0, align 4
@GetDisplayName = common dso_local global i32 0, align 4
@BindToStorage = common dso_local global i32 0, align 4
@Moniker = common dso_local global i32 0, align 4
@BindStatusCallback = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"HlinkResolveMonikerForData failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HlinkResolveMonikerForData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HlinkResolveMonikerForData() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @CreateBindCtx(i32 0, i32** %1)
  %4 = load i32*, i32** %1, align 8
  store i32* %4, i32** @_bctx, align 8
  %5 = load i32, i32* @IsSystemMoniker, align 4
  %6 = call i32 @SET_EXPECT(i32 %5)
  %7 = load i32, i32* @GetDisplayName, align 4
  %8 = call i32 @SET_EXPECT(i32 %7)
  %9 = load i32, i32* @BindToStorage, align 4
  %10 = call i32 @SET_EXPECT(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i64 @HlinkResolveMonikerForData(i32* @Moniker, i32 0, i32* %11, i32 0, i32* null, i32* @BindStatusCallback, i32* null)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @IsSystemMoniker, align 4
  %20 = call i32 @CHECK_CALLED(i32 %19)
  %21 = load i32, i32* @GetDisplayName, align 4
  %22 = call i32 @CHECK_CALLED(i32 %21)
  %23 = load i32, i32* @BindToStorage, align 4
  %24 = call i32 @CHECK_CALLED(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @IBindCtx_Release(i32* %25)
  store i32* null, i32** @_bctx, align 8
  ret void
}

declare dso_local i32 @CreateBindCtx(i32, i32**) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @HlinkResolveMonikerForData(i32*, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
