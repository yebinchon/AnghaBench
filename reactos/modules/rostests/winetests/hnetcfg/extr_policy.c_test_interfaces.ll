; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hnetcfg/extr_policy.c_test_interfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hnetcfg/extr_policy.c_test_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_NetFwMgr = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_INetFwMgr = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"NetFwMgr create failed: %08x\0A\00", align 1
@IID_INetFwPolicy = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@IID_INetFwPolicy2 = common dso_local global i32 0, align 4
@CLSID_NetFwPolicy2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"NetFwPolicy2 object is not supported: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_interfaces() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %7 = or i32 %5, %6
  %8 = bitcast i32** %1 to i8**
  %9 = call i64 @CoCreateInstance(i32* @CLSID_NetFwMgr, i32* null, i32 %7, i32* @IID_INetFwMgr, i8** %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = bitcast i32** %2 to i8**
  %18 = call i64 @INetFwMgr_QueryInterface(i32* %16, i32* @IID_INetFwPolicy, i8** %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @E_NOINTERFACE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = bitcast i32** %3 to i8**
  %27 = call i64 @INetFwMgr_QueryInterface(i32* %25, i32* @IID_INetFwPolicy2, i8** %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @E_NOINTERFACE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i64 @INetFwMgr_get_LocalPolicy(i32* %34, i32** %2)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = bitcast i32** %3 to i8**
  %44 = call i64 @INetFwPolicy_QueryInterface(i32* %42, i32* @IID_INetFwPolicy2, i8** %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @E_NOINTERFACE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @INetFwPolicy_Release(i32* %51)
  %53 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %54 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %55 = or i32 %53, %54
  %56 = bitcast i32** %3 to i8**
  %57 = call i64 @CoCreateInstance(i32* @CLSID_NetFwPolicy2, i32* null, i32 %55, i32* @IID_INetFwPolicy2, i8** %56)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %0
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @test_policy2_rules(i32* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @INetFwPolicy2_Release(i32* %64)
  br label %69

66:                                               ; preds = %0
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @win_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @INetFwMgr_Release(i32* %70)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @INetFwMgr_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @INetFwMgr_get_LocalPolicy(i32*, i32**) #1

declare dso_local i64 @INetFwPolicy_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @INetFwPolicy_Release(i32*) #1

declare dso_local i32 @test_policy2_rules(i32*) #1

declare dso_local i32 @INetFwPolicy2_Release(i32*) #1

declare dso_local i32 @win_skip(i8*, i64) #1

declare dso_local i32 @INetFwMgr_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
