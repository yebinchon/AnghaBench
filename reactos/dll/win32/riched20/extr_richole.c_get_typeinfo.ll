; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_get_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_get_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typelib = common dso_local global i32 0, align 4
@typeinfos = common dso_local global i32** null, align 8
@tid_ids = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"GetTypeInfoOfGuid(%s) failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @get_typeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_typeinfo(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = load i32, i32* @typelib, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (...) @load_typelib()
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* @typelib, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %12
  %18 = load i32**, i32*** @typeinfos, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %58, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @typelib, align 4
  %26 = load i32*, i32** @tid_ids, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32 %25, i32 %30, i32** %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load i32*, i32** @tid_ids, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @debugstr_guid(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %24
  %46 = load i32**, i32*** @typeinfos, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = bitcast i32** %49 to i8**
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @InterlockedCompareExchangePointer(i8** %50, i32* %51, i32* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @ITypeInfo_Release(i32* %55)
  br label %57

57:                                               ; preds = %54, %45
  br label %58

58:                                               ; preds = %57, %17
  %59 = load i32**, i32*** @typeinfos, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32**, i32*** %5, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32, i32* @S_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %58, %35, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @load_typelib(...) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
