; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_platform_fonts.c_SelectAndLoadFace.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_platform_fonts.c_SelectAndLoadFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* (%struct.TYPE_11__*, i8*, i32, i32, i32*, i32)* }
%struct.TYPE_10__ = type { i32, i8*, i8* }

@STYLE_MONOSPACED = common dso_local global i32 0, align 4
@STYLE_BOLD = common dso_local global i32 0, align 4
@STYLE_ITALIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"SelectAndLoadFace: no font found for family: %s, codepoint: 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SelectAndLoadFace(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @STYLE_MONOSPACED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i8* [ %27, %24 ], [ %31, %28 ]
  store i8* %33, i8** %9, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @STYLE_BOLD, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @STYLE_ITALIC, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i8* (%struct.TYPE_11__*, i8*, i32, i32, i32*, i32)*, i8* (%struct.TYPE_11__*, i8*, i32, i32, i32*, i32)** %45, align 8
  %47 = icmp ne i8* (%struct.TYPE_11__*, i8*, i32, i32, i32*, i32)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %32
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i8* (%struct.TYPE_11__*, i8*, i32, i32, i32*, i32)*, i8* (%struct.TYPE_11__*, i8*, i32, i32, i32*, i32)** %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i8* %51(%struct.TYPE_11__* %52, i8* %53, i32 %54, i32 %55, i32* %13, i32 %56)
  store i8* %57, i8** %14, align 8
  br label %59

58:                                               ; preds = %32
  store i8* null, i8** %14, align 8
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** %14, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62, %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @msg_Warn(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70)
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @free(i8* %72)
  store i32* null, i32** %4, align 8
  br label %83

74:                                               ; preds = %62
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = call i32* @LoadFace(%struct.TYPE_11__* %75, i8* %76, i32 %77, %struct.TYPE_10__* %78)
  store i32* %79, i32** %12, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32*, i32** %12, align 8
  store i32* %82, i32** %4, align 8
  br label %83

83:                                               ; preds = %74, %67
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @LoadFace(%struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
