; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_oleaut.c_get_typeinfo_for_iid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_oleaut.c_get_typeinfo_for_iid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Failed to load typelib for %s, but it should be there.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"typelib does not contain info for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32**)* @get_typeinfo_for_iid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_typeinfo_for_iid(i32 %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32**, i32*** %5, align 8
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 0, i64* %16, align 16
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ARRAY_SIZE(i64* %14)
  %19 = call i32 @actctx_get_typelib_module(i32 %17, i64* %14, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ARRAY_SIZE(i64* %14)
  %24 = call i64 @reg_get_typelib_module(i32 %22, i64* %14, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @FAILED(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %57

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %2
  %32 = call i64 @LoadTypeLib(i64* %14, i32** %8)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @debugstr_guid(i32 %37)
  %39 = call i32 @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %57

41:                                               ; preds = %31
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32**, i32*** %5, align 8
  %45 = call i64 @ITypeLib_GetTypeInfoOfGuid(i32* %42, i32 %43, i32** %44)
  store i64 %45, i64* %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ITypeLib_Release(i32* %46)
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @debugstr_guid(i32 %52)
  %54 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %36, %28
  %58 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @actctx_get_typelib_module(i32, i64*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i64 @reg_get_typelib_module(i32, i64*, i32) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @LoadTypeLib(i64*, i32**) #2

declare dso_local i32 @ERR(i8*, i32) #2

declare dso_local i32 @debugstr_guid(i32) #2

declare dso_local i64 @ITypeLib_GetTypeInfoOfGuid(i32*, i32, i32**) #2

declare dso_local i32 @ITypeLib_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
