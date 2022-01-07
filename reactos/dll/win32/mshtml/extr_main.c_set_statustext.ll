; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_main.c_set_statustext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_main.c_set_statustext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@IDS_STATUS_FIRST = common dso_local global i32 0, align 4
@status_strings = common dso_local global i32** null, align 8
@hInst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_statustext(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IDS_STATUS_FIRST, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32**, i32*** @status_strings, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %94

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %62, label %27

27:                                               ; preds = %24
  store i32 255, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32* @heap_alloc(i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* @hInst, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @LoadStringW(i32 %33, i32 %34, i32* %35, i32 %36)
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32* @heap_realloc(i32* %39, i32 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32**, i32*** @status_strings, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = bitcast i32** %48 to i8**
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @InterlockedCompareExchangePointer(i8** %49, i32* %50, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %27
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @heap_free(i32* %54)
  %56 = load i32**, i32*** @status_strings, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %8, align 8
  br label %61

61:                                               ; preds = %53, %27
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32*, i32** %6, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @lstrlenW(i32* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @lstrlenW(i32* %68)
  %70 = add nsw i32 %67, %69
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32* @heap_alloc(i32 %75)
  store i32* %76, i32** %10, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @snprintfW(i32* %77, i32 %78, i32* %79, i32* %80)
  %82 = load i32*, i32** %10, align 8
  store i32* %82, i32** %8, align 8
  br label %83

83:                                               ; preds = %65, %62
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @IOleInPlaceFrame_SetStatusText(i32 %86, i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @heap_free(i32* %92)
  br label %94

94:                                               ; preds = %23, %91, %83
  ret void
}

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32* @heap_realloc(i32*, i32) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @snprintfW(i32*, i32, i32*, i32*) #1

declare dso_local i32 @IOleInPlaceFrame_SetStatusText(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
