; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoCreateInstance.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoCreateInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_InternetZoneManager = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@CO_E_NOTINITIALIZED = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [77 x i8] c"CoCreateInstance should have returned CO_E_NOTINITIALIZED instead of 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"CoCreateInstance should have changed the passed in pointer to NULL, instead of %p\0A\00", align 1
@CLSID_non_existent = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [110 x i8] c"CoCreateInstance for non-registered inproc server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\0A\00", align 1
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [111 x i8] c"CoCreateInstance for non-registered inproc handler should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\0A\00", align 1
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [109 x i8] c"CoCreateInstance for non-registered local server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\0A\00", align 1
@CLSCTX_REMOTE_SERVER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [110 x i8] c"CoCreateInstance for non-registered remote server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"IE not installed so can't test CoCreateInstance\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"CoCreateInstance\00", align 1
@APTTYPE_CURRENT = common dso_local global i32 0, align 4
@APTTYPEQUALIFIER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoCreateInstance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoCreateInstance() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* @CLSID_InternetZoneManager, i32** %3, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = bitcast i32** %2 to i8**
  %7 = call i32* @CoCreateInstance(i32* %4, i32* null, i32 %5, i32* @IID_IUnknown, i8** %6)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i32*, i32** @CO_E_NOTINITIALIZED, align 8
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %19 = call i32 @OleInitialize(i32* null)
  %20 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %21 = bitcast i32** %2 to i8**
  %22 = call i32* @CoCreateInstance(i32* @CLSID_non_existent, i32* null, i32 %20, i32* @IID_IUnknown, i8** %21)
  store i32* %22, i32** %1, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = load i32*, i32** @REGDB_E_CLASSNOTREG, align 8
  %25 = icmp eq i32* %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  %29 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %30 = bitcast i32** %2 to i8**
  %31 = call i32* @CoCreateInstance(i32* @CLSID_non_existent, i32* null, i32 %29, i32* @IID_IUnknown, i8** %30)
  store i32* %31, i32** %1, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = load i32*, i32** @REGDB_E_CLASSNOTREG, align 8
  %34 = icmp eq i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i32* %36)
  %38 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %39 = bitcast i32** %2 to i8**
  %40 = call i32* @CoCreateInstance(i32* @CLSID_non_existent, i32* null, i32 %38, i32* @IID_IUnknown, i8** %39)
  store i32* %40, i32** %1, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = load i32*, i32** @REGDB_E_CLASSNOTREG, align 8
  %43 = icmp eq i32* %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32* %45)
  %47 = load i32, i32* @CLSCTX_REMOTE_SERVER, align 4
  %48 = bitcast i32** %2 to i8**
  %49 = call i32* @CoCreateInstance(i32* @CLSID_non_existent, i32* null, i32 %47, i32* @IID_IUnknown, i8** %48)
  store i32* %49, i32** %1, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** @REGDB_E_CLASSNOTREG, align 8
  %52 = icmp eq i32* %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.5, i64 0, i64 0), i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %58 = bitcast i32** %2 to i8**
  %59 = call i32* @CoCreateInstance(i32* %56, i32* null, i32 %57, i32* @IID_IUnknown, i8** %58)
  store i32* %59, i32** %1, align 8
  %60 = load i32*, i32** %1, align 8
  %61 = load i32*, i32** @REGDB_E_CLASSNOTREG, align 8
  %62 = icmp eq i32* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %0
  %64 = call i32 @skip(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %65 = call i32 (...) @OleUninitialize()
  br label %89

66:                                               ; preds = %0
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @ok_ole_success(i32* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i32*, i32** %2, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @IUnknown_Release(i32* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = call i32 (...) @OleUninitialize()
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %78 = bitcast i32** %2 to i8**
  %79 = call i32* @CoCreateInstance(i32* %76, i32* null, i32 %77, i32* @IID_IUnknown, i8** %78)
  store i32* %79, i32** %1, align 8
  %80 = load i32*, i32** %1, align 8
  %81 = load i32*, i32** @CO_E_NOTINITIALIZED, align 8
  %82 = icmp eq i32* %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32* %84)
  %86 = load i32, i32* @APTTYPE_CURRENT, align 4
  %87 = load i32, i32* @APTTYPEQUALIFIER_NONE, align 4
  %88 = call i32 @test_apt_type(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %74, %63
  ret void
}

declare dso_local i32* @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32 @OleInitialize(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @OleUninitialize(...) #1

declare dso_local i32 @ok_ole_success(i32*, i8*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @test_apt_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
