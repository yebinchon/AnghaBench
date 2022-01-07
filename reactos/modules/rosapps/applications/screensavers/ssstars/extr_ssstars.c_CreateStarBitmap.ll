; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_ssstars.c_CreateStarBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_ssstars.c_CreateStarBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@IDB_STAR = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_CREATEDIBSECTION = common dso_local global i32 0, align 4
@LR_DEFAULTSIZE = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @CreateStarBitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateStarBitmap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @GWLP_HINSTANCE, align 4
  %22 = call i64 @GetWindowLongPtr(i32 %20, i32 %21)
  store i64 %22, i64* %17, align 8
  %23 = load i64, i64* %17, align 8
  %24 = load i32, i32* @IDB_STAR, align 4
  %25 = call i32 @MAKEINTRESOURCE(i32 %24)
  %26 = load i32, i32* @IMAGE_BITMAP, align 4
  %27 = load i32, i32* @LR_CREATEDIBSECTION, align 4
  %28 = load i32, i32* @LR_DEFAULTSIZE, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @LoadImage(i64 %23, i32 %25, i32 %26, i32 0, i32 0, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @GetObject(i64 %31, i32 8, %struct.TYPE_9__* %16)
  %33 = call i32 @ZeroMemory(%struct.TYPE_8__* %5, i32 24)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 4, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 0, %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i32 32, i32* %48, align 4
  %49 = load i32, i32* @BI_RGB, align 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  store i64* %6, i64** %7, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DIB_RGB_COLORS, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = bitcast i64* %54 to i8**
  %56 = call i64 @CreateDIBSection(i32 %52, %struct.TYPE_8__* %5, i32 %53, i8** %55, i32* null, i32 0)
  store i64 %56, i64* %8, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @CreateCompatibleDC(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @CreateCompatibleDC(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @SelectObject(i32 %61, i64 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @SelectObject(i32 %64, i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @SRCCOPY, align 4
  %74 = call i32 @BitBlt(i32 %67, i32 0, i32 0, i32 %69, i32 %71, i32 %72, i32 0, i32 0, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i64, i64* %12, align 8
  %77 = call i64 @SelectObject(i32 %75, i64 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load i64, i64* %13, align 8
  %80 = call i64 @SelectObject(i32 %78, i64 %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @DeleteDC(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @DeleteDC(i32 %83)
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @DeleteObject(i64 %85)
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @GetObject(i64 %87, i32 8, %struct.TYPE_9__* %16)
  %89 = load i64, i64* %6, align 8
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %15, align 8
  store i64 0, i64* %14, align 8
  br label %91

91:                                               ; preds = %116, %2
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %94, %96
  %98 = sext i32 %97 to i64
  %99 = icmp ult i64 %92, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %91
  %101 = load i32*, i32** %15, align 8
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 16777215
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = and i32 %106, 255
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = shl i32 %108, 24
  %110 = load i32, i32* %18, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = load i64, i64* %14, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %100
  %117 = load i64, i64* %14, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %14, align 8
  br label %91

119:                                              ; preds = %91
  %120 = load i64, i64* %8, align 8
  ret i64 %120
}

declare dso_local i64 @GetWindowLongPtr(i32, i32) #1

declare dso_local i64 @LoadImage(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @GetObject(i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CreateDIBSection(i32, %struct.TYPE_8__*, i32, i8**, i32*, i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
