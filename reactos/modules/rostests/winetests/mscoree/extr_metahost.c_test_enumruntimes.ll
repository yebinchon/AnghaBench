; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscoree/extr_metahost.c_test_enumruntimes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscoree/extr_metahost.c_test_enumruntimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@metahost = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EnumerateInstalledRuntimes returned %x\0A\00", align 1
@IID_ICLRRuntimeInfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"QueryInterface returned %x\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"GetVersionString returned %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GetVersionString returned count %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"runtime found: %s\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"IEnumUnknown_Next returned %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_enumruntimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_enumruntimes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @metahost, align 4
  %14 = call i32 @ICLRMetaHost_EnumerateInstalledRuntimes(i32 %13, i32** %1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  br label %102

25:                                               ; preds = %0
  br label %26

26:                                               ; preds = %68, %25
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @IEnumUnknown_Next(i32* %27, i32 1, i32** %2, i32* %3)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @S_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %26
  %32 = load i32*, i32** %2, align 8
  %33 = bitcast i32** %4 to i8**
  %34 = call i32 @IUnknown_QueryInterface(i32* %32, i32* @IID_ICLRRuntimeInfo, i8** %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 1, i32* %3, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @ICLRRuntimeInfo_GetVersionString(i32* %41, i32* %12, i32* %3)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %45 = call i32 @HRESULT_FROM_WIN32(i32 %44)
  %46 = icmp eq i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 -559038737, i32* %3, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ICLRRuntimeInfo_GetVersionString(i32* %55, i32* null, i32* %3)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @S_OK, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %31
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, -559038737
  br label %68

68:                                               ; preds = %65, %31
  %69 = phi i1 [ false, %31 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @MAX_PATH, align 4
  store i32 %73, i32* %3, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @ICLRRuntimeInfo_GetVersionString(i32* %74, i32* %12, i32* %3)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @S_OK, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = icmp sgt i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = call i32 @wine_dbgstr_w(i32* %12)
  %88 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ICLRRuntimeInfo_Release(i32* %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @IUnknown_Release(i32* %91)
  br label %26

93:                                               ; preds = %26
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @S_FALSE, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @IEnumUnknown_Release(i32* %100)
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %93, %24
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %8, align 4
  switch i32 %104, label %106 [
    i32 0, label %105
    i32 1, label %105
  ]

105:                                              ; preds = %102, %102
  ret void

106:                                              ; preds = %102
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ICLRMetaHost_EnumerateInstalledRuntimes(i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IEnumUnknown_Next(i32*, i32, i32**, i32*) #2

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @ICLRRuntimeInfo_GetVersionString(i32*, i32*, i32*) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @trace(i8*, i32) #2

declare dso_local i32 @wine_dbgstr_w(i32*) #2

declare dso_local i32 @ICLRRuntimeInfo_Release(i32*) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32 @IEnumUnknown_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
