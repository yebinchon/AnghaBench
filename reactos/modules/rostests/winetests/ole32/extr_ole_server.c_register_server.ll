; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole_server.c_register_server.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole_server.c_register_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@register_server.clsidW = internal constant [7 x i8] c"CLSID\\\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c" ole_server\00", align 1
@CLSID_WineTestObject = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_CREATE_SUB_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"LocalServer32\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"RegSetValue error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"InprocHandler32\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ole32.dll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @register_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_server(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [45 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @lstrcpyA(i8* %13, i8* %14)
  %16 = call i32 @lstrcatA(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds [45 x i8], [45 x i8]* %7, i64 0, i64 0
  %18 = call i32 @lstrcpyW(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @register_server.clsidW, i64 0, i64 0))
  %19 = getelementptr inbounds [45 x i8], [45 x i8]* %7, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 6
  %21 = call i32 @StringFromGUID2(i32* @CLSID_WineTestObject, i8* %20, i32 39)
  %22 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %23 = getelementptr inbounds [45 x i8], [45 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* @KEY_READ, align 4
  %25 = load i32, i32* @KEY_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @RegCreateKeyExW(i32 %22, i8* %23, i32 0, i32* null, i32 0, i32 %28, i32* null, i32* %6, i32* null)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @REG_SZ, align 4
  %36 = call i32 @strlen(i8* %13)
  %37 = call i64 @RegSetValueA(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %13, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @REG_SZ, align 4
  %49 = call i64 @RegSetValueA(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %46, %33
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @RegCloseKey(i32 %57)
  br label %59

59:                                               ; preds = %56, %2
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #2

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @RegSetValueA(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
