; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_is_firewall_enabled.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_is_firewall_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARIANT_FALSE = common dso_local global i64 0, align 8
@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@CLSID_NetFwMgr = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_INetFwMgr = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_firewall_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_firewall_enabled() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i64, i64* @VARIANT_FALSE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %9 = call i64 @CoInitializeEx(i32 0, i32 %8)
  store i64 %9, i64* %2, align 8
  %10 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %11 = bitcast i32** %3 to i8**
  %12 = call i64 @CoCreateInstance(i32* @CLSID_NetFwMgr, i32* null, i32 %10, i32* @IID_INetFwMgr, i8** %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %52

23:                                               ; preds = %0
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @INetFwMgr_get_LocalPolicy(i32* %24, i32** %4)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %52

36:                                               ; preds = %23
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @INetFwPolicy_get_CurrentProfile(i32* %37, i32** %5)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %52

43:                                               ; preds = %36
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @INetFwProfile_get_FirewallEnabled(i32* %44, i64* %6)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %43, %42, %35, %22
  %53 = load i32*, i32** %4, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @INetFwPolicy_Release(i32* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @INetFwProfile_Release(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %3, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @INetFwMgr_Release(i32* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i64, i64* %2, align 8
  %72 = call i64 @SUCCEEDED(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (...) @CoUninitialize()
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @VARIANT_TRUE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  ret i32 %80
}

declare dso_local i64 @CoInitializeEx(i32, i32) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @INetFwMgr_get_LocalPolicy(i32*, i32**) #1

declare dso_local i64 @INetFwPolicy_get_CurrentProfile(i32*, i32**) #1

declare dso_local i64 @INetFwProfile_get_FirewallEnabled(i32*, i64*) #1

declare dso_local i32 @INetFwPolicy_Release(i32*) #1

declare dso_local i32 @INetFwProfile_Release(i32*) #1

declare dso_local i32 @INetFwMgr_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
