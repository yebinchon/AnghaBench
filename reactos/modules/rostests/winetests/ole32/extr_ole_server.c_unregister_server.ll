; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole_server.c_unregister_server.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole_server.c_unregister_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unregister_server.clsidW = internal constant [7 x i8] c"CLSID\\\00", align 1
@CLSID_WineTestObject = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"InprocHandler32\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"RegDeleteKey error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LocalServer32\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unregister_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_server() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [45 x i8], align 16
  %4 = getelementptr inbounds [45 x i8], [45 x i8]* %3, i64 0, i64 0
  %5 = call i32 @lstrcpyW(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @unregister_server.clsidW, i64 0, i64 0))
  %6 = getelementptr inbounds [45 x i8], [45 x i8]* %3, i64 0, i64 0
  %7 = getelementptr inbounds i8, i8* %6, i64 6
  %8 = call i32 @StringFromGUID2(i32* @CLSID_WineTestObject, i8* %7, i32 39)
  %9 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %10 = getelementptr inbounds [45 x i8], [45 x i8]* %3, i64 0, i64 0
  %11 = load i32, i32* @DELETE, align 4
  %12 = call i64 @RegCreateKeyExW(i32 %9, i8* %10, i32 0, i32* null, i32 0, i32 %11, i32* null, i32* %2, i32* null)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @RegDeleteKeyA(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @RegDeleteKeyA(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @RegDeleteKeyA(i32 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @RegCloseKey(i32 %41)
  br label %43

43:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #1

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
