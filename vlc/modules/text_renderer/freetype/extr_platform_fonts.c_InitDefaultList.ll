; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_platform_fonts.c_InitDefaultList.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_platform_fonts.c_InitDefaultList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* (%struct.TYPE_14__*, i8*)* }

@FB_LIST_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @InitDefaultList(%struct.TYPE_14__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %55, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__* (%struct.TYPE_14__*, i8*)*, %struct.TYPE_13__* (%struct.TYPE_14__*, i8*)** %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call %struct.TYPE_13__* %23(%struct.TYPE_14__* %24, i8* %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %11, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %20
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call %struct.TYPE_13__* @NewFamily(%struct.TYPE_14__* %34, i8* %39, %struct.TYPE_13__** %8, i32* null, i32* null)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %12, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %42 = icmp ne %struct.TYPE_13__* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %69

48:                                               ; preds = %33
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %16

58:                                               ; preds = %16
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = icmp ne %struct.TYPE_13__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* @FB_LIST_DEFAULT, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = call i32 @vlc_dictionary_insert(i32* %63, i32 %64, %struct.TYPE_13__* %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %4, align 8
  br label %76

69:                                               ; preds = %47
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = call i32 @FreeFamilies(%struct.TYPE_13__* %73, i32* null)
  br label %75

75:                                               ; preds = %72, %69
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %76

76:                                               ; preds = %75, %67
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %77
}

declare dso_local %struct.TYPE_13__* @NewFamily(%struct.TYPE_14__*, i8*, %struct.TYPE_13__**, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @FreeFamilies(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
