; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_draw.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i64, i32, i32, i32, i32, i32, i32 (i32, i32, %struct.screen_write_ctx*, i32, i32)*, i64, i32*, %struct.TYPE_4__, i32*, %struct.mode_tree_line*, i32, %struct.screen, %struct.window_pane* }
%struct.screen_write_ctx = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mode_tree_line = type { i32, %struct.mode_tree_item*, i64, i64 }
%struct.mode_tree_item = type { i32, i32, i64, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.screen = type { i32 }
%struct.window_pane = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.options* }
%struct.options = type { i32 }
%struct.grid_cell = type { i32, i32 }

@grid_default_cell = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mode-style\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(%c)  \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(M-%c)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\01x\01   \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\01mq\01> \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\01tq\01> \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%-*s%s%s%s: \00", align 1
@GRID_ATTR_BRIGHT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c" %s (sort: %s%s)\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c", reversed\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c" (filter: \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"no matches\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c") \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_tree_draw(%struct.mode_tree_data* %0) #0 {
  %2 = alloca %struct.mode_tree_data*, align 8
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.screen*, align 8
  %5 = alloca %struct.mode_tree_line*, align 8
  %6 = alloca %struct.mode_tree_item*, align 8
  %7 = alloca %struct.options*, align 8
  %8 = alloca %struct.screen_write_ctx, align 4
  %9 = alloca %struct.grid_cell, align 4
  %10 = alloca %struct.grid_cell, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [7 x i8], align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %2, align 8
  %27 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %28 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %27, i32 0, i32 14
  %29 = load %struct.window_pane*, %struct.window_pane** %28, align 8
  store %struct.window_pane* %29, %struct.window_pane** %3, align 8
  %30 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %31 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %30, i32 0, i32 13
  store %struct.screen* %31, %struct.screen** %4, align 8
  %32 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %33 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.options*, %struct.options** %35, align 8
  store %struct.options* %36, %struct.options** %7, align 8
  %37 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %38 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %441

42:                                               ; preds = %1
  %43 = call i32 @memcpy(%struct.grid_cell* %9, i32* @grid_default_cell, i32 8)
  %44 = call i32 @memcpy(%struct.grid_cell* %10, i32* @grid_default_cell, i32 8)
  %45 = load %struct.options*, %struct.options** %7, align 8
  %46 = call i32 @style_apply(%struct.grid_cell* %10, %struct.options* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %48 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  %50 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %51 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.screen*, %struct.screen** %4, align 8
  %54 = call i32 @screen_write_start(%struct.screen_write_ctx* %8, i32* null, %struct.screen* %53)
  %55 = call i32 @screen_write_clearscreen(%struct.screen_write_ctx* %8, i32 8)
  %56 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %57 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 10
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  store i32 6, i32* %26, align 4
  br label %62

61:                                               ; preds = %42
  store i32 4, i32* %26, align 4
  br label %62

62:                                               ; preds = %61, %60
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %296, %62
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %67 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %299

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %73 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %296

77:                                               ; preds = %70
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %80 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = icmp sgt i32 %78, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %299

87:                                               ; preds = %77
  %88 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %89 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %88, i32 0, i32 11
  %90 = load %struct.mode_tree_line*, %struct.mode_tree_line** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %90, i64 %92
  store %struct.mode_tree_line* %93, %struct.mode_tree_line** %5, align 8
  %94 = load %struct.mode_tree_line*, %struct.mode_tree_line** %5, align 8
  %95 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %94, i32 0, i32 1
  %96 = load %struct.mode_tree_item*, %struct.mode_tree_item** %95, align 8
  store %struct.mode_tree_item* %96, %struct.mode_tree_item** %6, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %99 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %97, %100
  %102 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %8, i32 0, i32 %101, i32 0)
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 10
  br i1 %104, label %105, label %111

105:                                              ; preds = %87
  %106 = getelementptr inbounds [7 x i8], [7 x i8]* %21, i64 0, i64 0
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 48, %107
  %109 = trunc i32 %108 to i8
  %110 = call i32 @snprintf(i8* %106, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 signext %109)
  br label %124

111:                                              ; preds = %87
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 36
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = getelementptr inbounds [7 x i8], [7 x i8]* %21, i64 0, i64 0
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %116, 10
  %118 = add nsw i32 97, %117
  %119 = trunc i32 %118 to i8
  %120 = call i32 @snprintf(i8* %115, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8 signext %119)
  br label %123

121:                                              ; preds = %111
  %122 = getelementptr inbounds [7 x i8], [7 x i8]* %21, i64 0, i64 0
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %121, %114
  br label %124

124:                                              ; preds = %123, %105
  %125 = load %struct.mode_tree_line*, %struct.mode_tree_line** %5, align 8
  %126 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 8
  br label %145

130:                                              ; preds = %124
  %131 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %132 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %131, i32 0, i32 6
  %133 = call i64 @TAILQ_EMPTY(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  br label %144

136:                                              ; preds = %130
  %137 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %138 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  br label %143

142:                                              ; preds = %136
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  br label %143

143:                                              ; preds = %142, %141
  br label %144

144:                                              ; preds = %143, %135
  br label %145

145:                                              ; preds = %144, %129
  %146 = load %struct.mode_tree_line*, %struct.mode_tree_line** %5, align 8
  %147 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i8*, i8** %23, align 8
  %152 = call i8* @xstrdup(i8* %151)
  store i8* %152, i8** %20, align 8
  br label %216

153:                                              ; preds = %145
  %154 = load %struct.mode_tree_line*, %struct.mode_tree_line** %5, align 8
  %155 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 4, %156
  %158 = add nsw i32 %157, 32
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %24, align 8
  %160 = load i64, i64* %24, align 8
  %161 = call i8* @xcalloc(i32 1, i64 %160)
  store i8* %161, i8** %20, align 8
  store i32 1, i32* %14, align 4
  br label %162

162:                                              ; preds = %195, %153
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.mode_tree_line*, %struct.mode_tree_line** %5, align 8
  %165 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %162
  %169 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %170 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %169, i32 0, i32 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = icmp ne %struct.TYPE_6__* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %168
  %174 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %175 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %174, i32 0, i32 11
  %176 = load %struct.mode_tree_line*, %struct.mode_tree_line** %175, align 8
  %177 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %178 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %177, i32 0, i32 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %176, i64 %181
  %183 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %173
  %187 = load i8*, i8** %20, align 8
  %188 = load i64, i64* %24, align 8
  %189 = call i32 @strlcat(i8* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %188)
  br label %194

190:                                              ; preds = %173, %168
  %191 = load i8*, i8** %20, align 8
  %192 = load i64, i64* %24, align 8
  %193 = call i32 @strlcat(i8* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 %192)
  br label %194

194:                                              ; preds = %190, %186
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %162

198:                                              ; preds = %162
  %199 = load %struct.mode_tree_line*, %struct.mode_tree_line** %5, align 8
  %200 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i8*, i8** %20, align 8
  %205 = load i64, i64* %24, align 8
  %206 = call i32 @strlcat(i8* %204, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %205)
  br label %211

207:                                              ; preds = %198
  %208 = load i8*, i8** %20, align 8
  %209 = load i64, i64* %24, align 8
  %210 = call i32 @strlcat(i8* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 %209)
  br label %211

211:                                              ; preds = %207, %203
  %212 = load i8*, i8** %20, align 8
  %213 = load i8*, i8** %23, align 8
  %214 = load i64, i64* %24, align 8
  %215 = call i32 @strlcat(i8* %212, i8* %213, i64 %214)
  br label %216

216:                                              ; preds = %211, %150
  %217 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %218 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %22, align 8
  br label %223

222:                                              ; preds = %216
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %22, align 8
  br label %223

223:                                              ; preds = %222, %221
  %224 = load i32, i32* %26, align 4
  %225 = getelementptr inbounds [7 x i8], [7 x i8]* %21, i64 0, i64 0
  %226 = load i8*, i8** %20, align 8
  %227 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %228 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i8*, i8** %22, align 8
  %231 = call i32 (i8**, i8*, i32, i8*, i8*, ...) @xasprintf(i8** %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %224, i8* %225, i8* %226, i32 %229, i8* %230)
  %232 = load i8*, i8** %19, align 8
  %233 = call i32 @utf8_cstrwidth(i8* %232)
  store i32 %233, i32* %18, align 4
  %234 = load i8*, i8** %20, align 8
  %235 = call i32 @free(i8* %234)
  %236 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %237 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %223
  %241 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %242 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = xor i32 %243, %241
  store i32 %244, i32* %242, align 4
  %245 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %246 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = xor i32 %247, %245
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %240, %223
  %250 = load i32, i32* %13, align 4
  %251 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %252 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %250, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %249
  %256 = call i32 @screen_write_clearendofline(%struct.screen_write_ctx* %8, i32 8)
  %257 = load i8*, i8** %19, align 8
  %258 = call i32 (%struct.screen_write_ctx*, %struct.grid_cell*, i8*, ...) @screen_write_puts(%struct.screen_write_ctx* %8, %struct.grid_cell* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %257)
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %18, align 4
  %261 = sub nsw i32 %259, %260
  %262 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %263 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @format_draw(%struct.screen_write_ctx* %8, %struct.grid_cell* %9, i32 %261, i32 %264, i32* null)
  br label %279

266:                                              ; preds = %249
  %267 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @screen_write_clearendofline(%struct.screen_write_ctx* %8, i32 %268)
  %270 = load i8*, i8** %19, align 8
  %271 = call i32 (%struct.screen_write_ctx*, %struct.grid_cell*, i8*, ...) @screen_write_puts(%struct.screen_write_ctx* %8, %struct.grid_cell* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %270)
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %18, align 4
  %274 = sub nsw i32 %272, %273
  %275 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %276 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @format_draw(%struct.screen_write_ctx* %8, %struct.grid_cell* %10, i32 %274, i32 %277, i32* null)
  br label %279

279:                                              ; preds = %266, %255
  %280 = load i8*, i8** %19, align 8
  %281 = call i32 @free(i8* %280)
  %282 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %283 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %279
  %287 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %288 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = xor i32 %289, %287
  store i32 %290, i32* %288, align 4
  %291 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %292 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = xor i32 %293, %291
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %286, %279
  br label %296

296:                                              ; preds = %295, %76
  %297 = load i32, i32* %13, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %13, align 4
  br label %63

299:                                              ; preds = %86, %63
  %300 = load %struct.screen*, %struct.screen** %4, align 8
  %301 = call i32 @screen_size_y(%struct.screen* %300)
  store i32 %301, i32* %15, align 4
  %302 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %303 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %302, i32 0, i32 12
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %320

306:                                              ; preds = %299
  %307 = load i32, i32* %15, align 4
  %308 = icmp sle i32 %307, 4
  br i1 %308, label %320, label %309

309:                                              ; preds = %306
  %310 = load i32, i32* %12, align 4
  %311 = icmp sle i32 %310, 4
  br i1 %311, label %320, label %312

312:                                              ; preds = %309
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* %12, align 4
  %315 = sub nsw i32 %313, %314
  %316 = icmp sle i32 %315, 4
  br i1 %316, label %320, label %317

317:                                              ; preds = %312
  %318 = load i32, i32* %11, align 4
  %319 = icmp sle i32 %318, 4
  br i1 %319, label %320, label %322

320:                                              ; preds = %317, %312, %309, %306, %299
  %321 = call i32 @screen_write_stop(%struct.screen_write_ctx* %8)
  br label %441

322:                                              ; preds = %317
  %323 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %324 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %323, i32 0, i32 11
  %325 = load %struct.mode_tree_line*, %struct.mode_tree_line** %324, align 8
  %326 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %327 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %325, i64 %329
  store %struct.mode_tree_line* %330, %struct.mode_tree_line** %5, align 8
  %331 = load %struct.mode_tree_line*, %struct.mode_tree_line** %5, align 8
  %332 = getelementptr inbounds %struct.mode_tree_line, %struct.mode_tree_line* %331, i32 0, i32 1
  %333 = load %struct.mode_tree_item*, %struct.mode_tree_item** %332, align 8
  store %struct.mode_tree_item* %333, %struct.mode_tree_item** %6, align 8
  %334 = load i32, i32* %12, align 4
  %335 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %8, i32 0, i32 %334, i32 0)
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* %12, align 4
  %339 = sub nsw i32 %337, %338
  %340 = call i32 @screen_write_box(%struct.screen_write_ctx* %8, i32 %336, i32 %339)
  %341 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %342 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %345 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %344, i32 0, i32 10
  %346 = load i32*, i32** %345, align 8
  %347 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %348 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %347, i32 0, i32 9
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds i32, i32* %346, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = inttoptr i64 %353 to i8*
  %355 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %356 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %355, i32 0, i32 9
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %362 = call i32 (i8**, i8*, i32, i8*, i8*, ...) @xasprintf(i8** %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %343, i8* %354, i8* %361)
  %363 = load i32, i32* %11, align 4
  %364 = sub nsw i32 %363, 2
  %365 = load i8*, i8** %19, align 8
  %366 = call i32 @strlen(i8* %365)
  %367 = icmp sge i32 %364, %366
  br i1 %367, label %368, label %409

368:                                              ; preds = %322
  %369 = load i32, i32* %12, align 4
  %370 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %8, i32 1, i32 %369, i32 0)
  %371 = load i8*, i8** %19, align 8
  %372 = call i32 (%struct.screen_write_ctx*, %struct.grid_cell*, i8*, ...) @screen_write_puts(%struct.screen_write_ctx* %8, %struct.grid_cell* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %371)
  %373 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %374 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %373, i32 0, i32 7
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %368
  store i64 10, i64* %25, align 8
  br label %379

378:                                              ; preds = %368
  store i64 6, i64* %25, align 8
  br label %379

379:                                              ; preds = %378, %377
  %380 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %381 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %380, i32 0, i32 8
  %382 = load i32*, i32** %381, align 8
  %383 = icmp ne i32* %382, null
  br i1 %383, label %384, label %408

384:                                              ; preds = %379
  %385 = load i32, i32* %11, align 4
  %386 = sub nsw i32 %385, 2
  %387 = sext i32 %386 to i64
  %388 = load i8*, i8** %19, align 8
  %389 = call i32 @strlen(i8* %388)
  %390 = add nsw i32 %389, 10
  %391 = sext i32 %390 to i64
  %392 = load i64, i64* %25, align 8
  %393 = add i64 %391, %392
  %394 = add i64 %393, 2
  %395 = icmp uge i64 %387, %394
  br i1 %395, label %396, label %408

396:                                              ; preds = %384
  %397 = call i32 (%struct.screen_write_ctx*, %struct.grid_cell*, i8*, ...) @screen_write_puts(%struct.screen_write_ctx* %8, %struct.grid_cell* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %398 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %399 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %398, i32 0, i32 7
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %396
  %403 = call i32 (%struct.screen_write_ctx*, %struct.grid_cell*, i8*, ...) @screen_write_puts(%struct.screen_write_ctx* %8, %struct.grid_cell* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  br label %406

404:                                              ; preds = %396
  %405 = call i32 (%struct.screen_write_ctx*, %struct.grid_cell*, i8*, ...) @screen_write_puts(%struct.screen_write_ctx* %8, %struct.grid_cell* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %406

406:                                              ; preds = %404, %402
  %407 = call i32 (%struct.screen_write_ctx*, %struct.grid_cell*, i8*, ...) @screen_write_puts(%struct.screen_write_ctx* %8, %struct.grid_cell* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %408

408:                                              ; preds = %406, %384, %379
  br label %409

409:                                              ; preds = %408, %322
  %410 = load i8*, i8** %19, align 8
  %411 = call i32 @free(i8* %410)
  %412 = load i32, i32* %11, align 4
  %413 = sub nsw i32 %412, 4
  store i32 %413, i32* %16, align 4
  %414 = load i32, i32* %15, align 4
  %415 = load i32, i32* %12, align 4
  %416 = sub nsw i32 %414, %415
  %417 = sub nsw i32 %416, 2
  store i32 %417, i32* %17, align 4
  %418 = load i32, i32* %16, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %439

420:                                              ; preds = %409
  %421 = load i32, i32* %17, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %439

423:                                              ; preds = %420
  %424 = load i32, i32* %12, align 4
  %425 = add nsw i32 %424, 1
  %426 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %8, i32 2, i32 %425, i32 0)
  %427 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %428 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %427, i32 0, i32 6
  %429 = load i32 (i32, i32, %struct.screen_write_ctx*, i32, i32)*, i32 (i32, i32, %struct.screen_write_ctx*, i32, i32)** %428, align 8
  %430 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %431 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  %434 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* %16, align 4
  %437 = load i32, i32* %17, align 4
  %438 = call i32 %429(i32 %432, i32 %435, %struct.screen_write_ctx* %8, i32 %436, i32 %437)
  br label %439

439:                                              ; preds = %423, %420, %409
  %440 = call i32 @screen_write_stop(%struct.screen_write_ctx* %8)
  br label %441

441:                                              ; preds = %439, %320, %41
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @style_apply(%struct.grid_cell*, %struct.options*, i8*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.screen*) #1

declare dso_local i32 @screen_write_clearscreen(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xcalloc(i32, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @utf8_cstrwidth(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @screen_write_clearendofline(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @screen_write_puts(%struct.screen_write_ctx*, %struct.grid_cell*, i8*, ...) #1

declare dso_local i32 @format_draw(%struct.screen_write_ctx*, %struct.grid_cell*, i32, i32, i32*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @screen_write_box(%struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
