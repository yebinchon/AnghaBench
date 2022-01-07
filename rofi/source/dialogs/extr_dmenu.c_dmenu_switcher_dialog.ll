; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_switcher_dialog.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_switcher_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i8*, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@dmenu_mode = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@MENU_NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-sync\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-dump\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"-select\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"-no-custom\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"-only-match\00", align 1
@config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"-selected-row\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"-async-pre-read\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"-multi-select\00", align 1
@MENU_INDICATOR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"-markup-rows\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"-password\00", align 1
@MENU_PASSWORD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@dmenu_finalize = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"Loading.. \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmenu_switcher_dialog() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = call i32 @mode_init(%struct.TYPE_12__* @dmenu_mode)
  %16 = load i32, i32* @MENU_NORMAL, align 4
  store i32 %16, i32* %2, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dmenu_mode, i32 0, i32 1), align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %3, align 8
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %4, align 4
  %20 = call i64 @find_arg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %0
  %23 = call i64 @find_arg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = call i64 @find_arg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = call i64 @find_arg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = call i64 @find_arg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i64 @find_arg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %34, %31, %28, %25, %22, %0
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  store i32 25, i32* %5, align 4
  %51 = call i32 @find_arg_uint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %5)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @get_dmenu_async(%struct.TYPE_11__* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = call i32 @get_dmenu_sync(%struct.TYPE_11__* %56)
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %42
  store i8* null, i8** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %8, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = call i64 @find_arg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %59
  %75 = load i32, i32* @MENU_INDICATOR, align 4
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* @TRUE, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %59
  %80 = call i64 @find_arg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @TRUE, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %79
  %87 = call i64 @find_arg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = call i64 @find_arg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp sge i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89, %86
  %93 = load i32, i32* @TRUE, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %1, align 4
  br label %239

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %116 = call i32 @rofi_output_formatted_line(i32 %110, i32 %114, i32 0, i8* %115)
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %1, align 4
  br label %239

118:                                              ; preds = %104, %101
  %119 = call i64 @find_arg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* @MENU_PASSWORD, align 4
  %123 = load i32, i32* %2, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %127 = call i8* @g_strdup(i8* %126)
  store i8* %127, i8** %6, align 8
  store i8* null, i8** %9, align 8
  %128 = call i32 @find_arg_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  %129 = load i8*, i8** %9, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %160

131:                                              ; preds = %125
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 8
  %134 = call i32** @helper_tokenize(i8* %132, i32 %133)
  store i32** %134, i32*** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %154, %131
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %135
  %140 = load i32**, i32*** %10, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @helper_token_match(i32** %140, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %157

153:                                              ; preds = %139
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %135

157:                                              ; preds = %149, %135
  %158 = load i32**, i32*** %10, align 8
  %159 = call i32 @helper_tokenize_free(i32** %158)
  br label %160

160:                                              ; preds = %157, %125
  %161 = call i64 @find_arg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %162 = icmp sge i64 %161, 0
  br i1 %162, label %163, label %214

163:                                              ; preds = %160
  %164 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  br label %169

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i8* [ %167, %166 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %168 ]
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 8
  %172 = call i32** @helper_tokenize(i8* %170, i32 %171)
  store i32** %172, i32*** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %204, %169
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %207

177:                                              ; preds = %173
  %178 = load i32**, i32*** %12, align 8
  %179 = icmp eq i32** %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %177
  %181 = load i32**, i32*** %12, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %183 = load i32, i32* %13, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @helper_token_match(i32** %181, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %180, %177
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %195 = load i32, i32* %13, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %202 = call i32 @rofi_output_formatted_line(i32 %193, i32 %199, i32 %200, i8* %201)
  br label %203

203:                                              ; preds = %190, %180
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %13, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %173

207:                                              ; preds = %173
  %208 = load i32**, i32*** %12, align 8
  %209 = call i32 @helper_tokenize_free(i32** %208)
  %210 = call i32 @dmenu_mode_free(%struct.TYPE_12__* @dmenu_mode)
  %211 = load i8*, i8** %6, align 8
  %212 = call i32 @g_free(i8* %211)
  %213 = load i32, i32* @TRUE, align 4
  store i32 %213, i32* %1, align 4
  br label %239

214:                                              ; preds = %160
  %215 = call i32 @find_arg_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dmenu_mode, i32 0, i32 0))
  %216 = load i8*, i8** %6, align 8
  %217 = load i32, i32* %2, align 4
  %218 = load i32, i32* @dmenu_finalize, align 4
  %219 = call i32* @rofi_view_create(%struct.TYPE_12__* @dmenu_mode, i8* %216, i32 %217, i32 %218)
  store i32* %219, i32** %14, align 8
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %214
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i32*, i32** %14, align 8
  %229 = call i32 @rofi_view_set_overlay(i32* %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %230

230:                                              ; preds = %227, %222, %214
  %231 = load i32*, i32** %14, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @rofi_view_set_selected_line(i32* %231, i32 %234)
  %236 = load i32*, i32** %14, align 8
  %237 = call i32 @rofi_view_set_active(i32* %236)
  %238 = load i32, i32* @FALSE, align 4
  store i32 %238, i32* %1, align 4
  br label %239

239:                                              ; preds = %230, %207, %107, %98
  %240 = load i32, i32* %1, align 4
  ret i32 %240
}

declare dso_local i32 @mode_init(%struct.TYPE_12__*) #1

declare dso_local i64 @find_arg(i8*) #1

declare dso_local i32 @find_arg_uint(i8*, i32*) #1

declare dso_local i32 @get_dmenu_async(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @get_dmenu_sync(%struct.TYPE_11__*) #1

declare dso_local i32 @rofi_output_formatted_line(i32, i32, i32, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @find_arg_str(i8*, i8**) #1

declare dso_local i32** @helper_tokenize(i8*, i32) #1

declare dso_local i64 @helper_token_match(i32**, i32) #1

declare dso_local i32 @helper_tokenize_free(i32**) #1

declare dso_local i32 @dmenu_mode_free(%struct.TYPE_12__*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @rofi_view_create(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @rofi_view_set_overlay(i32*, i8*) #1

declare dso_local i32 @rofi_view_set_selected_line(i32*, i32) #1

declare dso_local i32 @rofi_view_set_active(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
