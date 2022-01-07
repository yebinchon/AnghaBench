; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbregexp.c_init_regexp_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbregexp.c_init_regexp_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typelib = common dso_local global i32 0, align 4
@init_regexp_typeinfo.vbscript_dll3W = internal constant [15 x i8] c"vbscript.dll\\3\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"LoadRegTypeLib failed: %08x\0A\00", align 1
@typeinfos = common dso_local global i32* null, align 8
@tid_ids = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"GetTypeInfoOfGuid(%s) failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @init_regexp_typeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_regexp_typeinfo(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @typelib, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = call i32 @LoadTypeLib(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @init_regexp_typeinfo.vbscript_dll3W, i64 0, i64 0), i32** %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %9
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @InterlockedCompareExchangePointer(i8** bitcast (i32* @typelib to i8**), i32* %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ITypeLib_Release(i32* %23)
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32*, i32** @typeinfos, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @typelib, align 4
  %34 = load i32*, i32** @tid_ids, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32 %33, i32 %37, i32** %6)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load i32*, i32** @tid_ids, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @debugstr_guid(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %32
  %52 = load i32*, i32** @typeinfos, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = bitcast i32* %54 to i8**
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @InterlockedCompareExchangePointer(i8** %55, i32* %56, i32* null)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @ITypeInfo_Release(i32* %60)
  br label %62

62:                                               ; preds = %59, %51
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* @S_OK, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %42, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @LoadTypeLib(i8*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32, i32, i32**) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
