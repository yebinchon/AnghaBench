; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbscript_main.c_get_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbscript_main.c_get_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typelib = common dso_local global i32 0, align 4
@get_typeinfo.vbscript_dll1W = internal constant [15 x i8] c"vbscript.dll\\1\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"LoadRegTypeLib failed: %08x\0A\00", align 1
@typeinfos = common dso_local global i32** null, align 8
@tid_ids = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"GetTypeInfoOfGuid(%s) failed: %08x\0A\00", align 1
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
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = call i32 @LoadTypeLib(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_typeinfo.vbscript_dll1W, i64 0, i64 0), i32** %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %11
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @InterlockedCompareExchangePointer(i8** bitcast (i32* @typelib to i8**), i32* %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @ITypeLib_Release(i32* %25)
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32**, i32*** @typeinfos, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %65, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @typelib, align 4
  %36 = load i32*, i32** @tid_ids, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32 %35, i32 %39, i32** %8)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load i32*, i32** @tid_ids, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @debugstr_guid(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %72

53:                                               ; preds = %34
  %54 = load i32**, i32*** @typeinfos, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  %57 = bitcast i32** %56 to i8**
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @InterlockedCompareExchangePointer(i8** %57, i32* %58, i32* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @ITypeInfo_Release(i32* %62)
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i32**, i32*** @typeinfos, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32**, i32*** %5, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i32, i32* @S_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %44, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
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
