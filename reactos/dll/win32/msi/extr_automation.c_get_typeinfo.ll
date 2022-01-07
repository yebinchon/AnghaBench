; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_get_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_get_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typelib = common dso_local global i32 0, align 4
@LIBID_WindowsInstaller = common dso_local global i32 0, align 4
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@get_typeinfo.msiserverW = internal constant [14 x i8] c"msiserver.tlb\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"Could not load msiserver.tlb\0A\00", align 1
@typeinfos = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not load ITypeInfo for %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_typeinfo(i64 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load i32, i32* @typelib, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %13 = call i32 @LoadRegTypeLib(i32* @LIBID_WindowsInstaller, i32 1, i32 0, i32 %12, i32** %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = call i32 @LoadTypeLib(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @get_typeinfo.msiserverW, i64 0, i64 0), i32** %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @InterlockedCompareExchangePointer(i8** bitcast (i32* @typelib to i8**), i32* %27, i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @ITypeLib_Release(i32* %31)
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32**, i32*** @typeinfos, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @typelib, align 4
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @get_riid_from_tid(i64 %42)
  %44 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32 %41, i32 %43, i32** %8)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @get_riid_from_tid(i64 %49)
  %51 = call i32 @debugstr_guid(i32 %50)
  %52 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %73

54:                                               ; preds = %40
  %55 = load i32**, i32*** @typeinfos, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = bitcast i32** %57 to i8**
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @InterlockedCompareExchangePointer(i8** %58, i32* %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @ITypeInfo_Release(i32* %63)
  br label %65

65:                                               ; preds = %62, %54
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32**, i32*** @typeinfos, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** %5, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32, i32* @S_OK, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %48, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @LoadRegTypeLib(i32*, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @LoadTypeLib(i8*, i32**) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32, i32, i32**) #1

declare dso_local i32 @get_riid_from_tid(i64) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
