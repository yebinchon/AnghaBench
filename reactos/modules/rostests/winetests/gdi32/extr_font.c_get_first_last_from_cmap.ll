; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_get_first_last_from_cmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_get_first_last_from_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MS_CMAP_TAG = common dso_local global i32 0, align 4
@GDI_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"no cmap table found\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"GetFontData should return %u not %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"got cmap version %d\0A\00", align 1
@cmap_ms_unicode = common dso_local global i32 0, align 4
@cmap_ms_symbol = common dso_local global i32 0, align 4
@cmap_none = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unhandled cmap format %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @get_first_last_from_cmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_first_last_from_cmap(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MS_CMAP_TAG, align 4
  %19 = call i64 @GetFontData(i32 %17, i32 %18, i32 0, %struct.TYPE_6__* null, i64 0)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @GDI_ERROR, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @GDI_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %5, align 4
  br label %106

30:                                               ; preds = %4
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i64, i64* %10, align 8
  %33 = call %struct.TYPE_6__* @HeapAlloc(i32 %31, i32 0, i64 %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %12, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MS_CMAP_TAG, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @GetFontData(i32 %34, i32 %35, i32 0, %struct.TYPE_6__* %36, i64 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @GET_BE_WORD(i32 %48)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @GET_BE_WORD(i32 %54)
  %56 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = call i8* @get_cmap(%struct.TYPE_6__* %57, i32 3, i32 1)
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %30
  %62 = load i32, i32* @cmap_ms_unicode, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %73

64:                                               ; preds = %30
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %66 = call i8* @get_cmap(%struct.TYPE_6__* %65, i32 3, i32 0)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @cmap_ms_symbol, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %61
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @cmap_none, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %101

79:                                               ; preds = %73
  %80 = load i8*, i8** %13, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @GET_BE_WORD(i32 %82)
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  switch i32 %85, label %97 [
    i32 0, label %86
    i32 4, label %91
  ]

86:                                               ; preds = %79
  %87 = load i8*, i8** %13, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @get_first_last_from_cmap0(i8* %87, i32* %88, i32* %89)
  store i32 %90, i32* %14, align 4
  br label %100

91:                                               ; preds = %79
  %92 = load i8*, i8** %13, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @get_first_last_from_cmap4(i8* %92, i32* %93, i32* %94, i64 %95)
  store i32 %96, i32* %14, align 4
  br label %100

97:                                               ; preds = %79
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %91, %86
  br label %101

101:                                              ; preds = %100, %76
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %104 = call i32 @HeapFree(i32 %102, i32 0, %struct.TYPE_6__* %103)
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %101, %28
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @GetFontData(i32, i32, i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GET_BE_WORD(i32) #1

declare dso_local i8* @get_cmap(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @get_first_last_from_cmap0(i8*, i32*, i32*) #1

declare dso_local i32 @get_first_last_from_cmap4(i8*, i32*, i32*, i64) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
