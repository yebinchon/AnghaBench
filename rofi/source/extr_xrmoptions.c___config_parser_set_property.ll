; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c___config_parser_set_property.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c___config_parser_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i32, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8**, i32*, i64* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@xrm_String = common dso_local global i64 0, align 8
@P_STRING = common dso_local global i64 0, align 8
@P_LIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Option: %s needs to be set with a string not a %s.\00", align 1
@PropertyTypeName = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@CONFIG_FILE_THEME = common dso_local global i8* null, align 8
@xrm_Number = common dso_local global i64 0, align 8
@P_INTEGER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Option: %s needs to be set with a number not a %s.\00", align 1
@xrm_SNumber = common dso_local global i64 0, align 8
@xrm_Boolean = common dso_local global i64 0, align 8
@P_BOOLEAN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Option: %s needs to be set with a boolean not a %s.\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Option: %s is not of a supported type: %s.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i8**)* @__config_parser_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__config_parser_set_property(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @xrm_String, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %113

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @P_STRING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @P_LIST, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** @PropertyTypeName, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %37)
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %4, align 4
  br label %243

41:                                               ; preds = %22, %16
  store i8* null, i8** %8, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @P_LIST, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %9, align 8
  br label %52

52:                                               ; preds = %75, %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = icmp ne %struct.TYPE_14__* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i8* @g_strdup(i8* %62)
  store i8* %63, i8** %8, align 8
  br label %74

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i8* @g_strjoin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %69, i32* null)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @g_free(i8* %71)
  %73 = load i8*, i8** %10, align 8
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %64, %58
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = call %struct.TYPE_14__* @g_list_next(%struct.TYPE_14__* %76)
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %9, align 8
  br label %52

78:                                               ; preds = %52
  br label %85

79:                                               ; preds = %41
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @g_strdup(i8* %83)
  store i8* %84, i8** %8, align 8
  br label %85

85:                                               ; preds = %79, %78
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @g_free(i8* %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i8* null, i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %85
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  store i8* %98, i8** %102, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @CONFIG_FILE_THEME, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  br label %241

113:                                              ; preds = %3
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @xrm_Number, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %113
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @P_INTEGER, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** @PropertyTypeName, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %134)
  %136 = load i8**, i8*** %7, align 8
  store i8* %135, i8** %136, align 8
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %4, align 4
  br label %243

138:                                              ; preds = %119
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  store i64 %142, i64* %146, align 8
  %147 = load i8*, i8** @CONFIG_FILE_THEME, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  br label %240

150:                                              ; preds = %113
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @xrm_SNumber, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %188

156:                                              ; preds = %150
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @P_INTEGER, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %156
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** @PropertyTypeName, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %171)
  %173 = load i8**, i8*** %7, align 8
  store i8* %172, i8** %173, align 8
  %174 = load i32, i32* @TRUE, align 4
  store i32 %174, i32* %4, align 4
  br label %243

175:                                              ; preds = %156
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  store i32 %180, i32* %184, align 4
  %185 = load i8*, i8** @CONFIG_FILE_THEME, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  store i8* %185, i8** %187, align 8
  br label %239

188:                                              ; preds = %150
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @xrm_Boolean, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %225

194:                                              ; preds = %188
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @P_BOOLEAN, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %213

200:                                              ; preds = %194
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** @PropertyTypeName, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %203, i32 %209)
  %211 = load i8**, i8*** %7, align 8
  store i8* %210, i8** %211, align 8
  %212 = load i32, i32* @TRUE, align 4
  store i32 %212, i32* %4, align 4
  br label %243

213:                                              ; preds = %194
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  store i32 %217, i32* %221, align 4
  %222 = load i8*, i8** @CONFIG_FILE_THEME, align 8
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  br label %238

225:                                              ; preds = %188
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** @PropertyTypeName, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %228, i32 %234)
  %236 = load i8**, i8*** %7, align 8
  store i8* %235, i8** %236, align 8
  %237 = load i32, i32* @TRUE, align 4
  store i32 %237, i32* %4, align 4
  br label %243

238:                                              ; preds = %213
  br label %239

239:                                              ; preds = %238, %175
  br label %240

240:                                              ; preds = %239, %138
  br label %241

241:                                              ; preds = %240, %97
  %242 = load i32, i32* @FALSE, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %241, %225, %200, %162, %125, %28
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i8* @g_strdup_printf(i8*, i32, i32) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @g_strjoin(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local %struct.TYPE_14__* @g_list_next(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
