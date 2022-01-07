; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_LayoutInit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_LayoutInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"Item %d not found\0A\00", align 1
@HWND_DESKTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, %struct.TYPE_10__*, i32)* @LayoutInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @LayoutInit(i32* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @GetClientRect(i32* %12, %struct.TYPE_9__* %8)
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 48, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.TYPE_11__* @SHAlloc(i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %98, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %101

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @GetDlgItem(i32* %24, i32 %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @GetWindowRect(i32* %38, %struct.TYPE_9__* %10)
  %40 = load i32, i32* @HWND_DESKTOP, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = ptrtoint %struct.TYPE_9__* %10 to i32
  %43 = call i32 @MapWindowPoints(i32 %40, i32* %41, i32 %42, i32 2)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  store i64 %45, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %52, %54
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  store i64 %55, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %62, %64
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  store i64 %65, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i64 %72, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %79, %81
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i64 %82, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %89, %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i64 %92, i64* %97, align 8
  br label %98

98:                                               ; preds = %37
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %19

101:                                              ; preds = %19
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %102
}

declare dso_local i32 @GetClientRect(i32*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_11__* @SHAlloc(i32) #1

declare dso_local i32* @GetDlgItem(i32*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @GetWindowRect(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @MapWindowPoints(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
