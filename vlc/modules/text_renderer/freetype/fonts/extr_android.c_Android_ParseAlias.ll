; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_ParseAlias.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_ParseAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @Android_ParseAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Android_ParseAlias(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32* %18, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %71, %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @xml_ReaderNextAttr(i32* %21, i8** %10)
  store i8* %22, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %12, align 4
  br label %71

39:                                               ; preds = %31, %28, %24
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  %53 = call i8* @ToLower(i8* %52)
  store i8* %53, i8** %9, align 8
  br label %70

54:                                               ; preds = %46, %43, %39
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @ToLower(i8* %67)
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %66, %61, %58, %54
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70, %36
  br label %20

72:                                               ; preds = %20
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %79, i32* %13, align 4
  br label %101

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32* @vlc_dictionary_value_for_key(i32* %81, i8* %82)
  store i32* %83, i32** %7, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32*, i32** %6, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32* @vlc_dictionary_value_for_key(i32* %90, i8* %91)
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32*, i32** %6, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @vlc_dictionary_insert(i32* %95, i8* %96, i32* %97)
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %99, %86, %80
  br label %101

101:                                              ; preds = %100, %78
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* %13, align 4
  ret i32 %106
}

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @ToLower(i8*) #1

declare dso_local i32* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
