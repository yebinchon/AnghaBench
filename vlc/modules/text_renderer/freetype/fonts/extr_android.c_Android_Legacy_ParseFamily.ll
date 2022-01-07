; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_Legacy_ParseFamily.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_Legacy_ParseFamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@XML_READER_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Android_ParseFamily: empty name\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@kVLCDictionaryNotFound = common dso_local global %struct.TYPE_12__* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Android_ParseFamily: too many files\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ANDROID_FONT_PATH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Android_ParseFamily: empty family\00", align 1
@FB_NAME = common dso_local global i32 0, align 4
@FB_LIST_DEFAULT = common dso_local global i32* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"Android_ParseOldFamily: Corrupt font configuration file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @Android_Legacy_ParseFamily to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Android_Legacy_ParseFamily(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  store i32* %21, i32** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %213, %118, %45, %2
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @xml_ReaderNextNode(i32* %23, i8** %13)
  store i32 %24, i32* %14, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %214

26:                                               ; preds = %22
  %27 = load i32, i32* %14, align 4
  switch i32 %27, label %213 [
    i32 128, label %28
    i32 129, label %169
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %101, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @xml_ReaderNextNode(i32* %33, i8** %13)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @XML_READER_TEXT, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %13, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41, %38, %32
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = call i32 @msg_Warn(%struct.TYPE_13__* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %22

48:                                               ; preds = %41
  %49 = load i8*, i8** %13, align 8
  %50 = call i8* @ToLower(i8* %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @unlikely(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %58, i32* %3, align 4
  br label %218

59:                                               ; preds = %48
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %87, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call %struct.TYPE_12__* @vlc_dictionary_value_for_key(i32* %63, i8* %64)
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %8, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kVLCDictionaryNotFound, align 8
  %68 = icmp eq %struct.TYPE_12__* %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %62
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = call %struct.TYPE_12__* @NewFamily(%struct.TYPE_13__* %70, i8* %71, i32* %73, i32* null, i32* null)
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %8, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @unlikely(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %84, i32* %3, align 4
  br label %218

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %59
  %88 = load i32*, i32** %7, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call %struct.TYPE_12__* @vlc_dictionary_value_for_key(i32* %88, i8* %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kVLCDictionaryNotFound, align 8
  %92 = icmp eq %struct.TYPE_12__* %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32*, i32** %7, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = call i32 @vlc_dictionary_insert(i32* %94, i8* %95, %struct.TYPE_12__* %96)
  br label %98

98:                                               ; preds = %93, %87
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @free(i8* %99)
  br label %168

101:                                              ; preds = %28
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %167, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @xml_ReaderNextNode(i32* %106, i8** %13)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @XML_READER_TEXT, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load i8*, i8** %13, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8*, i8** %13, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114, %111, %105
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %22

121:                                              ; preds = %114
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = icmp ne %struct.TYPE_12__* %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = call %struct.TYPE_12__* @NewFamily(%struct.TYPE_13__* %125, i8* null, i32* %127, i32* %129, i32* null)
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %8, align 8
  br label %131

131:                                              ; preds = %124, %121
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = icmp ne %struct.TYPE_12__* %132, null
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i32 @unlikely(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %139, i32* %3, align 4
  br label %218

140:                                              ; preds = %131
  %141 = load i32, i32* %10, align 4
  switch i32 %141, label %146 [
    i32 0, label %142
    i32 1, label %143
    i32 2, label %144
    i32 3, label %145
  ]

142:                                              ; preds = %140
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %150

143:                                              ; preds = %140
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %150

144:                                              ; preds = %140
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %150

145:                                              ; preds = %140
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %150

146:                                              ; preds = %140
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %148 = call i32 @msg_Warn(%struct.TYPE_13__* %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %149, i32* %3, align 4
  br label %218

150:                                              ; preds = %145, %144, %143, %142
  store i8* null, i8** %15, align 8
  %151 = load i32, i32* @ANDROID_FONT_PATH, align 4
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %151, i8* %152)
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %15, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = call i32 @NewFont(i8* %156, i32 0, i32 %157, i32 %158, %struct.TYPE_12__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %155, %150
  %163 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %163, i32* %3, align 4
  br label %218

164:                                              ; preds = %155
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %164, %101
  br label %168

168:                                              ; preds = %167, %98
  br label %213

169:                                              ; preds = %26
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %212, label %173

173:                                              ; preds = %169
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %175 = icmp ne %struct.TYPE_12__* %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %173
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = call i32 @msg_Warn(%struct.TYPE_13__* %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %179, i32* %3, align 4
  br label %218

180:                                              ; preds = %173
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* @FB_NAME, align 4
  %185 = call i32 @strcasestr(i8* %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %210

187:                                              ; preds = %180
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32*, i32** @FB_LIST_DEFAULT, align 8
  %195 = call %struct.TYPE_12__* @NewFamily(%struct.TYPE_13__* %188, i8* %191, i32* null, i32* %193, i32* %194)
  store %struct.TYPE_12__* %195, %struct.TYPE_12__** %16, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %197 = icmp ne %struct.TYPE_12__* %196, null
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i32 @unlikely(i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %187
  %203 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %203, i32* %3, align 4
  br label %218

204:                                              ; preds = %187
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %204, %180
  %211 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %211, i32* %3, align 4
  br label %218

212:                                              ; preds = %169
  br label %213

213:                                              ; preds = %26, %212, %168
  br label %22

214:                                              ; preds = %22
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %216 = call i32 @msg_Warn(%struct.TYPE_13__* %215, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %217 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %214, %210, %202, %176, %162, %146, %138, %81, %57
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i8* @ToLower(i8*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local %struct.TYPE_12__* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @NewFamily(%struct.TYPE_13__*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @NewFont(i8*, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @strcasestr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
