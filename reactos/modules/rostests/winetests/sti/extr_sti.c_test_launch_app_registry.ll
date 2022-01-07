; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/sti/extr_sti.c_test_launch_app_registry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/sti/extr_sti.c_test_launch_app_registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_launch_app_registry.appName = internal global [15 x i8] c"winestitestapp\00", align 1
@pStiCreateInstanceW = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"No StiCreateInstanceW function\0A\00", align 1
@STI_VERSION_REAL = common dso_local global i32 0, align 4
@STI_VERSION_FLAG_UNICODE = common dso_local global i32 0, align 4
@E_ACCESSDENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Not authorized to register a launch application\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"could not unregister launch application, error 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"could not register launch application, error 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"could not create StillImageW, hr = 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_launch_app_registry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_launch_app_registry() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %3 = load i32*, i32** @pStiCreateInstanceW, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %45

7:                                                ; preds = %0
  %8 = call i32 @GetModuleHandleA(i32* null)
  %9 = load i32, i32* @STI_VERSION_REAL, align 4
  %10 = load i32, i32* @STI_VERSION_FLAG_UNICODE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @pStiCreateInstance(i32 %8, i32 %11, i32** %1, i32* null)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @SUCCEEDED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %7
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @IStillImage_RegisterLaunchApplication(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_launch_app_registry.appName, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_launch_app_registry.appName, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @E_ACCESSDENIED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @skip(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %39

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @SUCCEEDED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @IStillImage_UnregisterLaunchApplication(i32* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_launch_app_registry.appName, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @SUCCEEDED(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @ok(i64 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @ok(i64 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @IStillImage_Release(i32* %40)
  br label %45

42:                                               ; preds = %7
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @ok(i64 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %5, %42, %39
  ret void
}

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @pStiCreateInstance(i32, i32, i32**, i32*) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IStillImage_RegisterLaunchApplication(i32*, i8*, i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IStillImage_UnregisterLaunchApplication(i32*, i8*) #1

declare dso_local i32 @ok(i64, i8*, i32) #1

declare dso_local i32 @IStillImage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
