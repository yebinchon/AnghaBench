; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_clipboard.c_RenderHDROP.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_clipboard.c_RenderHDROP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%u)\0A\00", align 1
@GHND = common dso_local global i32 0, align 4
@GMEM_SHARE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RenderHDROP(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25, i32* %26, i32 %27)
  store i32 8, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SHGetPathFromIDListW(i32 %29, i64* %21)
  %31 = call i32 @PathAddBackslashW(i64* %21)
  %32 = call i32 @strlenW(i64* %21)
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %55, %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX_PATH, align 4
  %44 = call i32 @_ILSimpleGetTextW(i32 %42, i64* %24, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @strlenW(i64* %24)
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %37
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @GHND, align 4
  %64 = load i32, i32* @GMEM_SHARE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = call i32* @GlobalAlloc(i32 %65, i32 %66)
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %58
  %71 = load i32*, i32** %14, align 8
  store i32* %71, i32** %4, align 8
  store i32 1, i32* %17, align 4
  br label %124

72:                                               ; preds = %58
  %73 = load i32*, i32** %14, align 8
  %74 = call %struct.TYPE_3__* @GlobalLock(i32* %73)
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %15, align 8
  store i32 1, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @TRUE, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = call i32 @strcpyW(i64* %24, i64* %21)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %112, %72
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %24, i64 %96
  %98 = load i32, i32* @MAX_PATH, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call i32 @_ILSimpleGetTextW(i32 %94, i64* %97, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %103 = bitcast %struct.TYPE_3__* %102 to i64*
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = call i32 @strcpyW(i64* %106, i64* %24)
  %108 = call i32 @strlenW(i64* %24)
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %89
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %85

115:                                              ; preds = %85
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %117 = bitcast %struct.TYPE_3__* %116 to i64*
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 0, i64* %120, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @GlobalUnlock(i32* %121)
  %123 = load i32*, i32** %14, align 8
  store i32* %123, i32** %4, align 8
  store i32 1, i32* %17, align 4
  br label %124

124:                                              ; preds = %115, %70
  %125 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32*, i32** %4, align 8
  ret i32* %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, i32*, i32) #2

declare dso_local i32 @SHGetPathFromIDListW(i32, i64*) #2

declare dso_local i32 @PathAddBackslashW(i64*) #2

declare dso_local i32 @strlenW(i64*) #2

declare dso_local i32 @_ILSimpleGetTextW(i32, i64*, i32) #2

declare dso_local i32* @GlobalAlloc(i32, i32) #2

declare dso_local %struct.TYPE_3__* @GlobalLock(i32*) #2

declare dso_local i32 @strcpyW(i64*, i64*) #2

declare dso_local i32 @GlobalUnlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
