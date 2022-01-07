; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/strmbase/extr_dllfunc.c_SetupRegisterAllClasses.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/strmbase/extr_dllfunc.c_SetupRegisterAllClasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@NOERROR = common dso_local global i32 0, align 4
@CHARS_IN_GUID = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ips32_keyname = common dso_local global i32 0, align 4
@tmodel_both = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i64)* @SetupRegisterAllClasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetupRegisterAllClasses(%struct.TYPE_3__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @NOERROR, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @CHARS_IN_GUID, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %23 = load i32, i32* @clsid_keyname, align 4
  %24 = call i64 @RegCreateKeyW(i32 %22, i32 %23, i32* %11)
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = load i64, i64* %15, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i64, i64* %15, align 8
  %30 = call i32 @HRESULT_FROM_WIN32(i64 %29)
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %72

31:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %32

32:                                               ; preds = %63, %31
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CHARS_IN_GUID, align 4
  %42 = call i32 @StringFromGUID2(i32 %40, i32* %21, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @SUCCEEDED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ips32_keyname, align 4
  %56 = load i32, i32* @tmodel_both, align 4
  %57 = call i32 @SetupRegisterClass(i32 %50, i32* %21, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %61

58:                                               ; preds = %46
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @RegDeleteTreeW(i32 %59, i32* %21)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %49
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %14, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %14, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 1
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %6, align 8
  br label %32

68:                                               ; preds = %32
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @RegCloseKey(i32 %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %72

72:                                               ; preds = %68, %28
  %73 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegCreateKeyW(i32, i32, i32*) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #2

declare dso_local i32 @StringFromGUID2(i32, i32*, i32) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @SetupRegisterClass(i32, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @RegDeleteTreeW(i32, i32*) #2

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
