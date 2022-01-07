; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_dispex.c_get_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_dispex.c_get_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typeinfos = common dso_local global i32** null, align 8
@LibXml = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GetTypeInfoOfGuid failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_typeinfo(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @get_libid_from_tid(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @get_typelib(i32 %12, i32** %7)
  store i32 %13, i32* %8, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load i32**, i32*** @typeinfos, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %66, label %25

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @get_riid_from_tid(i32 %27)
  %29 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32* %26, i32 %28, i32** %9)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %25
  %34 = load i32, i32* @LibXml, align 4
  %35 = call i32 @get_typelib(i32 %34, i32** %7)
  store i32 %35, i32* %8, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %80

40:                                               ; preds = %33
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @get_riid_from_tid(i32 %42)
  %44 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32* %41, i32 %43, i32** %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %80

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32**, i32*** @typeinfos, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = bitcast i32** %57 to i8**
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @InterlockedCompareExchangePointer(i8** %58, i32* %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @ITypeInfo_Release(i32* %63)
  br label %65

65:                                               ; preds = %62, %53
  br label %66

66:                                               ; preds = %65, %18
  %67 = load i32**, i32*** @typeinfos, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32**, i32*** %5, align 8
  store i32* %71, i32** %72, align 8
  %73 = load i32**, i32*** @typeinfos, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @ITypeInfo_AddRef(i32* %77)
  %79 = load i32, i32* @S_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %66, %48, %38, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @get_libid_from_tid(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @get_typelib(i32, i32**) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32*, i32, i32**) #1

declare dso_local i32 @get_riid_from_tid(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @ITypeInfo_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
