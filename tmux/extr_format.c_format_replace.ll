; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_replace.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.format_modifier = type { i32*, i32, i8**, i32 }

@.str = private unnamed_addr constant [18 x i8] c"modifier %u is %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"modifier %u argument %d: %s\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FORMAT_LITERAL = common dso_local global i32 0, align 4
@FORMAT_BASENAME = common dso_local global i32 0, align 4
@FORMAT_DIRNAME = common dso_local global i32 0, align 4
@FORMAT_TIMESTRING = common dso_local global i32 0, align 4
@FORMAT_QUOTE = common dso_local global i32 0, align 4
@FORMAT_EXPAND = common dso_local global i32 0, align 4
@FORMAT_EXPANDTIME = common dso_local global i32 0, align 4
@FORMAT_SESSIONS = common dso_local global i32 0, align 4
@FORMAT_WINDOWS = common dso_local global i32 0, align 4
@FORMAT_PANES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"search '%s' but no pane\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"search '%s' pane %%%u\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"compare %s syntax error: %s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"compare %s left is: %s\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"compare %s right is: %s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"condition syntax error: %s\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"condition is: %s\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"condition '%s' found: %s\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"condition '%s' not found; assuming false\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"condition '%s' found\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"condition '%s' syntax error: %s\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"condition '%s' is true\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"condition '%s' is false\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"format '%s' not found\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"format '%s' found: %s\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"substitute '%s' to '%s': %s\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"applied length limit %d: %s\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"replaced '%s' with '%s'\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"failed %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.format_tree*, i8*, i64, i8**, i64*, i64*)* @format_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_replace(%struct.format_tree* %0, i8* %1, i64 %2, i8** %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.format_tree*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.window_pane*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.format_modifier*, align 8
  %31 = alloca %struct.format_modifier*, align 8
  %32 = alloca %struct.format_modifier*, align 8
  %33 = alloca %struct.format_modifier*, align 8
  %34 = alloca %struct.format_modifier*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store %struct.format_tree* %0, %struct.format_tree** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %37 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %38 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %37, i32 0, i32 0
  %39 = load %struct.window_pane*, %struct.window_pane** %38, align 8
  store %struct.window_pane* %39, %struct.window_pane** %14, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store %struct.format_modifier* null, %struct.format_modifier** %32, align 8
  store %struct.format_modifier* null, %struct.format_modifier** %33, align 8
  store %struct.format_modifier* null, %struct.format_modifier** %34, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i8* @xstrndup(i8* %40, i32 %42)
  store i8* %43, i8** %19, align 8
  store i8* %43, i8** %16, align 8
  %44 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %45 = call %struct.format_modifier* @format_build_modifiers(%struct.format_tree* %44, i8** %16, i64* %36)
  store %struct.format_modifier* %45, %struct.format_modifier** %30, align 8
  store i64 0, i64* %35, align 8
  br label %46

46:                                               ; preds = %239, %6
  %47 = load i64, i64* %35, align 8
  %48 = load i64, i64* %36, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %242

50:                                               ; preds = %46
  %51 = load %struct.format_modifier*, %struct.format_modifier** %30, align 8
  %52 = load i64, i64* %35, align 8
  %53 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %51, i64 %52
  store %struct.format_modifier* %53, %struct.format_modifier** %31, align 8
  %54 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %55 = call i64 @format_logging(%struct.format_tree* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %50
  %58 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %59 = load i64, i64* %35, align 8
  %60 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %61 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %59, i32* %62)
  store i32 0, i32* %29, align 4
  br label %64

64:                                               ; preds = %82, %57
  %65 = load i32, i32* %29, align 4
  %66 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %67 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %72 = load i64, i64* %35, align 8
  %73 = load i32, i32* %29, align 4
  %74 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %75 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %74, i32 0, i32 2
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %29, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %72, i32 %73, i8* %80)
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %29, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %29, align 4
  br label %64

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85, %50
  %87 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %88 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %187

91:                                               ; preds = %86
  %92 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %93 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %186 [
    i32 109, label %97
    i32 60, label %97
    i32 62, label %97
    i32 67, label %99
    i32 115, label %101
    i32 61, label %109
    i32 108, label %146
    i32 98, label %150
    i32 100, label %154
    i32 116, label %158
    i32 113, label %162
    i32 69, label %166
    i32 84, label %170
    i32 83, label %174
    i32 87, label %178
    i32 80, label %182
  ]

97:                                               ; preds = %91, %91, %91
  %98 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  store %struct.format_modifier* %98, %struct.format_modifier** %32, align 8
  br label %186

99:                                               ; preds = %91
  %100 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  store %struct.format_modifier* %100, %struct.format_modifier** %33, align 8
  br label %186

101:                                              ; preds = %91
  %102 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %103 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %186

107:                                              ; preds = %101
  %108 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  store %struct.format_modifier* %108, %struct.format_modifier** %34, align 8
  br label %186

109:                                              ; preds = %91
  %110 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %111 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %186

115:                                              ; preds = %109
  %116 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %117 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %116, i32 0, i32 2
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @INT_MIN, align 4
  %122 = load i32, i32* @INT_MAX, align 4
  %123 = call i32 @strtonum(i8* %120, i32 %121, i32 %122, i8** %15)
  store i32 %123, i32* %28, align 4
  %124 = load i8*, i8** %15, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  store i32 0, i32* %28, align 4
  br label %127

127:                                              ; preds = %126, %115
  %128 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %129 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp sge i32 %130, 2
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %134 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %133, i32 0, i32 2
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %141 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %140, i32 0, i32 2
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 1
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %18, align 8
  br label %145

145:                                              ; preds = %139, %132, %127
  br label %186

146:                                              ; preds = %91
  %147 = load i32, i32* @FORMAT_LITERAL, align 4
  %148 = load i32, i32* %27, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %27, align 4
  br label %186

150:                                              ; preds = %91
  %151 = load i32, i32* @FORMAT_BASENAME, align 4
  %152 = load i32, i32* %27, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %27, align 4
  br label %186

154:                                              ; preds = %91
  %155 = load i32, i32* @FORMAT_DIRNAME, align 4
  %156 = load i32, i32* %27, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %27, align 4
  br label %186

158:                                              ; preds = %91
  %159 = load i32, i32* @FORMAT_TIMESTRING, align 4
  %160 = load i32, i32* %27, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %27, align 4
  br label %186

162:                                              ; preds = %91
  %163 = load i32, i32* @FORMAT_QUOTE, align 4
  %164 = load i32, i32* %27, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %27, align 4
  br label %186

166:                                              ; preds = %91
  %167 = load i32, i32* @FORMAT_EXPAND, align 4
  %168 = load i32, i32* %27, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %27, align 4
  br label %186

170:                                              ; preds = %91
  %171 = load i32, i32* @FORMAT_EXPANDTIME, align 4
  %172 = load i32, i32* %27, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %27, align 4
  br label %186

174:                                              ; preds = %91
  %175 = load i32, i32* @FORMAT_SESSIONS, align 4
  %176 = load i32, i32* %27, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %27, align 4
  br label %186

178:                                              ; preds = %91
  %179 = load i32, i32* @FORMAT_WINDOWS, align 4
  %180 = load i32, i32* %27, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %27, align 4
  br label %186

182:                                              ; preds = %91
  %183 = load i32, i32* @FORMAT_PANES, align 4
  %184 = load i32, i32* %27, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %27, align 4
  br label %186

186:                                              ; preds = %91, %182, %178, %174, %170, %166, %162, %158, %154, %150, %146, %145, %114, %107, %106, %99, %97
  br label %238

187:                                              ; preds = %86
  %188 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %189 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %192, label %237

192:                                              ; preds = %187
  %193 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %194 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = bitcast i32* %195 to i8*
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %234, label %199

199:                                              ; preds = %192
  %200 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %201 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = bitcast i32* %202 to i8*
  %204 = call i64 @strcmp(i8* %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %234, label %206

206:                                              ; preds = %199
  %207 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %208 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = bitcast i32* %209 to i8*
  %211 = call i64 @strcmp(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %234, label %213

213:                                              ; preds = %206
  %214 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %215 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = bitcast i32* %216 to i8*
  %218 = call i64 @strcmp(i8* %217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %234, label %220

220:                                              ; preds = %213
  %221 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %222 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = bitcast i32* %223 to i8*
  %225 = call i64 @strcmp(i8* %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %220
  %228 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %229 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = bitcast i32* %230 to i8*
  %232 = call i64 @strcmp(i8* %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227, %220, %213, %206, %199, %192
  %235 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  store %struct.format_modifier* %235, %struct.format_modifier** %32, align 8
  br label %236

236:                                              ; preds = %234, %227
  br label %237

237:                                              ; preds = %236, %187
  br label %238

238:                                              ; preds = %237, %186
  br label %239

239:                                              ; preds = %238
  %240 = load i64, i64* %35, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %35, align 8
  br label %46

242:                                              ; preds = %46
  %243 = load i32, i32* %27, align 4
  %244 = load i32, i32* @FORMAT_LITERAL, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i8*, i8** %16, align 8
  %249 = call i8* @xstrdup(i8* %248)
  store i8* %249, i8** %23, align 8
  br label %637

250:                                              ; preds = %242
  %251 = load i32, i32* %27, align 4
  %252 = load i32, i32* @FORMAT_SESSIONS, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %250
  %256 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %257 = load i8*, i8** %16, align 8
  %258 = call i8* @format_loop_sessions(%struct.format_tree* %256, i8* %257)
  store i8* %258, i8** %23, align 8
  %259 = load i8*, i8** %23, align 8
  %260 = icmp eq i8* %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %803

262:                                              ; preds = %255
  br label %636

263:                                              ; preds = %250
  %264 = load i32, i32* %27, align 4
  %265 = load i32, i32* @FORMAT_WINDOWS, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %263
  %269 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %270 = load i8*, i8** %16, align 8
  %271 = call i8* @format_loop_windows(%struct.format_tree* %269, i8* %270)
  store i8* %271, i8** %23, align 8
  %272 = load i8*, i8** %23, align 8
  %273 = icmp eq i8* %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  br label %803

275:                                              ; preds = %268
  br label %635

276:                                              ; preds = %263
  %277 = load i32, i32* %27, align 4
  %278 = load i32, i32* @FORMAT_PANES, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %283 = load i8*, i8** %16, align 8
  %284 = call i8* @format_loop_panes(%struct.format_tree* %282, i8* %283)
  store i8* %284, i8** %23, align 8
  %285 = load i8*, i8** %23, align 8
  %286 = icmp eq i8* %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %281
  br label %803

288:                                              ; preds = %281
  br label %634

289:                                              ; preds = %276
  %290 = load %struct.format_modifier*, %struct.format_modifier** %33, align 8
  %291 = icmp ne %struct.format_modifier* %290, null
  br i1 %291, label %292, label %317

292:                                              ; preds = %289
  %293 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %294 = load i8*, i8** %16, align 8
  %295 = call i8* @format_expand(%struct.format_tree* %293, i8* %294)
  store i8* %295, i8** %22, align 8
  %296 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %297 = icmp eq %struct.window_pane* %296, null
  br i1 %297, label %298, label %303

298:                                              ; preds = %292
  %299 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %300 = load i8*, i8** %22, align 8
  %301 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %299, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %300)
  %302 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %302, i8** %23, align 8
  br label %314

303:                                              ; preds = %292
  %304 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %305 = load i8*, i8** %22, align 8
  %306 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %307 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %304, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %305, i32 %308)
  %310 = load %struct.format_modifier*, %struct.format_modifier** %31, align 8
  %311 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %312 = load i8*, i8** %22, align 8
  %313 = call i8* @format_search(%struct.format_modifier* %310, %struct.window_pane* %311, i8* %312)
  store i8* %313, i8** %23, align 8
  br label %314

314:                                              ; preds = %303, %298
  %315 = load i8*, i8** %22, align 8
  %316 = call i32 @free(i8* %315)
  br label %633

317:                                              ; preds = %289
  %318 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %319 = icmp ne %struct.format_modifier* %318, null
  br i1 %319, label %320, label %511

320:                                              ; preds = %317
  %321 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %322 = load i8*, i8** %16, align 8
  %323 = call i64 @format_choose(%struct.format_tree* %321, i8* %322, i8** %24, i8** %25, i32 1)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %320
  %326 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %327 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %328 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i8*, i8** %16, align 8
  %331 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %326, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32* %329, i8* %330)
  br label %803

332:                                              ; preds = %320
  %333 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %334 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %335 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i8*, i8** %24, align 8
  %338 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %333, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32* %336, i8* %337)
  %339 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %340 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %341 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = load i8*, i8** %25, align 8
  %344 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %339, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32* %342, i8* %343)
  %345 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %346 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = bitcast i32* %347 to i8*
  %349 = call i64 @strcmp(i8* %348, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %364

351:                                              ; preds = %332
  %352 = load i8*, i8** %24, align 8
  %353 = call i64 @format_true(i8* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %351
  %356 = load i8*, i8** %25, align 8
  %357 = call i64 @format_true(i8* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %355, %351
  %360 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %360, i8** %23, align 8
  br label %363

361:                                              ; preds = %355
  %362 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %362, i8** %23, align 8
  br label %363

363:                                              ; preds = %361, %359
  br label %506

364:                                              ; preds = %332
  %365 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %366 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = bitcast i32* %367 to i8*
  %369 = call i64 @strcmp(i8* %368, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %384

371:                                              ; preds = %364
  %372 = load i8*, i8** %24, align 8
  %373 = call i64 @format_true(i8* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %371
  %376 = load i8*, i8** %25, align 8
  %377 = call i64 @format_true(i8* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %380, i8** %23, align 8
  br label %383

381:                                              ; preds = %375, %371
  %382 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %382, i8** %23, align 8
  br label %383

383:                                              ; preds = %381, %379
  br label %505

384:                                              ; preds = %364
  %385 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %386 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = bitcast i32* %387 to i8*
  %389 = call i64 @strcmp(i8* %388, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %384
  %392 = load i8*, i8** %24, align 8
  %393 = load i8*, i8** %25, align 8
  %394 = call i64 @strcmp(i8* %392, i8* %393)
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %391
  %397 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %397, i8** %23, align 8
  br label %400

398:                                              ; preds = %391
  %399 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %399, i8** %23, align 8
  br label %400

400:                                              ; preds = %398, %396
  br label %504

401:                                              ; preds = %384
  %402 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %403 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = bitcast i32* %404 to i8*
  %406 = call i64 @strcmp(i8* %405, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %418

408:                                              ; preds = %401
  %409 = load i8*, i8** %24, align 8
  %410 = load i8*, i8** %25, align 8
  %411 = call i64 @strcmp(i8* %409, i8* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %408
  %414 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %414, i8** %23, align 8
  br label %417

415:                                              ; preds = %408
  %416 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %416, i8** %23, align 8
  br label %417

417:                                              ; preds = %415, %413
  br label %503

418:                                              ; preds = %401
  %419 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %420 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = bitcast i32* %421 to i8*
  %423 = call i64 @strcmp(i8* %422, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %435

425:                                              ; preds = %418
  %426 = load i8*, i8** %24, align 8
  %427 = load i8*, i8** %25, align 8
  %428 = call i64 @strcmp(i8* %426, i8* %427)
  %429 = icmp slt i64 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %425
  %431 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %431, i8** %23, align 8
  br label %434

432:                                              ; preds = %425
  %433 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %433, i8** %23, align 8
  br label %434

434:                                              ; preds = %432, %430
  br label %502

435:                                              ; preds = %418
  %436 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %437 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %436, i32 0, i32 0
  %438 = load i32*, i32** %437, align 8
  %439 = bitcast i32* %438 to i8*
  %440 = call i64 @strcmp(i8* %439, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %442, label %452

442:                                              ; preds = %435
  %443 = load i8*, i8** %24, align 8
  %444 = load i8*, i8** %25, align 8
  %445 = call i64 @strcmp(i8* %443, i8* %444)
  %446 = icmp sgt i64 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %448, i8** %23, align 8
  br label %451

449:                                              ; preds = %442
  %450 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %450, i8** %23, align 8
  br label %451

451:                                              ; preds = %449, %447
  br label %501

452:                                              ; preds = %435
  %453 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %454 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = bitcast i32* %455 to i8*
  %457 = call i64 @strcmp(i8* %456, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %459, label %469

459:                                              ; preds = %452
  %460 = load i8*, i8** %24, align 8
  %461 = load i8*, i8** %25, align 8
  %462 = call i64 @strcmp(i8* %460, i8* %461)
  %463 = icmp sle i64 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %459
  %465 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %465, i8** %23, align 8
  br label %468

466:                                              ; preds = %459
  %467 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %467, i8** %23, align 8
  br label %468

468:                                              ; preds = %466, %464
  br label %500

469:                                              ; preds = %452
  %470 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %471 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %470, i32 0, i32 0
  %472 = load i32*, i32** %471, align 8
  %473 = bitcast i32* %472 to i8*
  %474 = call i64 @strcmp(i8* %473, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %476, label %486

476:                                              ; preds = %469
  %477 = load i8*, i8** %24, align 8
  %478 = load i8*, i8** %25, align 8
  %479 = call i64 @strcmp(i8* %477, i8* %478)
  %480 = icmp sge i64 %479, 0
  br i1 %480, label %481, label %483

481:                                              ; preds = %476
  %482 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i8* %482, i8** %23, align 8
  br label %485

483:                                              ; preds = %476
  %484 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %484, i8** %23, align 8
  br label %485

485:                                              ; preds = %483, %481
  br label %499

486:                                              ; preds = %469
  %487 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %488 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %487, i32 0, i32 0
  %489 = load i32*, i32** %488, align 8
  %490 = bitcast i32* %489 to i8*
  %491 = call i64 @strcmp(i8* %490, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %492 = icmp eq i64 %491, 0
  br i1 %492, label %493, label %498

493:                                              ; preds = %486
  %494 = load %struct.format_modifier*, %struct.format_modifier** %32, align 8
  %495 = load i8*, i8** %24, align 8
  %496 = load i8*, i8** %25, align 8
  %497 = call i8* @format_match(%struct.format_modifier* %494, i8* %495, i8* %496)
  store i8* %497, i8** %23, align 8
  br label %498

498:                                              ; preds = %493, %486
  br label %499

499:                                              ; preds = %498, %485
  br label %500

500:                                              ; preds = %499, %468
  br label %501

501:                                              ; preds = %500, %451
  br label %502

502:                                              ; preds = %501, %434
  br label %503

503:                                              ; preds = %502, %417
  br label %504

504:                                              ; preds = %503, %400
  br label %505

505:                                              ; preds = %504, %383
  br label %506

506:                                              ; preds = %505, %363
  %507 = load i8*, i8** %25, align 8
  %508 = call i32 @free(i8* %507)
  %509 = load i8*, i8** %24, align 8
  %510 = call i32 @free(i8* %509)
  br label %632

511:                                              ; preds = %317
  %512 = load i8*, i8** %16, align 8
  %513 = load i8, i8* %512, align 1
  %514 = sext i8 %513 to i32
  %515 = icmp eq i32 %514, 63
  br i1 %515, label %516, label %613

516:                                              ; preds = %511
  %517 = load i8*, i8** %16, align 8
  %518 = getelementptr inbounds i8, i8* %517, i64 1
  %519 = call i8* @format_skip(i8* %518, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  store i8* %519, i8** %17, align 8
  %520 = load i8*, i8** %17, align 8
  %521 = icmp eq i8* %520, null
  br i1 %521, label %522, label %527

522:                                              ; preds = %516
  %523 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %524 = load i8*, i8** %16, align 8
  %525 = getelementptr inbounds i8, i8* %524, i64 1
  %526 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %523, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* %525)
  br label %803

527:                                              ; preds = %516
  %528 = load i8*, i8** %16, align 8
  %529 = getelementptr inbounds i8, i8* %528, i64 1
  %530 = load i8*, i8** %17, align 8
  %531 = load i8*, i8** %16, align 8
  %532 = getelementptr inbounds i8, i8* %531, i64 1
  %533 = ptrtoint i8* %530 to i64
  %534 = ptrtoint i8* %532 to i64
  %535 = sub i64 %533, %534
  %536 = trunc i64 %535 to i32
  %537 = call i8* @xstrndup(i8* %529, i32 %536)
  store i8* %537, i8** %20, align 8
  %538 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %539 = load i8*, i8** %20, align 8
  %540 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %538, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* %539)
  %541 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %542 = load i8*, i8** %20, align 8
  %543 = load i32, i32* %27, align 4
  %544 = call i8* @format_find(%struct.format_tree* %541, i8* %542, i32 %543)
  store i8* %544, i8** %21, align 8
  %545 = load i8*, i8** %21, align 8
  %546 = icmp eq i8* %545, null
  br i1 %546, label %547, label %568

547:                                              ; preds = %527
  %548 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %549 = load i8*, i8** %20, align 8
  %550 = call i8* @format_expand(%struct.format_tree* %548, i8* %549)
  store i8* %550, i8** %21, align 8
  %551 = load i8*, i8** %21, align 8
  %552 = load i8*, i8** %20, align 8
  %553 = call i64 @strcmp(i8* %551, i8* %552)
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %555, label %563

555:                                              ; preds = %547
  %556 = load i8*, i8** %21, align 8
  %557 = call i32 @free(i8* %556)
  %558 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0))
  store i8* %558, i8** %21, align 8
  %559 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %560 = load i8*, i8** %20, align 8
  %561 = load i8*, i8** %21, align 8
  %562 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %559, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* %560, i8* %561)
  br label %567

563:                                              ; preds = %547
  %564 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %565 = load i8*, i8** %20, align 8
  %566 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %564, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i8* %565)
  br label %567

567:                                              ; preds = %563, %555
  br label %572

568:                                              ; preds = %527
  %569 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %570 = load i8*, i8** %20, align 8
  %571 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %569, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %570)
  br label %572

572:                                              ; preds = %568, %567
  %573 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %574 = load i8*, i8** %17, align 8
  %575 = getelementptr inbounds i8, i8* %574, i64 1
  %576 = call i64 @format_choose(%struct.format_tree* %573, i8* %575, i8** %24, i8** %25, i32 0)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %586

578:                                              ; preds = %572
  %579 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %580 = load i8*, i8** %20, align 8
  %581 = load i8*, i8** %17, align 8
  %582 = getelementptr inbounds i8, i8* %581, i64 1
  %583 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %579, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* %580, i8* %582)
  %584 = load i8*, i8** %21, align 8
  %585 = call i32 @free(i8* %584)
  br label %803

586:                                              ; preds = %572
  %587 = load i8*, i8** %21, align 8
  %588 = call i64 @format_true(i8* %587)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %597

590:                                              ; preds = %586
  %591 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %592 = load i8*, i8** %20, align 8
  %593 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %591, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i8* %592)
  %594 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %595 = load i8*, i8** %24, align 8
  %596 = call i8* @format_expand(%struct.format_tree* %594, i8* %595)
  store i8* %596, i8** %23, align 8
  br label %604

597:                                              ; preds = %586
  %598 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %599 = load i8*, i8** %20, align 8
  %600 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %598, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %599)
  %601 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %602 = load i8*, i8** %25, align 8
  %603 = call i8* @format_expand(%struct.format_tree* %601, i8* %602)
  store i8* %603, i8** %23, align 8
  br label %604

604:                                              ; preds = %597, %590
  %605 = load i8*, i8** %25, align 8
  %606 = call i32 @free(i8* %605)
  %607 = load i8*, i8** %24, align 8
  %608 = call i32 @free(i8* %607)
  %609 = load i8*, i8** %20, align 8
  %610 = call i32 @free(i8* %609)
  %611 = load i8*, i8** %21, align 8
  %612 = call i32 @free(i8* %611)
  br label %631

613:                                              ; preds = %511
  %614 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %615 = load i8*, i8** %16, align 8
  %616 = load i32, i32* %27, align 4
  %617 = call i8* @format_find(%struct.format_tree* %614, i8* %615, i32 %616)
  store i8* %617, i8** %23, align 8
  %618 = load i8*, i8** %23, align 8
  %619 = icmp eq i8* %618, null
  br i1 %619, label %620, label %625

620:                                              ; preds = %613
  %621 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %622 = load i8*, i8** %16, align 8
  %623 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %621, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i8* %622)
  %624 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0))
  store i8* %624, i8** %23, align 8
  br label %630

625:                                              ; preds = %613
  %626 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %627 = load i8*, i8** %16, align 8
  %628 = load i8*, i8** %23, align 8
  %629 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %626, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8* %627, i8* %628)
  br label %630

630:                                              ; preds = %625, %620
  br label %631

631:                                              ; preds = %630, %604
  br label %632

632:                                              ; preds = %631, %506
  br label %633

633:                                              ; preds = %632, %314
  br label %634

634:                                              ; preds = %633, %288
  br label %635

635:                                              ; preds = %634, %275
  br label %636

636:                                              ; preds = %635, %262
  br label %637

637:                                              ; preds = %636, %247
  %638 = load i32, i32* %27, align 4
  %639 = load i32, i32* @FORMAT_EXPAND, align 4
  %640 = and i32 %638, %639
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %649

642:                                              ; preds = %637
  %643 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %644 = load i8*, i8** %23, align 8
  %645 = call i8* @format_expand(%struct.format_tree* %643, i8* %644)
  store i8* %645, i8** %22, align 8
  %646 = load i8*, i8** %23, align 8
  %647 = call i32 @free(i8* %646)
  %648 = load i8*, i8** %22, align 8
  store i8* %648, i8** %23, align 8
  br label %662

649:                                              ; preds = %637
  %650 = load i32, i32* %27, align 4
  %651 = load i32, i32* @FORMAT_EXPANDTIME, align 4
  %652 = and i32 %650, %651
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %661

654:                                              ; preds = %649
  %655 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %656 = load i8*, i8** %23, align 8
  %657 = call i8* @format_expand_time(%struct.format_tree* %655, i8* %656)
  store i8* %657, i8** %22, align 8
  %658 = load i8*, i8** %23, align 8
  %659 = call i32 @free(i8* %658)
  %660 = load i8*, i8** %22, align 8
  store i8* %660, i8** %23, align 8
  br label %661

661:                                              ; preds = %654, %649
  br label %662

662:                                              ; preds = %661, %642
  %663 = load %struct.format_modifier*, %struct.format_modifier** %34, align 8
  %664 = icmp ne %struct.format_modifier* %663, null
  br i1 %664, label %665, label %697

665:                                              ; preds = %662
  %666 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %667 = load %struct.format_modifier*, %struct.format_modifier** %34, align 8
  %668 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %667, i32 0, i32 2
  %669 = load i8**, i8*** %668, align 8
  %670 = getelementptr inbounds i8*, i8** %669, i64 0
  %671 = load i8*, i8** %670, align 8
  %672 = call i8* @format_expand(%struct.format_tree* %666, i8* %671)
  store i8* %672, i8** %24, align 8
  %673 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %674 = load %struct.format_modifier*, %struct.format_modifier** %34, align 8
  %675 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %674, i32 0, i32 2
  %676 = load i8**, i8*** %675, align 8
  %677 = getelementptr inbounds i8*, i8** %676, i64 1
  %678 = load i8*, i8** %677, align 8
  %679 = call i8* @format_expand(%struct.format_tree* %673, i8* %678)
  store i8* %679, i8** %25, align 8
  %680 = load %struct.format_modifier*, %struct.format_modifier** %34, align 8
  %681 = load i8*, i8** %23, align 8
  %682 = load i8*, i8** %24, align 8
  %683 = load i8*, i8** %25, align 8
  %684 = call i8* @format_sub(%struct.format_modifier* %680, i8* %681, i8* %682, i8* %683)
  store i8* %684, i8** %22, align 8
  %685 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %686 = load i8*, i8** %24, align 8
  %687 = load i8*, i8** %25, align 8
  %688 = load i8*, i8** %22, align 8
  %689 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %685, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* %686, i8* %687, i8* %688)
  %690 = load i8*, i8** %23, align 8
  %691 = call i32 @free(i8* %690)
  %692 = load i8*, i8** %22, align 8
  store i8* %692, i8** %23, align 8
  %693 = load i8*, i8** %25, align 8
  %694 = call i32 @free(i8* %693)
  %695 = load i8*, i8** %24, align 8
  %696 = call i32 @free(i8* %695)
  br label %697

697:                                              ; preds = %665, %662
  %698 = load i32, i32* %28, align 4
  %699 = icmp sgt i32 %698, 0
  br i1 %699, label %700, label %726

700:                                              ; preds = %697
  %701 = load i8*, i8** %23, align 8
  %702 = load i32, i32* %28, align 4
  %703 = call i8* @format_trim_left(i8* %701, i32 %702)
  store i8* %703, i8** %22, align 8
  %704 = load i8*, i8** %18, align 8
  %705 = icmp ne i8* %704, null
  br i1 %705, label %706, label %717

706:                                              ; preds = %700
  %707 = load i8*, i8** %22, align 8
  %708 = load i8*, i8** %23, align 8
  %709 = call i64 @strcmp(i8* %707, i8* %708)
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %717

711:                                              ; preds = %706
  %712 = load i8*, i8** %23, align 8
  %713 = call i32 @free(i8* %712)
  %714 = load i8*, i8** %22, align 8
  %715 = load i8*, i8** %18, align 8
  %716 = call i32 @xasprintf(i8** %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* %714, i8* %715)
  br label %721

717:                                              ; preds = %706, %700
  %718 = load i8*, i8** %23, align 8
  %719 = call i32 @free(i8* %718)
  %720 = load i8*, i8** %22, align 8
  store i8* %720, i8** %23, align 8
  br label %721

721:                                              ; preds = %717, %711
  %722 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %723 = load i32, i32* %28, align 4
  %724 = load i8*, i8** %23, align 8
  %725 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %722, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i32 %723, i8* %724)
  br label %757

726:                                              ; preds = %697
  %727 = load i32, i32* %28, align 4
  %728 = icmp slt i32 %727, 0
  br i1 %728, label %729, label %756

729:                                              ; preds = %726
  %730 = load i8*, i8** %23, align 8
  %731 = load i32, i32* %28, align 4
  %732 = sub nsw i32 0, %731
  %733 = call i8* @format_trim_right(i8* %730, i32 %732)
  store i8* %733, i8** %22, align 8
  %734 = load i8*, i8** %18, align 8
  %735 = icmp ne i8* %734, null
  br i1 %735, label %736, label %747

736:                                              ; preds = %729
  %737 = load i8*, i8** %22, align 8
  %738 = load i8*, i8** %23, align 8
  %739 = call i64 @strcmp(i8* %737, i8* %738)
  %740 = icmp ne i64 %739, 0
  br i1 %740, label %741, label %747

741:                                              ; preds = %736
  %742 = load i8*, i8** %23, align 8
  %743 = call i32 @free(i8* %742)
  %744 = load i8*, i8** %18, align 8
  %745 = load i8*, i8** %22, align 8
  %746 = call i32 @xasprintf(i8** %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* %744, i8* %745)
  br label %751

747:                                              ; preds = %736, %729
  %748 = load i8*, i8** %23, align 8
  %749 = call i32 @free(i8* %748)
  %750 = load i8*, i8** %22, align 8
  store i8* %750, i8** %23, align 8
  br label %751

751:                                              ; preds = %747, %741
  %752 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %753 = load i32, i32* %28, align 4
  %754 = load i8*, i8** %23, align 8
  %755 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %752, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i32 %753, i8* %754)
  br label %756

756:                                              ; preds = %751, %726
  br label %757

757:                                              ; preds = %756, %721
  %758 = load i8*, i8** %23, align 8
  %759 = call i64 @strlen(i8* %758)
  store i64 %759, i64* %26, align 8
  br label %760

760:                                              ; preds = %769, %757
  %761 = load i64*, i64** %12, align 8
  %762 = load i64, i64* %761, align 8
  %763 = load i64*, i64** %13, align 8
  %764 = load i64, i64* %763, align 8
  %765 = sub i64 %762, %764
  %766 = load i64, i64* %26, align 8
  %767 = add i64 %766, 1
  %768 = icmp ult i64 %765, %767
  br i1 %768, label %769, label %779

769:                                              ; preds = %760
  %770 = load i8**, i8*** %11, align 8
  %771 = load i8*, i8** %770, align 8
  %772 = load i64*, i64** %12, align 8
  %773 = load i64, i64* %772, align 8
  %774 = call i8* @xreallocarray(i8* %771, i32 2, i64 %773)
  %775 = load i8**, i8*** %11, align 8
  store i8* %774, i8** %775, align 8
  %776 = load i64*, i64** %12, align 8
  %777 = load i64, i64* %776, align 8
  %778 = mul i64 %777, 2
  store i64 %778, i64* %776, align 8
  br label %760

779:                                              ; preds = %760
  %780 = load i8**, i8*** %11, align 8
  %781 = load i8*, i8** %780, align 8
  %782 = load i64*, i64** %13, align 8
  %783 = load i64, i64* %782, align 8
  %784 = getelementptr inbounds i8, i8* %781, i64 %783
  %785 = load i8*, i8** %23, align 8
  %786 = load i64, i64* %26, align 8
  %787 = call i32 @memcpy(i8* %784, i8* %785, i64 %786)
  %788 = load i64, i64* %26, align 8
  %789 = load i64*, i64** %13, align 8
  %790 = load i64, i64* %789, align 8
  %791 = add i64 %790, %788
  store i64 %791, i64* %789, align 8
  %792 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %793 = load i8*, i8** %19, align 8
  %794 = load i8*, i8** %23, align 8
  %795 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %792, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %793, i8* %794)
  %796 = load i8*, i8** %23, align 8
  %797 = call i32 @free(i8* %796)
  %798 = load %struct.format_modifier*, %struct.format_modifier** %30, align 8
  %799 = load i64, i64* %36, align 8
  %800 = call i32 @format_free_modifiers(%struct.format_modifier* %798, i64 %799)
  %801 = load i8*, i8** %19, align 8
  %802 = call i32 @free(i8* %801)
  store i32 0, i32* %7, align 4
  br label %812

803:                                              ; preds = %578, %522, %325, %287, %274, %261
  %804 = load %struct.format_tree*, %struct.format_tree** %8, align 8
  %805 = load i8*, i8** %19, align 8
  %806 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %804, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %805)
  %807 = load %struct.format_modifier*, %struct.format_modifier** %30, align 8
  %808 = load i64, i64* %36, align 8
  %809 = call i32 @format_free_modifiers(%struct.format_modifier* %807, i64 %808)
  %810 = load i8*, i8** %19, align 8
  %811 = call i32 @free(i8* %810)
  store i32 -1, i32* %7, align 4
  br label %812

812:                                              ; preds = %803, %779
  %813 = load i32, i32* %7, align 4
  ret i32 %813
}

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local %struct.format_modifier* @format_build_modifiers(%struct.format_tree*, i8**, i64*) #1

declare dso_local i64 @format_logging(%struct.format_tree*) #1

declare dso_local i32 @format_log(%struct.format_tree*, i8*, ...) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @format_loop_sessions(%struct.format_tree*, i8*) #1

declare dso_local i8* @format_loop_windows(%struct.format_tree*, i8*) #1

declare dso_local i8* @format_loop_panes(%struct.format_tree*, i8*) #1

declare dso_local i8* @format_expand(%struct.format_tree*, i8*) #1

declare dso_local i8* @format_search(%struct.format_modifier*, %struct.window_pane*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @format_choose(%struct.format_tree*, i8*, i8**, i8**, i32) #1

declare dso_local i64 @format_true(i8*) #1

declare dso_local i8* @format_match(%struct.format_modifier*, i8*, i8*) #1

declare dso_local i8* @format_skip(i8*, i8*) #1

declare dso_local i8* @format_find(%struct.format_tree*, i8*, i32) #1

declare dso_local i8* @format_expand_time(%struct.format_tree*, i8*) #1

declare dso_local i8* @format_sub(%struct.format_modifier*, i8*, i8*, i8*) #1

declare dso_local i8* @format_trim_left(i8*, i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i8* @format_trim_right(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xreallocarray(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @format_free_modifiers(%struct.format_modifier*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
