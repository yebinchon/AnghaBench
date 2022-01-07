; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_run_js_script.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_run_js_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@run_js_script.res = internal constant [7 x i8] c"res://\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"running %s...\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@IID_IPropertyNotifySink = common dso_local global i32 0, align 4
@PropertyNotifySink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"CreateURLMoniker failed: %08x\0A\00", align 1
@IID_IPersistMoniker = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Could not get IPersistMoniker iface: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Load failed: %08x\0A\00", align 1
@external_success = common dso_local global i32 0, align 4
@called_external_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_js_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_js_script(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32* (...) @create_document()
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %99

25:                                               ; preds = %1
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @set_client_site(i32* %26, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @do_advise(i32* %29, i32* @IID_IPropertyNotifySink, i32* @PropertyNotifySink)
  %31 = call i32 @lstrcpyA(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @run_js_script.res, i64 0, i64 0))
  %32 = call i32 @lstrlenA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @run_js_script.res, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %18, i64 %33
  %35 = call i32 @lstrlenA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @run_js_script.res, i64 0, i64 0))
  %36 = sext i32 %35 to i64
  %37 = sub i64 %17, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @GetModuleFileNameA(i32* null, i8* %34, i32 %38)
  %40 = call i32 @lstrcatA(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @lstrcatA(i8* %18, i8* %41)
  %43 = load i32, i32* @CP_ACP, align 4
  %44 = mul nuw i64 4, %13
  %45 = udiv i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @MultiByteToWideChar(i32 %43, i32 0, i8* %18, i32 -1, i32* %15, i32 %46)
  %48 = call i64 @CreateURLMoniker(i32* null, i32* %15, i32** %8)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = bitcast i32** %6 to i8**
  %57 = call i64 @IHTMLDocument2_QueryInterface(i32* %55, i32* @IID_IPersistMoniker, i8** %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @IPersistMoniker_Load(i32* %64, i32 %65, i32* %66, i32* null, i32 0)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @IMoniker_Release(i32* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @IPersistMoniker_Release(i32* %76)
  %78 = load i32, i32* @external_success, align 4
  %79 = call i32 @SET_EXPECT(i32 %78)
  br label %80

80:                                               ; preds = %88, %25
  %81 = load i32, i32* @called_external_success, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = call i64 @GetMessageW(i32* %9, i32* null, i32 0, i32 0)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i1 [ false, %80 ], [ %85, %83 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = call i32 @TranslateMessage(i32* %9)
  %90 = call i32 @DispatchMessageW(i32* %9)
  br label %80

91:                                               ; preds = %86
  %92 = load i32, i32* @external_success, align 4
  %93 = call i32 @CHECK_CALLED(i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i32 @set_client_site(i32* %94, i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @IHTMLDocument2_Release(i32* %97)
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %91, %24
  %100 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %11, align 4
  switch i32 %101, label %103 [
    i32 0, label %102
    i32 1, label %102
  ]

102:                                              ; preds = %99, %99
  ret void

103:                                              ; preds = %99
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32* @create_document(...) #2

declare dso_local i32 @set_client_site(i32*, i32) #2

declare dso_local i32 @do_advise(i32*, i32*, i32*) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @GetModuleFileNameA(i32*, i8*, i32) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i64 @CreateURLMoniker(i32*, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i64 @IPersistMoniker_Load(i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @IMoniker_Release(i32*) #2

declare dso_local i32 @IPersistMoniker_Release(i32*) #2

declare dso_local i32 @SET_EXPECT(i32) #2

declare dso_local i64 @GetMessageW(i32*, i32*, i32, i32) #2

declare dso_local i32 @TranslateMessage(i32*) #2

declare dso_local i32 @DispatchMessageW(i32*) #2

declare dso_local i32 @CHECK_CALLED(i32) #2

declare dso_local i32 @IHTMLDocument2_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
