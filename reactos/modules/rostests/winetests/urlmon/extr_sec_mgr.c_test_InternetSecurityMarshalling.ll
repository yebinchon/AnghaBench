; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_InternetSecurityMarshalling.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_InternetSecurityMarshalling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"testing marshalling...\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"CoInternetCreateSecurityManager failed: %08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"QueryInterface returned: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"CreateStreamOnHGlobal returned: %08x\0A\00", align 1
@IID_IInternetSecurityManager = common dso_local global i32 0, align 4
@MSHCTX_INPROC = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@REGDB_E_IIDNOTREG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"CoMarshalInterface returned: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InternetSecurityMarshalling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InternetSecurityMarshalling() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %5 = call i32 @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = call i64 @pCoInternetCreateSecurityManager(i32* null, i32** %1, i32 0)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @FAILED(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %61

17:                                               ; preds = %0
  %18 = load i32*, i32** %1, align 8
  %19 = bitcast i32** %2 to i8**
  %20 = call i64 @IInternetSecurityManager_QueryInterface(i32* %18, i32* @IID_IUnknown, i8** %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i64 @CreateStreamOnHGlobal(i32* null, i32 %27, i32** %3)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @MSHCTX_INPROC, align 4
  %38 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %39 = call i64 @CoMarshalInterface(i32* %35, i32* @IID_IInternetSecurityManager, i32* %36, i32 %37, i32* null, i32 %38)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %17
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @REGDB_E_IIDNOTREG, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @broken(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %43, %17
  %51 = phi i1 [ true, %17 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @IStream_Release(i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @IUnknown_Release(i32* %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @IInternetSecurityManager_Release(i32* %59)
  br label %61

61:                                               ; preds = %50, %16
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @pCoInternetCreateSecurityManager(i32*, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IInternetSecurityManager_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i64 @CoMarshalInterface(i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IInternetSecurityManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
