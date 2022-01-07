; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_Nougat_ParseFamily.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_Nougat_ParseFamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@FB_NAME = common dso_local global i32 0, align 4
@FB_LIST_DEFAULT = common dso_local global i32* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Android_ParseFamily: Corrupt font configuration file\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @Android_Nougat_ParseFamily to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Android_Nougat_ParseFamily(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store i32* %19, i32** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %38, %2
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @xml_ReaderNextAttr(i32* %21, i8** %9)
  store i8* %22, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %11, align 8
  br label %39

38:                                               ; preds = %31, %28, %24
  br label %20

39:                                               ; preds = %36, %20
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = call i8* @ToLower(i8* %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %57, i32* %3, align 4
  br label %148

58:                                               ; preds = %47
  %59 = load i32*, i32** %7, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call %struct.TYPE_11__* @vlc_dictionary_value_for_key(i32* %59, i8* %60)
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %8, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %58, %42, %39
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = icmp eq %struct.TYPE_11__* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = call %struct.TYPE_11__* @NewFamily(%struct.TYPE_12__* %68, i8* %69, i32* %71, i32* %73, i32* null)
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %8, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %82, i32* %3, align 4
  br label %148

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83, %64
  br label %85

85:                                               ; preds = %143, %84
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @xml_ReaderNextNode(i32* %86, i8** %9)
  store i32 %87, i32* %12, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %144

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  switch i32 %90, label %143 [
    i32 128, label %91
    i32 129, label %106
  ]

91:                                               ; preds = %89
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = call i32 @Android_ParseFont(%struct.TYPE_12__* %96, i32* %97, %struct.TYPE_11__* %98)
  %100 = load i32, i32* @VLC_ENOMEM, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %103, i32* %3, align 4
  br label %148

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %91
  br label %143

106:                                              ; preds = %89
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %106
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* @FB_NAME, align 4
  %115 = call i32 @strcasestr(i8* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %110
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32*, i32** @FB_LIST_DEFAULT, align 8
  %125 = call %struct.TYPE_11__* @NewFamily(%struct.TYPE_12__* %118, i8* %121, i32* null, i32* %123, i32* %124)
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %14, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %127 = icmp ne %struct.TYPE_11__* %126, null
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %117
  %133 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %133, i32* %3, align 4
  br label %148

134:                                              ; preds = %117
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %134, %110
  %141 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %141, i32* %3, align 4
  br label %148

142:                                              ; preds = %106
  br label %143

143:                                              ; preds = %89, %142, %105
  br label %85

144:                                              ; preds = %85
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %146 = call i32 @msg_Warn(%struct.TYPE_12__* %145, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %140, %132, %102, %81, %56
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @ToLower(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_11__* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_11__* @NewFamily(%struct.TYPE_12__*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @Android_ParseFont(%struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @strcasestr(i8*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
