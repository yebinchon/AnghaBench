; ModuleID = '/home/carl/AnghaBench/tmux/extr_style.c_style_parse.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_style.c_style_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.style = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.grid_cell = type { i32, i32, i32, i32 }

@__const.style_parse.delimiters = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"push-default\00", align 1
@STYLE_DEFAULT_PUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"pop-default\00", align 1
@STYLE_DEFAULT_POP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"nolist\00", align 1
@STYLE_LIST_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"list=\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@STYLE_LIST_ON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@STYLE_LIST_FOCUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"left-marker\00", align 1
@STYLE_LIST_LEFT_MARKER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"right-marker\00", align 1
@STYLE_LIST_RIGHT_MARKER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"norange\00", align 1
@style_default = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"range=\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@STYLE_RANGE_LEFT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@STYLE_RANGE_RIGHT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@STYLE_RANGE_WINDOW = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"noalign\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"align=\00", align 1
@STYLE_ALIGN_LEFT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"centre\00", align 1
@STYLE_ALIGN_CENTRE = common dso_local global i32 0, align 4
@STYLE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"fill=\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"g=\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @style_parse(%struct.style* %0, %struct.grid_cell* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.style*, align 8
  %6 = alloca %struct.grid_cell*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.style, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.style* %0, %struct.style** %5, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = bitcast [3 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.style_parse.delimiters, i32 0, i32 0), i64 3, i1 false)
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %463

21:                                               ; preds = %3
  %22 = load %struct.style*, %struct.style** %5, align 8
  %23 = call i32 @style_copy(%struct.style* %8, %struct.style* %22)
  br label %24

24:                                               ; preds = %454, %21
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i8* @strchr(i8* %31, i8 signext %33)
  %35 = icmp ne i8* %34, null
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  br label %25

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %459

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %50 = call i64 @strcspn(i8* %48, i8* %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ugt i64 %51, 255
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %460

54:                                               ; preds = %47
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %59
  store i8 0, i8* %60, align 1
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %62 = call i64 @strcasecmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %54
  %65 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %66 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.style*, %struct.style** %5, align 8
  %69 = getelementptr inbounds %struct.style, %struct.style* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %72 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.style*, %struct.style** %5, align 8
  %75 = getelementptr inbounds %struct.style, %struct.style* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %78 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.style*, %struct.style** %5, align 8
  %81 = getelementptr inbounds %struct.style, %struct.style* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %84 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.style*, %struct.style** %5, align 8
  %87 = getelementptr inbounds %struct.style, %struct.style* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  br label %444

89:                                               ; preds = %54
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %91 = call i64 @strcasecmp(i8* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @STYLE_DEFAULT_PUSH, align 4
  %95 = load %struct.style*, %struct.style** %5, align 8
  %96 = getelementptr inbounds %struct.style, %struct.style* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  br label %443

97:                                               ; preds = %89
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %99 = call i64 @strcasecmp(i8* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* @STYLE_DEFAULT_POP, align 4
  %103 = load %struct.style*, %struct.style** %5, align 8
  %104 = getelementptr inbounds %struct.style, %struct.style* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  br label %442

105:                                              ; preds = %97
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %107 = call i64 @strcasecmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* @STYLE_LIST_OFF, align 4
  %111 = load %struct.style*, %struct.style** %5, align 8
  %112 = getelementptr inbounds %struct.style, %struct.style* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %441

113:                                              ; preds = %105
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %115 = call i64 @strncasecmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %119 = getelementptr inbounds i8, i8* %118, i64 5
  %120 = call i64 @strcasecmp(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @STYLE_LIST_ON, align 4
  %124 = load %struct.style*, %struct.style** %5, align 8
  %125 = getelementptr inbounds %struct.style, %struct.style* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  br label %157

126:                                              ; preds = %117
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %128 = getelementptr inbounds i8, i8* %127, i64 5
  %129 = call i64 @strcasecmp(i8* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @STYLE_LIST_FOCUS, align 4
  %133 = load %struct.style*, %struct.style** %5, align 8
  %134 = getelementptr inbounds %struct.style, %struct.style* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  br label %156

135:                                              ; preds = %126
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %137 = getelementptr inbounds i8, i8* %136, i64 5
  %138 = call i64 @strcasecmp(i8* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @STYLE_LIST_LEFT_MARKER, align 4
  %142 = load %struct.style*, %struct.style** %5, align 8
  %143 = getelementptr inbounds %struct.style, %struct.style* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  br label %155

144:                                              ; preds = %135
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %146 = getelementptr inbounds i8, i8* %145, i64 5
  %147 = call i64 @strcasecmp(i8* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @STYLE_LIST_RIGHT_MARKER, align 4
  %151 = load %struct.style*, %struct.style** %5, align 8
  %152 = getelementptr inbounds %struct.style, %struct.style* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  br label %154

153:                                              ; preds = %144
  br label %460

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154, %140
  br label %156

156:                                              ; preds = %155, %131
  br label %157

157:                                              ; preds = %156, %122
  br label %440

158:                                              ; preds = %113
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %160 = call i64 @strcasecmp(i8* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @style_default, i32 0, i32 1), align 4
  %164 = load %struct.style*, %struct.style** %5, align 8
  %165 = getelementptr inbounds %struct.style, %struct.style* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @style_default, i32 0, i32 1), align 4
  %167 = load %struct.style*, %struct.style** %5, align 8
  %168 = getelementptr inbounds %struct.style, %struct.style* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  br label %439

169:                                              ; preds = %158
  %170 = load i64, i64* %14, align 8
  %171 = icmp ugt i64 %170, 6
  br i1 %171, label %172, label %259

172:                                              ; preds = %169
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %174 = call i64 @strncasecmp(i8* %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %259

176:                                              ; preds = %172
  %177 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %178 = getelementptr inbounds i8, i8* %177, i64 6
  %179 = call i8* @strchr(i8* %178, i8 signext 124)
  store i8* %179, i8** %12, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %209

182:                                              ; preds = %176
  %183 = load i8*, i8** %12, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %12, align 8
  store i8 0, i8* %183, align 1
  %185 = load i8*, i8** %12, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %460

190:                                              ; preds = %182
  %191 = load i8*, i8** %12, align 8
  store i8* %191, i8** %10, align 8
  br label %192

192:                                              ; preds = %205, %190
  %193 = load i8*, i8** %10, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %192
  %198 = load i8*, i8** %10, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = call i32 @isdigit(i32 %200) #4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  br label %460

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204
  %206 = load i8*, i8** %10, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %10, align 8
  br label %192

208:                                              ; preds = %192
  br label %209

209:                                              ; preds = %208, %176
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %211 = getelementptr inbounds i8, i8* %210, i64 6
  %212 = call i64 @strcasecmp(i8* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %209
  %215 = load i8*, i8** %12, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  br label %460

218:                                              ; preds = %214
  %219 = load i32, i32* @STYLE_RANGE_LEFT, align 4
  %220 = load %struct.style*, %struct.style** %5, align 8
  %221 = getelementptr inbounds %struct.style, %struct.style* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 4
  %222 = load %struct.style*, %struct.style** %5, align 8
  %223 = getelementptr inbounds %struct.style, %struct.style* %222, i32 0, i32 3
  store i32 0, i32* %223, align 4
  br label %258

224:                                              ; preds = %209
  %225 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %226 = getelementptr inbounds i8, i8* %225, i64 6
  %227 = call i64 @strcasecmp(i8* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load i8*, i8** %12, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  br label %460

233:                                              ; preds = %229
  %234 = load i32, i32* @STYLE_RANGE_RIGHT, align 4
  %235 = load %struct.style*, %struct.style** %5, align 8
  %236 = getelementptr inbounds %struct.style, %struct.style* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 4
  %237 = load %struct.style*, %struct.style** %5, align 8
  %238 = getelementptr inbounds %struct.style, %struct.style* %237, i32 0, i32 3
  store i32 0, i32* %238, align 4
  br label %257

239:                                              ; preds = %224
  %240 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %241 = getelementptr inbounds i8, i8* %240, i64 6
  %242 = call i64 @strcasecmp(i8* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %239
  %245 = load i8*, i8** %12, align 8
  %246 = icmp eq i8* %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  br label %460

248:                                              ; preds = %244
  %249 = load i32, i32* @STYLE_RANGE_WINDOW, align 4
  %250 = load %struct.style*, %struct.style** %5, align 8
  %251 = getelementptr inbounds %struct.style, %struct.style* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 4
  %252 = load i8*, i8** %12, align 8
  %253 = call i32 @atoi(i8* %252)
  %254 = load %struct.style*, %struct.style** %5, align 8
  %255 = getelementptr inbounds %struct.style, %struct.style* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %248, %239
  br label %257

257:                                              ; preds = %256, %233
  br label %258

258:                                              ; preds = %257, %218
  br label %438

259:                                              ; preds = %172, %169
  %260 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %261 = call i64 @strcasecmp(i8* %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @style_default, i32 0, i32 0), align 4
  %265 = load %struct.style*, %struct.style** %5, align 8
  %266 = getelementptr inbounds %struct.style, %struct.style* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 4
  br label %437

267:                                              ; preds = %259
  %268 = load i64, i64* %14, align 8
  %269 = icmp ugt i64 %268, 6
  br i1 %269, label %270, label %305

270:                                              ; preds = %267
  %271 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %272 = call i64 @strncasecmp(i8* %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 6)
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %305

274:                                              ; preds = %270
  %275 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %276 = getelementptr inbounds i8, i8* %275, i64 6
  %277 = call i64 @strcasecmp(i8* %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load i32, i32* @STYLE_ALIGN_LEFT, align 4
  %281 = load %struct.style*, %struct.style** %5, align 8
  %282 = getelementptr inbounds %struct.style, %struct.style* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 4
  br label %304

283:                                              ; preds = %274
  %284 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %285 = getelementptr inbounds i8, i8* %284, i64 6
  %286 = call i64 @strcasecmp(i8* %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %283
  %289 = load i32, i32* @STYLE_ALIGN_CENTRE, align 4
  %290 = load %struct.style*, %struct.style** %5, align 8
  %291 = getelementptr inbounds %struct.style, %struct.style* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  br label %303

292:                                              ; preds = %283
  %293 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %294 = getelementptr inbounds i8, i8* %293, i64 6
  %295 = call i64 @strcasecmp(i8* %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load i32, i32* @STYLE_ALIGN_RIGHT, align 4
  %299 = load %struct.style*, %struct.style** %5, align 8
  %300 = getelementptr inbounds %struct.style, %struct.style* %299, i32 0, i32 2
  store i32 %298, i32* %300, align 4
  br label %302

301:                                              ; preds = %292
  br label %460

302:                                              ; preds = %297
  br label %303

303:                                              ; preds = %302, %288
  br label %304

304:                                              ; preds = %303, %279
  br label %436

305:                                              ; preds = %270, %267
  %306 = load i64, i64* %14, align 8
  %307 = icmp ugt i64 %306, 5
  br i1 %307, label %308, label %322

308:                                              ; preds = %305
  %309 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %310 = call i64 @strncasecmp(i8* %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 5)
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %308
  %313 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %314 = getelementptr inbounds i8, i8* %313, i64 5
  %315 = call i32 @colour_fromstring(i8* %314)
  store i32 %315, i32* %13, align 4
  %316 = icmp eq i32 %315, -1
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %460

318:                                              ; preds = %312
  %319 = load i32, i32* %13, align 4
  %320 = load %struct.style*, %struct.style** %5, align 8
  %321 = getelementptr inbounds %struct.style, %struct.style* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 4
  br label %435

322:                                              ; preds = %308, %305
  %323 = load i64, i64* %14, align 8
  %324 = icmp ugt i64 %323, 3
  br i1 %324, label %325, label %391

325:                                              ; preds = %322
  %326 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %327 = getelementptr inbounds i8, i8* %326, i64 1
  %328 = call i64 @strncasecmp(i8* %327, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 2)
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %391

330:                                              ; preds = %325
  %331 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %332 = getelementptr inbounds i8, i8* %331, i64 3
  %333 = call i32 @colour_fromstring(i8* %332)
  store i32 %333, i32* %13, align 4
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  br label %460

336:                                              ; preds = %330
  %337 = load i8*, i8** %7, align 8
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 %339, 102
  br i1 %340, label %346, label %341

341:                                              ; preds = %336
  %342 = load i8*, i8** %7, align 8
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp eq i32 %344, 70
  br i1 %345, label %346, label %362

346:                                              ; preds = %341, %336
  %347 = load i32, i32* %13, align 4
  %348 = icmp ne i32 %347, 8
  br i1 %348, label %349, label %354

349:                                              ; preds = %346
  %350 = load i32, i32* %13, align 4
  %351 = load %struct.style*, %struct.style** %5, align 8
  %352 = getelementptr inbounds %struct.style, %struct.style* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 0
  store i32 %350, i32* %353, align 4
  br label %361

354:                                              ; preds = %346
  %355 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %356 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.style*, %struct.style** %5, align 8
  %359 = getelementptr inbounds %struct.style, %struct.style* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 0
  store i32 %357, i32* %360, align 4
  br label %361

361:                                              ; preds = %354, %349
  br label %390

362:                                              ; preds = %341
  %363 = load i8*, i8** %7, align 8
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp eq i32 %365, 98
  br i1 %366, label %372, label %367

367:                                              ; preds = %362
  %368 = load i8*, i8** %7, align 8
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp eq i32 %370, 66
  br i1 %371, label %372, label %388

372:                                              ; preds = %367, %362
  %373 = load i32, i32* %13, align 4
  %374 = icmp ne i32 %373, 8
  br i1 %374, label %375, label %380

375:                                              ; preds = %372
  %376 = load i32, i32* %13, align 4
  %377 = load %struct.style*, %struct.style** %5, align 8
  %378 = getelementptr inbounds %struct.style, %struct.style* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 1
  store i32 %376, i32* %379, align 4
  br label %387

380:                                              ; preds = %372
  %381 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %382 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.style*, %struct.style** %5, align 8
  %385 = getelementptr inbounds %struct.style, %struct.style* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 1
  store i32 %383, i32* %386, align 4
  br label %387

387:                                              ; preds = %380, %375
  br label %389

388:                                              ; preds = %367
  br label %460

389:                                              ; preds = %387
  br label %390

390:                                              ; preds = %389, %361
  br label %434

391:                                              ; preds = %325, %322
  %392 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %393 = call i64 @strcasecmp(i8* %392, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %391
  %396 = load %struct.style*, %struct.style** %5, align 8
  %397 = getelementptr inbounds %struct.style, %struct.style* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 2
  store i32 0, i32* %398, align 4
  br label %433

399:                                              ; preds = %391
  %400 = load i64, i64* %14, align 8
  %401 = icmp ugt i64 %400, 2
  br i1 %401, label %402, label %420

402:                                              ; preds = %399
  %403 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %404 = call i64 @strncasecmp(i8* %403, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 2)
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %420

406:                                              ; preds = %402
  %407 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %408 = getelementptr inbounds i8, i8* %407, i64 2
  %409 = call i32 @attributes_fromstring(i8* %408)
  store i32 %409, i32* %13, align 4
  %410 = icmp eq i32 %409, -1
  br i1 %410, label %411, label %412

411:                                              ; preds = %406
  br label %460

412:                                              ; preds = %406
  %413 = load i32, i32* %13, align 4
  %414 = xor i32 %413, -1
  %415 = load %struct.style*, %struct.style** %5, align 8
  %416 = getelementptr inbounds %struct.style, %struct.style* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %418, %414
  store i32 %419, i32* %417, align 4
  br label %432

420:                                              ; preds = %402, %399
  %421 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %422 = call i32 @attributes_fromstring(i8* %421)
  store i32 %422, i32* %13, align 4
  %423 = icmp eq i32 %422, -1
  br i1 %423, label %424, label %425

424:                                              ; preds = %420
  br label %460

425:                                              ; preds = %420
  %426 = load i32, i32* %13, align 4
  %427 = load %struct.style*, %struct.style** %5, align 8
  %428 = getelementptr inbounds %struct.style, %struct.style* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = or i32 %430, %426
  store i32 %431, i32* %429, align 4
  br label %432

432:                                              ; preds = %425, %412
  br label %433

433:                                              ; preds = %432, %395
  br label %434

434:                                              ; preds = %433, %390
  br label %435

435:                                              ; preds = %434, %318
  br label %436

436:                                              ; preds = %435, %304
  br label %437

437:                                              ; preds = %436, %263
  br label %438

438:                                              ; preds = %437, %258
  br label %439

439:                                              ; preds = %438, %162
  br label %440

440:                                              ; preds = %439, %157
  br label %441

441:                                              ; preds = %440, %109
  br label %442

442:                                              ; preds = %441, %101
  br label %443

443:                                              ; preds = %442, %93
  br label %444

444:                                              ; preds = %443, %64
  %445 = load i64, i64* %14, align 8
  %446 = load i8*, i8** %7, align 8
  %447 = load i64, i64* %14, align 8
  %448 = getelementptr inbounds i8, i8* %446, i64 %447
  %449 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %450 = call i64 @strspn(i8* %448, i8* %449)
  %451 = add i64 %445, %450
  %452 = load i8*, i8** %7, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 %451
  store i8* %453, i8** %7, align 8
  br label %454

454:                                              ; preds = %444
  %455 = load i8*, i8** %7, align 8
  %456 = load i8, i8* %455, align 1
  %457 = sext i8 %456 to i32
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %24, label %459

459:                                              ; preds = %454, %46
  store i32 0, i32* %4, align 4
  br label %463

460:                                              ; preds = %424, %411, %388, %335, %317, %301, %247, %232, %217, %203, %189, %153, %53
  %461 = load %struct.style*, %struct.style** %5, align 8
  %462 = call i32 @style_copy(%struct.style* %461, %struct.style* %8)
  store i32 -1, i32* %4, align 4
  br label %463

463:                                              ; preds = %460, %459, %20
  %464 = load i32, i32* %4, align 4
  ret i32 %464
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @style_copy(%struct.style*, %struct.style*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #3

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @colour_fromstring(i8*) #2

declare dso_local i32 @attributes_fromstring(i8*) #2

declare dso_local i64 @strspn(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
