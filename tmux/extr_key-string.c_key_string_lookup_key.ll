; ModuleID = '/home/carl/AnghaBench/tmux/extr_key-string.c_key_string_lookup_key.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_key-string.c_key_string_lookup_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.utf8_data = type { i64, i32 }

@key_string_lookup_key.out = internal global [32 x i8] zeroinitializer, align 16
@KEYC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@KEYC_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@KEYC_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"Any\00", align 1
@KEYC_FOCUS_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"FocusIn\00", align 1
@KEYC_FOCUS_OUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"FocusOut\00", align 1
@KEYC_PASTE_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"PasteStart\00", align 1
@KEYC_PASTE_END = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"PasteEnd\00", align 1
@KEYC_MOUSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@KEYC_DRAGGING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"Dragging\00", align 1
@KEYC_MOUSEMOVE_PANE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"MouseMovePane\00", align 1
@KEYC_MOUSEMOVE_STATUS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"MouseMoveStatus\00", align 1
@KEYC_MOUSEMOVE_STATUS_LEFT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"MouseMoveStatusLeft\00", align 1
@KEYC_MOUSEMOVE_STATUS_RIGHT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"MouseMoveStatusRight\00", align 1
@KEYC_MOUSEMOVE_BORDER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"MouseMoveBorder\00", align 1
@KEYC_USER = common dso_local global i32 0, align 4
@KEYC_NUSER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"User%u\00", align 1
@KEYC_LITERAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@KEYC_MASK_KEY = common dso_local global i32 0, align 4
@KEYC_CTRL = common dso_local global i8 0, align 1
@KEYC_MASK_MOD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"C-\00", align 1
@KEYC_ESCAPE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"M-\00", align 1
@KEYC_SHIFT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"S-\00", align 1
@key_string_table = common dso_local global %struct.TYPE_3__* null, align 8
@KEYC_BASE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"Invalid#%llx\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"C-%c\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\\%llo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @key_string_lookup_key(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.utf8_data, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), align 16
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @KEYC_NONE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %251

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @KEYC_UNKNOWN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %251

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @KEYC_ANY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %251

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @KEYC_FOCUS_IN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %251

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @KEYC_FOCUS_OUT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %251

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @KEYC_PASTE_START, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %251

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @KEYC_PASTE_END, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %251

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @KEYC_MOUSE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %251

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @KEYC_DRAGGING, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %251

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @KEYC_MOUSEMOVE_PANE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %251

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @KEYC_MOUSEMOVE_STATUS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %251

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @KEYC_MOUSEMOVE_STATUS_LEFT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %251

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @KEYC_MOUSEMOVE_STATUS_RIGHT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %251

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @KEYC_MOUSEMOVE_BORDER, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %251

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @KEYC_USER, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @KEYC_USER, align 4
  %84 = load i32, i32* @KEYC_NUSER, align 4
  %85 = add nsw i32 %83, %84
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @KEYC_USER, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %90)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8** %2, align 8
  br label %251

92:                                               ; preds = %81, %77
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @KEYC_LITERAL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, 255
  %100 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %99)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8** %2, align 8
  br label %251

101:                                              ; preds = %92
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @KEYC_MASK_KEY, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i8, i8* @KEYC_CTRL, align 1
  %108 = sext i8 %107 to i32
  %109 = or i32 32, %108
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @KEYC_MASK_MOD, align 4
  %112 = and i32 %110, %111
  %113 = or i32 %109, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %106, %101
  %115 = load i32, i32* %3, align 4
  %116 = load i8, i8* @KEYC_CTRL, align 1
  %117 = sext i8 %116 to i32
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 @strlcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 32)
  br label %122

122:                                              ; preds = %120, %114
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @KEYC_ESCAPE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 @strlcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 32)
  br label %129

129:                                              ; preds = %127, %122
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @KEYC_SHIFT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 @strlcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 32)
  br label %136

136:                                              ; preds = %134, %129
  %137 = load i32, i32* @KEYC_MASK_KEY, align 4
  %138 = load i32, i32* %3, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %156, %136
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @key_string_table, align 8
  %143 = call i32 @nitems(%struct.TYPE_3__* %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load i32, i32* %3, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @key_string_table, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %146, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %159

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %140

159:                                              ; preds = %154, %140
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** @key_string_table, align 8
  %162 = call i32 @nitems(%struct.TYPE_3__* %161)
  %163 = icmp ne i32 %160, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** @key_string_table, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strlcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8* %170, i32 32)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8** %2, align 8
  br label %251

172:                                              ; preds = %159
  %173 = load i32, i32* %3, align 4
  %174 = icmp sgt i32 %173, 127
  br i1 %174, label %175, label %199

175:                                              ; preds = %172
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @KEYC_BASE, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %199

179:                                              ; preds = %175
  %180 = load i32, i32* %3, align 4
  %181 = call i64 @utf8_split(i32 %180, %struct.utf8_data* %6)
  %182 = load i64, i64* @UTF8_DONE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %179
  %185 = call i64 @strlen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0))
  store i64 %185, i64* %7, align 8
  %186 = load i64, i64* %7, align 8
  %187 = getelementptr inbounds i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i64 %186
  %188 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %6, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %6, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @memcpy(i8* %187, i32 %189, i64 %191)
  %193 = load i64, i64* %7, align 8
  %194 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %6, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %193, %195
  %197 = getelementptr inbounds [32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 %196
  store i8 0, i8* %197, align 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8** %2, align 8
  br label %251

198:                                              ; preds = %179
  br label %199

199:                                              ; preds = %198, %175, %172
  %200 = load i32, i32* %3, align 4
  %201 = icmp eq i32 %200, 127
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %3, align 4
  %204 = icmp sgt i32 %203, 255
  br i1 %204, label %205, label %208

205:                                              ; preds = %202, %199
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %206)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8** %2, align 8
  br label %251

208:                                              ; preds = %202
  %209 = load i32, i32* %3, align 4
  %210 = icmp sle i32 %209, 32
  br i1 %210, label %211, label %228

211:                                              ; preds = %208
  %212 = load i32, i32* %3, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* %3, align 4
  %216 = icmp sgt i32 %215, 26
  br i1 %216, label %217, label %222

217:                                              ; preds = %214, %211
  %218 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %219 = load i32, i32* %3, align 4
  %220 = add nsw i32 64, %219
  %221 = call i32 @xsnprintf(i8* %218, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %220)
  br label %227

222:                                              ; preds = %214
  %223 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %224 = load i32, i32* %3, align 4
  %225 = add nsw i32 96, %224
  %226 = call i32 @xsnprintf(i8* %223, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %222, %217
  br label %248

228:                                              ; preds = %208
  %229 = load i32, i32* %3, align 4
  %230 = icmp sge i32 %229, 32
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load i32, i32* %3, align 4
  %233 = icmp sle i32 %232, 126
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load i32, i32* %3, align 4
  %236 = trunc i32 %235 to i8
  %237 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  store i8 %236, i8* %237, align 1
  %238 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 1
  store i8 0, i8* %238, align 1
  br label %247

239:                                              ; preds = %231, %228
  %240 = load i32, i32* %3, align 4
  %241 = icmp sge i32 %240, 128
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @xsnprintf(i8* %243, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %242, %239
  br label %247

247:                                              ; preds = %246, %234
  br label %248

248:                                              ; preds = %247, %227
  %249 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %250 = call i32 @strlcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8* %249, i32 32)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @key_string_lookup_key.out, i64 0, i64 0), i8** %2, align 8
  br label %251

251:                                              ; preds = %248, %205, %184, %164, %97, %87, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16, %11
  %252 = load i8*, i8** %2, align 8
  ret i8* %252
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @utf8_split(i32, %struct.utf8_data*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
