; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_itemmoniker.c_ItemMonikerImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_itemmoniker.c_ItemMonikerImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32*, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@ItemMonikerImpl_Construct.emptystr = internal constant [1 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"(%p,%s,%s)\0A\00", align 1
@VT_ItemMonikerImpl = common dso_local global i32 0, align 4
@VT_ROTDataImpl = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"lpszDelim is NULL. Using empty string which is possibly wrong.\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*)* @ItemMonikerImpl_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ItemMonikerImpl_Construct(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @lstrlenW(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @debugstr_w(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @debugstr_w(i32* %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %13, i32 %15, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32* @VT_ItemMonikerImpl, i32** %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32* @VT_ROTDataImpl, i32** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* @HeapAlloc(i32 %29, i32 0, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %43, i32* %4, align 4
  br label %91

44:                                               ; preds = %3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @lstrcpyW(i8* %47, i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = call i32 @FIXME(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  br label %60

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32* [ %58, %57 ], [ getelementptr inbounds ([1 x i32], [1 x i32]* @ItemMonikerImpl_Construct.emptystr, i64 0, i64 0), %59 ]
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @lstrlenW(i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i8* @HeapAlloc(i32 %64, i32 0, i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %60
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @HeapFree(i32 %78, i32 0, i8* %81)
  %83 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %83, i32* %4, align 4
  br label %91

84:                                               ; preds = %60
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @lstrcpyW(i8* %87, i32* %88)
  %90 = load i32, i32* @S_OK, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %84, %77, %42
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrcpyW(i8*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
