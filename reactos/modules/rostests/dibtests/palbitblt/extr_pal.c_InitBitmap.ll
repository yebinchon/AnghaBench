; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dibtests/palbitblt/extr_pal.c_InitBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dibtests/palbitblt/extr_pal.c_InitBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@W_WIDTH = common dso_local global i32 0, align 4
@W_HEIGHT = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@PC_NOCOLLAPSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@dibits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitBitmap(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x %struct.TYPE_9__], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %2, align 8
  %10 = call i32 (...) @GetActiveWindow()
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GetDC(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 4, i32* %14, align 8
  %15 = load i32, i32* @W_WIDTH, align 4
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @W_HEIGHT, align 4
  %19 = call i32 @abs(i32 %18) #4
  %20 = sub nsw i32 0, %19
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i32 8, i32* %26, align 8
  %27 = load i32, i32* @BI_RGB, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32 256, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  store i32 256, i32* %39, align 8
  %40 = getelementptr inbounds [256 x %struct.TYPE_9__], [256 x %struct.TYPE_9__]* %6, i64 0, i64 0
  %41 = call i32 @GeneratePalette(%struct.TYPE_9__* %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %56, %1
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x %struct.TYPE_9__], [256 x %struct.TYPE_9__]* %6, i64 0, i64 %52
  %54 = bitcast %struct.TYPE_9__* %50 to i8*
  %55 = bitcast %struct.TYPE_9__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 12, i1 false)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %42

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 768, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 256, i32* %61, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %106, %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 256
  br i1 %64, label %65, label %109

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [256 x %struct.TYPE_9__], [256 x %struct.TYPE_9__]* %6, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [256 x %struct.TYPE_9__], [256 x %struct.TYPE_9__]* %6, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [256 x %struct.TYPE_9__], [256 x %struct.TYPE_9__]* %6, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32 %92, i32* %98, align 4
  %99 = load i32, i32* @PC_NOCOLLAPSE, align 4
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %65
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %62

109:                                              ; preds = %62
  %110 = bitcast %struct.TYPE_10__* %9 to i32*
  %111 = call i32 @CreatePalette(i32* %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @SelectPalette(i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @RealizePalette(i32 %116)
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @DeleteObject(i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = bitcast %struct.TYPE_11__* %8 to i32*
  %122 = load i32, i32* @DIB_RGB_COLORS, align 4
  %123 = call i32 @CreateDIBSection(i32 %120, i32* %121, i32 %122, i8** bitcast (i32* @dibits to i8**), i32 0, i32 0)
  %124 = load i32*, i32** %2, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @ReleaseDC(i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @GetActiveWindow(...) #1

declare dso_local i32 @GetDC(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @GeneratePalette(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @CreatePalette(i32*) #1

declare dso_local i32 @SelectPalette(i32, i32, i32) #1

declare dso_local i32 @RealizePalette(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @CreateDIBSection(i32, i32*, i32, i8**, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
