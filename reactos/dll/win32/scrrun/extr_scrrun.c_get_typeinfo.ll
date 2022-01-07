; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_scrrun.c_get_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_scrrun.c_get_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typeinfos = common dso_local global i32** null, align 8
@typelib = common dso_local global i32 0, align 4
@tid_ids = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"GetTypeInfoOfGuid(%s) failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_typeinfo(i64 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = call i32 (...) @load_typelib()
  store i32 %8, i32* %6, align 4
  %9 = call i64 @FAILED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load i32**, i32*** @typeinfos, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @typelib, align 4
  %21 = load i32*, i32** @tid_ids, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32 %20, i32 %24, i32** %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load i32*, i32** @tid_ids, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @debugstr_guid(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %19
  %39 = load i32**, i32*** @typeinfos, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = bitcast i32** %41 to i8**
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @InterlockedCompareExchangePointer(i8** %42, i32* %43, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ITypeInfo_Release(i32* %47)
  br label %49

49:                                               ; preds = %46, %38
  br label %50

50:                                               ; preds = %49, %13
  %51 = load i32**, i32*** @typeinfos, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32**, i32*** %5, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32**, i32*** @typeinfos, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ITypeInfo_AddRef(i32* %59)
  %61 = load i32, i32* @S_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %50, %29, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @load_typelib(...) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32, i32, i32**) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @ITypeInfo_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
