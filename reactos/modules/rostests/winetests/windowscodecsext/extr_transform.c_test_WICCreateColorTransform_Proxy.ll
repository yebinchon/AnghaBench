; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecsext/extr_transform.c_test_WICCreateColorTransform_Proxy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecsext/extr_transform.c_test_WICCreateColorTransform_Proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WICCreateColorTransform_Proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WICCreateColorTransform_Proxy() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = call i64 @WICCreateColorTransform_Proxy(i32** null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @E_INVALIDARG, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %8)
  store i32* null, i32** %2, align 8
  %10 = call i64 @WICCreateColorTransform_Proxy(i32** %2)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @IWICColorTransform_Release(i32* %20)
  br label %22

22:                                               ; preds = %19, %0
  %23 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %24 = call i64 @CoInitializeEx(i32* null, i32 %23)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %29)
  store i32* null, i32** %2, align 8
  %31 = call i64 @WICCreateColorTransform_Proxy(i32** %2)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @IWICColorTransform_Release(i32* %41)
  br label %43

43:                                               ; preds = %40, %22
  %44 = call i32 (...) @CoUninitialize()
  %45 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %46 = call i64 @CoInitializeEx(i32* null, i32 %45)
  store i64 %46, i64* %1, align 8
  %47 = load i64, i64* %1, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %1, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %51)
  store i32* null, i32** %2, align 8
  %53 = call i64 @WICCreateColorTransform_Proxy(i32** %2)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %43
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @IWICColorTransform_Release(i32* %63)
  br label %65

65:                                               ; preds = %62, %43
  %66 = call i32 (...) @CoUninitialize()
  ret void
}

declare dso_local i64 @WICCreateColorTransform_Proxy(i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IWICColorTransform_Release(i32*) #1

declare dso_local i64 @CoInitializeEx(i32*, i32) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
