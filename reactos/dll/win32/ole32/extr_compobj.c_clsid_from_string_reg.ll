; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_clsid_from_string_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_clsid_from_string_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clsid_from_string_reg.clsidW = internal constant [7 x i8] c"\\CLSID\00", align 1
@CHARS_IN_GUID = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"couldn't open key for ProgID %s\0A\00", align 1
@CO_E_CLASSSTRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"couldn't query clsid value for ProgID %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @clsid_from_string_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clsid_from_string_reg(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @CHARS_IN_GUID, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = trunc i64 %13 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lstrlenW(i32 %20)
  %22 = add nsw i32 %21, 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call i8* @HeapAlloc(i32 %19, i32 0, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %76

31:                                               ; preds = %2
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @lstrcpyW(i8* %32, i32 %33)
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @lstrcatW(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @clsid_from_string_reg.clsidW, i64 0, i64 0))
  %37 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %40 = call i64 @open_classes_key(i32 %37, i8* %38, i32 %39, i32* %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @HeapFree(i32 %43, i32 0, i8* %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @debugstr_w(i32 %46)
  %48 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @CO_E_CLASSSTRING, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %76

50:                                               ; preds = %31
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @HeapFree(i32 %51, i32 0, i8* %52)
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @RegQueryValueW(i32 %54, i32* null, i8* %15, i32* %8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @RegCloseKey(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @debugstr_w(i32 %60)
  %62 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @CO_E_CLASSSTRING, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %76

64:                                               ; preds = %50
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @RegCloseKey(i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @guid_from_string(i8* %15, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @S_OK, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @CO_E_CLASSSTRING, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %57, %42, %29
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @lstrlenW(i32) #2

declare dso_local i32 @lstrcpyW(i8*, i32) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i64 @open_classes_key(i32, i8*, i32, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local i64 @RegQueryValueW(i32, i32*, i8*, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i64 @guid_from_string(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
