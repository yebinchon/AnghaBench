; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_special_url_action.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_special_url_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URLZONEREG_DEFAULT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"GetZoneActionPolicy failed: %08x\0A\00", align 1
@URLPOLICY_DISALLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"(%x) policy=%x, expected URLPOLICY_DISALLOW\0A\00", align 1
@url1 = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"ProcessUrlAction(%x) failed: %08x, expected S_FALSE\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"policy = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @test_special_url_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_special_url_action(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -559038737, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @URLZONEREG_DEFAULT, align 4
  %12 = call i32 @IInternetZoneManager_GetZoneActionPolicy(i32* %9, i32 3, i32 %10, i32* %7, i32 4, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @S_OK, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i32, i8*, i32, ...) @ok(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @URLPOLICY_DISALLOW, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  store i32 -559038737, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @url1, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @IInternetSecurityManager_ProcessUrlAction(i32* %26, i32 %27, i32 %28, i32* %7, i32 4, i32* null, i32 0, i32 0, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @S_FALSE, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  store i32 -559038737, i32* %7, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @url1, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @IInternetSecurityManager_ProcessUrlAction(i32* %37, i32 %38, i32 %39, i32* %7, i32 4, i32* null, i32 0, i32 0, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @S_FALSE, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @URLPOLICY_DISALLOW, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, i32, ...) @ok(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  ret void
}

declare dso_local i32 @IInternetZoneManager_GetZoneActionPolicy(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IInternetSecurityManager_ProcessUrlAction(i32*, i32, i32, i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
