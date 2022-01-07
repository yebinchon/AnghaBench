; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_initialize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Software\\Microsoft\\CTF\\TIP\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Not enough permission to register input processor\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@CLSID_TF_InputProcessorProfiles = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITfInputProcessorProfiles = common dso_local global i32 0, align 4
@g_ipp = common dso_local global i32 0, align 4
@CLSID_TF_CategoryMgr = common dso_local global i32 0, align 4
@IID_ITfCategoryMgr = common dso_local global i32 0, align 4
@g_cm = common dso_local global i32 0, align 4
@CLSID_TF_ThreadMgr = common dso_local global i32 0, align 4
@IID_ITfThreadMgr = common dso_local global i32 0, align 4
@g_tm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @CoInitialize(i32* null)
  %5 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %6 = load i32, i32* @KEY_READ, align 4
  %7 = load i32, i32* @KEY_WRITE, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @RegOpenKeyExA(i32 %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 0, i32 %8, i32* %3)
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = call i32 @skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @E_FAIL, align 4
  store i32 %14, i32* %1, align 4
  br label %35

15:                                               ; preds = %0
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @RegCloseKey(i32 %16)
  %18 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %19 = call i32 @CoCreateInstance(i32* @CLSID_TF_InputProcessorProfiles, i32* null, i32 %18, i32* @IID_ITfInputProcessorProfiles, i8** bitcast (i32* @g_ipp to i8**))
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @SUCCEEDED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %25 = call i32 @CoCreateInstance(i32* @CLSID_TF_CategoryMgr, i32* null, i32 %24, i32* @IID_ITfCategoryMgr, i8** bitcast (i32* @g_cm to i8**))
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @SUCCEEDED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %32 = call i32 @CoCreateInstance(i32* @CLSID_TF_ThreadMgr, i32* null, i32 %31, i32* @IID_ITfThreadMgr, i8** bitcast (i32* @g_tm to i8**))
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %12
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
