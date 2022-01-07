; ModuleID = '/home/carl/AnghaBench/tmux/extr_style.c_style_tostring.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_style.c_style_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.style = type { i64, i64, i32, i64, i64, i32, %struct.grid_cell }
%struct.grid_cell = type { i32, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@style_tostring.s = internal global [256 x i8] zeroinitializer, align 16
@STYLE_LIST_OFF = common dso_local global i64 0, align 8
@STYLE_LIST_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@STYLE_LIST_FOCUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@STYLE_LIST_LEFT_MARKER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"left-marker\00", align 1
@STYLE_LIST_RIGHT_MARKER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"right-marker\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%slist=%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@STYLE_RANGE_NONE = common dso_local global i64 0, align 8
@STYLE_RANGE_LEFT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@STYLE_RANGE_RIGHT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@STYLE_RANGE_WINDOW = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"window|%u\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%srange=%s\00", align 1
@STYLE_ALIGN_DEFAULT = common dso_local global i64 0, align 8
@STYLE_ALIGN_LEFT = common dso_local global i64 0, align 8
@STYLE_ALIGN_CENTRE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"centre\00", align 1
@STYLE_ALIGN_RIGHT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"%salign=%s\00", align 1
@STYLE_DEFAULT_BASE = common dso_local global i64 0, align 8
@STYLE_DEFAULT_PUSH = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"push-default\00", align 1
@STYLE_DEFAULT_POP = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"pop-default\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%sfill=%s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%sfg=%s\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%sbg=%s\00", align 1
@GRID_ATTR_CHARSET = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @style_tostring(%struct.style* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.style*, align 8
  %4 = alloca %struct.grid_cell*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  store %struct.style* %0, %struct.style** %3, align 8
  %9 = load %struct.style*, %struct.style** %3, align 8
  %10 = getelementptr inbounds %struct.style, %struct.style* %9, i32 0, i32 6
  store %struct.grid_cell* %10, %struct.grid_cell** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), align 16
  %11 = load %struct.style*, %struct.style** %3, align 8
  %12 = getelementptr inbounds %struct.style, %struct.style* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STYLE_LIST_OFF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %1
  %17 = load %struct.style*, %struct.style** %3, align 8
  %18 = getelementptr inbounds %struct.style, %struct.style* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STYLE_LIST_ON, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %47

23:                                               ; preds = %16
  %24 = load %struct.style*, %struct.style** %3, align 8
  %25 = getelementptr inbounds %struct.style, %struct.style* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STYLE_LIST_FOCUS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %46

30:                                               ; preds = %23
  %31 = load %struct.style*, %struct.style** %3, align 8
  %32 = getelementptr inbounds %struct.style, %struct.style* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @STYLE_LIST_LEFT_MARKER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %45

37:                                               ; preds = %30
  %38 = load %struct.style*, %struct.style** %3, align 8
  %39 = getelementptr inbounds %struct.style, %struct.style* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STYLE_LIST_RIGHT_MARKER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i64 %49
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 256, %52
  %54 = trunc i64 %53 to i32
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @xsnprintf(i8* %50, i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %62

62:                                               ; preds = %47, %1
  %63 = load %struct.style*, %struct.style** %3, align 8
  %64 = getelementptr inbounds %struct.style, %struct.style* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @STYLE_RANGE_NONE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %62
  %69 = load %struct.style*, %struct.style** %3, align 8
  %70 = getelementptr inbounds %struct.style, %struct.style* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @STYLE_RANGE_LEFT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %97

75:                                               ; preds = %68
  %76 = load %struct.style*, %struct.style** %3, align 8
  %77 = getelementptr inbounds %struct.style, %struct.style* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @STYLE_RANGE_RIGHT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %96

82:                                               ; preds = %75
  %83 = load %struct.style*, %struct.style** %3, align 8
  %84 = getelementptr inbounds %struct.style, %struct.style* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @STYLE_RANGE_WINDOW, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %90 = load %struct.style*, %struct.style** %3, align 8
  %91 = getelementptr inbounds %struct.style, %struct.style* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @snprintf(i8* %89, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8* %94, i8** %7, align 8
  br label %95

95:                                               ; preds = %88, %82
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %96, %74
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i64 %99
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 256, %102
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i64 @xsnprintf(i8* %100, i32 %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %105, i8* %106)
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %112

112:                                              ; preds = %97, %62
  %113 = load %struct.style*, %struct.style** %3, align 8
  %114 = getelementptr inbounds %struct.style, %struct.style* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @STYLE_ALIGN_DEFAULT, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %156

118:                                              ; preds = %112
  %119 = load %struct.style*, %struct.style** %3, align 8
  %120 = getelementptr inbounds %struct.style, %struct.style* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @STYLE_ALIGN_LEFT, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %141

125:                                              ; preds = %118
  %126 = load %struct.style*, %struct.style** %3, align 8
  %127 = getelementptr inbounds %struct.style, %struct.style* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @STYLE_ALIGN_CENTRE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %140

132:                                              ; preds = %125
  %133 = load %struct.style*, %struct.style** %3, align 8
  %134 = getelementptr inbounds %struct.style, %struct.style* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @STYLE_ALIGN_RIGHT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %139

139:                                              ; preds = %138, %132
  br label %140

140:                                              ; preds = %139, %131
  br label %141

141:                                              ; preds = %140, %124
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i64 %143
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 256, %146
  %148 = trunc i64 %147 to i32
  %149 = load i8*, i8** %6, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @xsnprintf(i8* %144, i32 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %149, i8* %150)
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %156

156:                                              ; preds = %141, %112
  %157 = load %struct.style*, %struct.style** %3, align 8
  %158 = getelementptr inbounds %struct.style, %struct.style* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @STYLE_DEFAULT_BASE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %192

162:                                              ; preds = %156
  %163 = load %struct.style*, %struct.style** %3, align 8
  %164 = getelementptr inbounds %struct.style, %struct.style* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @STYLE_DEFAULT_PUSH, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %7, align 8
  br label %177

169:                                              ; preds = %162
  %170 = load %struct.style*, %struct.style** %3, align 8
  %171 = getelementptr inbounds %struct.style, %struct.style* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @STYLE_DEFAULT_POP, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %7, align 8
  br label %176

176:                                              ; preds = %175, %169
  br label %177

177:                                              ; preds = %176, %168
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i64 %179
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = sub i64 256, %182
  %184 = trunc i64 %183 to i32
  %185 = load i8*, i8** %6, align 8
  %186 = load i8*, i8** %7, align 8
  %187 = call i64 @xsnprintf(i8* %180, i32 %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %185, i8* %186)
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %192

192:                                              ; preds = %177, %156
  %193 = load %struct.style*, %struct.style** %3, align 8
  %194 = getelementptr inbounds %struct.style, %struct.style* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 8
  br i1 %196, label %197, label %215

197:                                              ; preds = %192
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i64 %199
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = sub i64 256, %202
  %204 = trunc i64 %203 to i32
  %205 = load i8*, i8** %6, align 8
  %206 = load %struct.style*, %struct.style** %3, align 8
  %207 = getelementptr inbounds %struct.style, %struct.style* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = call i8* @colour_tostring(i32 %208)
  %210 = call i64 @xsnprintf(i8* %200, i32 %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %205, i8* %209)
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %215

215:                                              ; preds = %197, %192
  %216 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %217 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 8
  br i1 %219, label %220, label %238

220:                                              ; preds = %215
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i64 %222
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = sub i64 256, %225
  %227 = trunc i64 %226 to i32
  %228 = load i8*, i8** %6, align 8
  %229 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %230 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @colour_tostring(i32 %231)
  %233 = call i64 @xsnprintf(i8* %223, i32 %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %228, i8* %232)
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %238

238:                                              ; preds = %220, %215
  %239 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %240 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 8
  br i1 %242, label %243, label %261

243:                                              ; preds = %238
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i64 %245
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = sub i64 256, %248
  %250 = trunc i64 %249 to i32
  %251 = load i8*, i8** %6, align 8
  %252 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %253 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i8* @colour_tostring(i32 %254)
  %256 = call i64 @xsnprintf(i8* %246, i32 %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* %251, i8* %255)
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %261

261:                                              ; preds = %243, %238
  %262 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %263 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %286

266:                                              ; preds = %261
  %267 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %268 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @GRID_ATTR_CHARSET, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %286

272:                                              ; preds = %266
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i64 %274
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = sub i64 256, %277
  %279 = trunc i64 %278 to i32
  %280 = load i8*, i8** %6, align 8
  %281 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %282 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = call i8* @attributes_tostring(i64 %283)
  %285 = call i64 @xsnprintf(i8* %275, i32 %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %280, i8* %284)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %286

286:                                              ; preds = %272, %266, %261
  %287 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), align 16
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %292

291:                                              ; preds = %286
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @style_tostring.s, i64 0, i64 0), i8** %2, align 8
  br label %292

292:                                              ; preds = %291, %290
  %293 = load i8*, i8** %2, align 8
  ret i8* %293
}

declare dso_local i64 @xsnprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @colour_tostring(i32) #1

declare dso_local i8* @attributes_tostring(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
