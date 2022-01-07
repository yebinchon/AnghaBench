; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_platform_fonts.c_Generic_Select.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_platform_fonts.c_Generic_Select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__* (%struct.TYPE_24__*, i8*)*, i32, %struct.TYPE_23__* (%struct.TYPE_24__*, i8*, i32)* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32 }

@FB_LIST_ATTACHMENTS = common dso_local global i32 0, align 4
@FB_LIST_DEFAULT = common dso_local global i32 0, align 4
@SYSTEM_DEFAULT_FAMILY = common dso_local global i8* null, align 8
@SYSTEM_DEFAULT_FONT_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Generic_Select(%struct.TYPE_24__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %111

25:                                               ; preds = %6
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_23__* (%struct.TYPE_24__*, i8*)*, %struct.TYPE_23__* (%struct.TYPE_24__*, i8*)** %27, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call %struct.TYPE_23__* %28(%struct.TYPE_24__* %29, i8* %30)
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %17, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %33 = icmp ne %struct.TYPE_23__* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %25
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @GetFace(%struct.TYPE_24__* %40, i64 %43)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i64, i64* %18, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @FT_Get_Char_Index(i64 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %15, align 8
  br label %54

54:                                               ; preds = %52, %47, %39
  br label %55

55:                                               ; preds = %54, %34, %25
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %57 = icmp ne %struct.TYPE_23__* %56, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load i32, i32* @FB_LIST_ATTACHMENTS, align 4
  %62 = call %struct.TYPE_23__* @vlc_dictionary_value_for_key(i32* %60, i32 %61)
  store %struct.TYPE_23__* %62, %struct.TYPE_23__** %16, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %64 = icmp ne %struct.TYPE_23__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call %struct.TYPE_23__* @SearchFallbacks(%struct.TYPE_24__* %66, %struct.TYPE_23__* %67, i32 %68)
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %15, align 8
  br label %70

70:                                               ; preds = %65, %58
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %73 = icmp ne %struct.TYPE_23__* %72, null
  br i1 %73, label %90, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_23__* (%struct.TYPE_24__*, i8*, i32)*, %struct.TYPE_23__* (%struct.TYPE_24__*, i8*, i32)** %76, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call %struct.TYPE_23__* %77(%struct.TYPE_24__* %78, i8* %79, i32 %80)
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %16, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %83 = icmp ne %struct.TYPE_23__* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call %struct.TYPE_23__* @SearchFallbacks(%struct.TYPE_24__* %85, %struct.TYPE_23__* %86, i32 %87)
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %15, align 8
  br label %89

89:                                               ; preds = %84, %74
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %92 = icmp ne %struct.TYPE_23__* %91, null
  br i1 %92, label %106, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load i32, i32* @FB_LIST_DEFAULT, align 4
  %97 = call %struct.TYPE_23__* @vlc_dictionary_value_for_key(i32* %95, i32 %96)
  store %struct.TYPE_23__* %97, %struct.TYPE_23__** %16, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %99 = icmp ne %struct.TYPE_23__* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call %struct.TYPE_23__* @SearchFallbacks(%struct.TYPE_24__* %101, %struct.TYPE_23__* %102, i32 %103)
  store %struct.TYPE_23__* %104, %struct.TYPE_23__** %15, align 8
  br label %105

105:                                              ; preds = %100, %93
  br label %106

106:                                              ; preds = %105, %90
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %108 = icmp ne %struct.TYPE_23__* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  store i8* null, i8** %7, align 8
  br label %159

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %6
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %113 = icmp ne %struct.TYPE_23__* %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_23__* (%struct.TYPE_24__*, i8*)*, %struct.TYPE_23__* (%struct.TYPE_24__*, i8*)** %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call %struct.TYPE_23__* %117(%struct.TYPE_24__* %118, i8* %119)
  store %struct.TYPE_23__* %120, %struct.TYPE_23__** %15, align 8
  br label %121

121:                                              ; preds = %114, %111
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %123 = icmp ne %struct.TYPE_23__* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %124, %121
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_23__* (%struct.TYPE_24__*, i8*)*, %struct.TYPE_23__* (%struct.TYPE_24__*, i8*)** %131, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %134 = load i8*, i8** @SYSTEM_DEFAULT_FAMILY, align 8
  %135 = call %struct.TYPE_23__* %132(%struct.TYPE_24__* %133, i8* %134)
  store %struct.TYPE_23__* %135, %struct.TYPE_23__** %15, align 8
  br label %136

136:                                              ; preds = %129, %124
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %138 = icmp ne %struct.TYPE_23__* %137, null
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call %struct.TYPE_22__* @GetBestFont(%struct.TYPE_24__* %140, %struct.TYPE_23__* %141, i32 %142, i32 %143, i32 %144)
  store %struct.TYPE_22__* %145, %struct.TYPE_22__** %19, align 8
  %146 = icmp ne %struct.TYPE_22__* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %12, align 8
  store i32 %150, i32* %151, align 4
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @strdup(i32 %154)
  store i8* %155, i8** %7, align 8
  br label %159

156:                                              ; preds = %139, %136
  %157 = load i32, i32* @SYSTEM_DEFAULT_FONT_FILE, align 4
  %158 = call i8* @File_Select(i32 %157)
  store i8* %158, i8** %7, align 8
  br label %159

159:                                              ; preds = %156, %147, %109
  %160 = load i8*, i8** %7, align 8
  ret i8* %160
}

declare dso_local i64 @GetFace(%struct.TYPE_24__*, i64) #1

declare dso_local i64 @FT_Get_Char_Index(i64, i32) #1

declare dso_local %struct.TYPE_23__* @vlc_dictionary_value_for_key(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @SearchFallbacks(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @GetBestFont(%struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @File_Select(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
