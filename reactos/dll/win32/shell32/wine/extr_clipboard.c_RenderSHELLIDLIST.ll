; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_clipboard.c_RenderSHELLIDLIST.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_clipboard.c_RenderSHELLIDLIST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%u)\0A\00", align 1
@GHND = common dso_local global i32 0, align 4
@GMEM_SHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenderSHELLIDLIST(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14, i32* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ILGetSize(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %40, %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ILGetSize(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %27

43:                                               ; preds = %27
  %44 = load i32, i32* @GHND, align 4
  %45 = load i32, i32* @GMEM_SHARE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @GlobalAlloc(i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %123

53:                                               ; preds = %43
  %54 = load i32, i32* %12, align 4
  %55 = call %struct.TYPE_3__* @GlobalLock(i32 %54)
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %13, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = add i64 4, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ILGetSize(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %72 = ptrtoint %struct.TYPE_3__* %71 to i64
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @memcpy(i64 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %116, %53
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %87, i32* %94, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ILGetSize(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %102 = ptrtoint %struct.TYPE_3__* %101 to i64
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @memcpy(i64 %105, i32 %110, i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %86
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %82

119:                                              ; preds = %82
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @GlobalUnlock(i32 %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %119, %51
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @TRACE(i8*, i32, i32*, i32) #1

declare dso_local i32 @ILGetSize(i32) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local %struct.TYPE_3__* @GlobalLock(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
