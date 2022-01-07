; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_cmd_bindsym_or_bindcode.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_cmd_bindsym_or_bindcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8** }
%struct.cmd_results = type { i32 }
%struct.sway_binding = type { i32, i32, i64, i64, i32, %struct.TYPE_14__*, i32, i8* }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"unbindcode\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unbindsym\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bindcode\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bindsym\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to allocate binding\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@XKB_LAYOUT_INVALID = common dso_local global i32 0, align 4
@BINDING_KEYCODE = common dso_local global i64 0, align 8
@BINDING_KEYSYM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"--release\00", align 1
@BINDING_RELEASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"--locked\00", align 1
@BINDING_LOCKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"--whole-window\00", align 1
@BINDING_BORDER = common dso_local global i32 0, align 4
@BINDING_CONTENTS = common dso_local global i32 0, align 4
@BINDING_TITLEBAR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"--border\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"--to-code\00", align 1
@BINDING_CODE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"--exclude-titlebar\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"--input-device=\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"--no-warn\00", align 1
@BINDING_MOUSECODE = common dso_local global i64 0, align 8
@BINDING_MOUSESYM = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [71 x i8] c"Invalid %s command (expected at least %d non-option arguments, got %d)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Only one group can be specified\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Invalid group\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Mode_switch\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Unable to allocate binding key\00", align 1
@key_qsort_cmp = common dso_local global i32 0, align 4
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [46 x i8] c"Unable to translate bindsym into bindcode: %s\00", align 1
@config = common dso_local global %struct.TYPE_15__* null, align 8
@binding_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**, i32, i32)* @cmd_bindsym_or_bindcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @cmd_bindsym_or_bindcode(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cmd_results*, align 8
  %13 = alloca %struct.sway_binding*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 2, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %11, align 4
  br label %38

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %33, %26
  store %struct.cmd_results* null, %struct.cmd_results** %12, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.cmd_results* @checkarg(i32 %39, i8* %40, i32 %41, i32 %42)
  store %struct.cmd_results* %43, %struct.cmd_results** %12, align 8
  %44 = icmp ne %struct.cmd_results* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load %struct.cmd_results*, %struct.cmd_results** %12, align 8
  store %struct.cmd_results* %46, %struct.cmd_results** %5, align 8
  br label %509

47:                                               ; preds = %38
  %48 = call i8* @calloc(i32 1, i32 56)
  %49 = bitcast i8* %48 to %struct.sway_binding*
  store %struct.sway_binding* %49, %struct.sway_binding** %13, align 8
  %50 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %51 = icmp ne %struct.sway_binding* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @CMD_FAILURE, align 4
  %54 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %54, %struct.cmd_results** %5, align 8
  br label %509

55:                                               ; preds = %47
  %56 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %58 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = call %struct.TYPE_14__* (...) @create_list()
  %60 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %61 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %60, i32 0, i32 5
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %61, align 8
  %62 = load i32, i32* @XKB_LAYOUT_INVALID, align 4
  %63 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %64 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %66 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %65, i32 0, i32 6
  store i32 0, i32* %66, align 8
  %67 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %68 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i64, i64* @BINDING_KEYCODE, align 8
  br label %75

73:                                               ; preds = %55
  %74 = load i64, i64* @BINDING_KEYSYM, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %78 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %79

79:                                               ; preds = %193, %75
  %80 = load i32, i32* %6, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %198

82:                                               ; preds = %79
  %83 = load i8**, i8*** %7, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* @BINDING_RELEASE, align 4
  %90 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %91 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %193

94:                                               ; preds = %82
  %95 = load i8**, i8*** %7, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32, i32* @BINDING_LOCKED, align 4
  %102 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %103 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %192

106:                                              ; preds = %94
  %107 = load i8**, i8*** %7, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load i32, i32* @BINDING_BORDER, align 4
  %114 = load i32, i32* @BINDING_CONTENTS, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @BINDING_TITLEBAR, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %119 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %191

122:                                              ; preds = %106
  %123 = load i8**, i8*** %7, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load i32, i32* @BINDING_BORDER, align 4
  %130 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %131 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %190

134:                                              ; preds = %122
  %135 = load i8**, i8*** %7, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @BINDING_CODE, align 4
  %145 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %146 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %140
  br label %189

150:                                              ; preds = %134
  %151 = load i8**, i8*** %7, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 1, i32* %14, align 4
  br label %188

157:                                              ; preds = %150
  %158 = load i8**, i8*** %7, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %162 = call i64 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %160, i32 %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  %165 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %166 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %165, i32 0, i32 7
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @free(i8* %167)
  %169 = load i8**, i8*** %7, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = call i8* @strdup(i8* %174)
  %176 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %177 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %176, i32 0, i32 7
  store i8* %175, i8** %177, align 8
  br label %187

178:                                              ; preds = %157
  %179 = load i8**, i8*** %7, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %181)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  store i32 0, i32* %15, align 4
  br label %186

185:                                              ; preds = %178
  br label %198

186:                                              ; preds = %184
  br label %187

187:                                              ; preds = %186, %164
  br label %188

188:                                              ; preds = %187, %156
  br label %189

189:                                              ; preds = %188, %149
  br label %190

190:                                              ; preds = %189, %128
  br label %191

191:                                              ; preds = %190, %112
  br label %192

192:                                              ; preds = %191, %100
  br label %193

193:                                              ; preds = %192, %88
  %194 = load i8**, i8*** %7, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i32 1
  store i8** %195, i8*** %7, align 8
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %6, align 4
  br label %79

198:                                              ; preds = %185, %79
  %199 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %200 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @BINDING_BORDER, align 4
  %203 = load i32, i32* @BINDING_CONTENTS, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @BINDING_TITLEBAR, align 4
  %206 = or i32 %204, %205
  %207 = and i32 %201, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %198
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %209, %198
  %213 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %214 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @BINDING_KEYCODE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load i64, i64* @BINDING_MOUSECODE, align 8
  br label %222

220:                                              ; preds = %212
  %221 = load i64, i64* @BINDING_MOUSESYM, align 8
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i64 [ %219, %218 ], [ %221, %220 ]
  %224 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %225 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %224, i32 0, i32 2
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %222, %209
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %11, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %232 = call i32 @free_sway_binding(%struct.sway_binding* %231)
  %233 = load i32, i32* @CMD_FAILURE, align 4
  %234 = load i8*, i8** %10, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %6, align 4
  %237 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %233, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.14, i64 0, i64 0), i8* %234, i32 %235, i32 %236)
  store %struct.cmd_results* %237, %struct.cmd_results** %5, align 8
  br label %509

238:                                              ; preds = %226
  %239 = load i8**, i8*** %7, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 0
  %241 = load i8*, i8** %240, align 8
  %242 = call %struct.TYPE_13__* @split_string(i8* %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_13__* %242, %struct.TYPE_13__** %16, align 8
  store i32 0, i32* %17, align 4
  br label %243

243:                                              ; preds = %397, %238
  %244 = load i32, i32* %17, align 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %400

249:                                              ; preds = %243
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = load i8**, i8*** %251, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %258 = call i64 @strncmp(i8* %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %257)
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %308

260:                                              ; preds = %249
  %261 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %262 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @XKB_LAYOUT_INVALID, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %260
  %267 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %268 = call i32 @free_sway_binding(%struct.sway_binding* %267)
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %270 = call i32 @list_free_items_and_destroy(%struct.TYPE_13__* %269)
  %271 = load i32, i32* @CMD_FAILURE, align 4
  %272 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %271, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  store %struct.cmd_results* %272, %struct.cmd_results** %5, align 8
  br label %509

273:                                              ; preds = %260
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i8**, i8*** %275, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  %284 = call i32 @strtol(i8* %283, i8** %18, i32 10)
  store i32 %284, i32* %19, align 4
  %285 = load i32, i32* %19, align 4
  %286 = icmp slt i32 %285, 1
  br i1 %286, label %296, label %287

287:                                              ; preds = %273
  %288 = load i32, i32* %19, align 4
  %289 = icmp sgt i32 %288, 4
  br i1 %289, label %296, label %290

290:                                              ; preds = %287
  %291 = load i8*, i8** %18, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 0
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %290, %287, %273
  %297 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %298 = call i32 @free_sway_binding(%struct.sway_binding* %297)
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %300 = call i32 @list_free_items_and_destroy(%struct.TYPE_13__* %299)
  %301 = load i32, i32* @CMD_FAILURE, align 4
  %302 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  store %struct.cmd_results* %302, %struct.cmd_results** %5, align 8
  br label %509

303:                                              ; preds = %290
  %304 = load i32, i32* %19, align 4
  %305 = sub nsw i32 %304, 1
  %306 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %307 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  br label %397

308:                                              ; preds = %249
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 1
  %311 = load i8**, i8*** %310, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %311, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = call i64 @strcmp(i8* %315, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %334

318:                                              ; preds = %308
  %319 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %320 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @XKB_LAYOUT_INVALID, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %318
  %325 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %326 = call i32 @free_sway_binding(%struct.sway_binding* %325)
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %328 = call i32 @list_free_items_and_destroy(%struct.TYPE_13__* %327)
  %329 = load i32, i32* @CMD_FAILURE, align 4
  %330 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %329, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  store %struct.cmd_results* %330, %struct.cmd_results** %5, align 8
  br label %509

331:                                              ; preds = %318
  %332 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %333 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %332, i32 0, i32 0
  store i32 1, i32* %333, align 8
  br label %334

334:                                              ; preds = %331, %308
  br label %335

335:                                              ; preds = %334
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 1
  %338 = load i8**, i8*** %337, align 8
  %339 = load i32, i32* %17, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  %342 = load i8*, i8** %341, align 8
  %343 = call i32 @get_modifier_mask_by_name(i8* %342)
  store i32 %343, i32* %20, align 4
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %335
  %346 = load i32, i32* %20, align 4
  %347 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %348 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 8
  br label %397

351:                                              ; preds = %335
  store i32 0, i32* %21, align 4
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 1
  %354 = load i8**, i8*** %353, align 8
  %355 = load i32, i32* %17, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8*, i8** %354, i64 %356
  %358 = load i8*, i8** %357, align 8
  %359 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %360 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %359, i32 0, i32 5
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp eq i64 %363, 0
  %365 = zext i1 %364 to i32
  %366 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %367 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %366, i32 0, i32 2
  %368 = call %struct.cmd_results* @identify_key(i8* %358, i32 %365, i32* %21, i64* %367)
  store %struct.cmd_results* %368, %struct.cmd_results** %12, align 8
  %369 = load %struct.cmd_results*, %struct.cmd_results** %12, align 8
  %370 = icmp ne %struct.cmd_results* %369, null
  br i1 %370, label %371, label %377

371:                                              ; preds = %351
  %372 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %373 = call i32 @free_sway_binding(%struct.sway_binding* %372)
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %375 = call i32 @list_free(%struct.TYPE_13__* %374)
  %376 = load %struct.cmd_results*, %struct.cmd_results** %12, align 8
  store %struct.cmd_results* %376, %struct.cmd_results** %5, align 8
  br label %509

377:                                              ; preds = %351
  %378 = call i8* @calloc(i32 1, i32 4)
  %379 = bitcast i8* %378 to i32*
  store i32* %379, i32** %22, align 8
  %380 = load i32*, i32** %22, align 8
  %381 = icmp ne i32* %380, null
  br i1 %381, label %389, label %382

382:                                              ; preds = %377
  %383 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %384 = call i32 @free_sway_binding(%struct.sway_binding* %383)
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %386 = call i32 @list_free_items_and_destroy(%struct.TYPE_13__* %385)
  %387 = load i32, i32* @CMD_FAILURE, align 4
  %388 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %387, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  store %struct.cmd_results* %388, %struct.cmd_results** %5, align 8
  br label %509

389:                                              ; preds = %377
  %390 = load i32, i32* %21, align 4
  %391 = load i32*, i32** %22, align 8
  store i32 %390, i32* %391, align 4
  %392 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %393 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %392, i32 0, i32 5
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %393, align 8
  %395 = load i32*, i32** %22, align 8
  %396 = call i32 @list_add(%struct.TYPE_14__* %394, i32* %395)
  br label %397

397:                                              ; preds = %389, %345, %303
  %398 = load i32, i32* %17, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %17, align 4
  br label %243

400:                                              ; preds = %243
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %402 = call i32 @list_free_items_and_destroy(%struct.TYPE_13__* %401)
  %403 = load i32, i32* %14, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %400
  %406 = load i32, i32* @BINDING_TITLEBAR, align 4
  %407 = xor i32 %406, -1
  %408 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %409 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, %407
  store i32 %411, i32* %409, align 4
  br label %431

412:                                              ; preds = %400
  %413 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %414 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @BINDING_MOUSECODE, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %424, label %418

418:                                              ; preds = %412
  %419 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %420 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @BINDING_MOUSESYM, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %430

424:                                              ; preds = %418, %412
  %425 = load i32, i32* @BINDING_TITLEBAR, align 4
  %426 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %427 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = or i32 %428, %425
  store i32 %429, i32* %427, align 4
  br label %430

430:                                              ; preds = %424, %418
  br label %431

431:                                              ; preds = %430, %405
  %432 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %433 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %432, i32 0, i32 5
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %433, align 8
  %435 = load i32, i32* @key_qsort_cmp, align 4
  %436 = call i32 @list_qsort(%struct.TYPE_14__* %434, i32 %435)
  %437 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %438 = call i32 @translate_binding(%struct.sway_binding* %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %446, label %440

440:                                              ; preds = %431
  %441 = load i32, i32* @SWAY_INFO, align 4
  %442 = load i8**, i8*** %7, align 8
  %443 = getelementptr inbounds i8*, i8** %442, i64 0
  %444 = load i8*, i8** %443, align 8
  %445 = call i32 @sway_log(i32 %441, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i8* %444)
  br label %446

446:                                              ; preds = %440, %431
  %447 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %448 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @BINDING_KEYCODE, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %458

452:                                              ; preds = %446
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** @config, align 8
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 2
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %456, align 8
  store %struct.TYPE_13__* %457, %struct.TYPE_13__** %23, align 8
  br label %477

458:                                              ; preds = %446
  %459 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %460 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %459, i32 0, i32 2
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @BINDING_KEYSYM, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %470

464:                                              ; preds = %458
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** @config, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 0
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_13__*, %struct.TYPE_13__** %468, align 8
  store %struct.TYPE_13__* %469, %struct.TYPE_13__** %23, align 8
  br label %476

470:                                              ; preds = %458
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** @config, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 0
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 0
  %475 = load %struct.TYPE_13__*, %struct.TYPE_13__** %474, align 8
  store %struct.TYPE_13__* %475, %struct.TYPE_13__** %23, align 8
  br label %476

476:                                              ; preds = %470, %464
  br label %477

477:                                              ; preds = %476, %452
  %478 = load i32, i32* %9, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %488

480:                                              ; preds = %477
  %481 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %482 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %483 = load i8*, i8** %10, align 8
  %484 = load i8**, i8*** %7, align 8
  %485 = getelementptr inbounds i8*, i8** %484, i64 0
  %486 = load i8*, i8** %485, align 8
  %487 = call %struct.cmd_results* @binding_remove(%struct.sway_binding* %481, %struct.TYPE_13__* %482, i8* %483, i8* %486)
  store %struct.cmd_results* %487, %struct.cmd_results** %5, align 8
  br label %509

488:                                              ; preds = %477
  %489 = load i8**, i8*** %7, align 8
  %490 = getelementptr inbounds i8*, i8** %489, i64 1
  %491 = load i32, i32* %6, align 4
  %492 = sub nsw i32 %491, 1
  %493 = call i32 @join_args(i8** %490, i32 %492)
  %494 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %495 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %494, i32 0, i32 4
  store i32 %493, i32* %495, align 8
  %496 = load i32, i32* @binding_order, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* @binding_order, align 4
  %498 = sext i32 %496 to i64
  %499 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %500 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %499, i32 0, i32 3
  store i64 %498, i64* %500, align 8
  %501 = load %struct.sway_binding*, %struct.sway_binding** %13, align 8
  %502 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %503 = load i8*, i8** %10, align 8
  %504 = load i8**, i8*** %7, align 8
  %505 = getelementptr inbounds i8*, i8** %504, i64 0
  %506 = load i8*, i8** %505, align 8
  %507 = load i32, i32* %15, align 4
  %508 = call %struct.cmd_results* @binding_add(%struct.sway_binding* %501, %struct.TYPE_13__* %502, i8* %503, i8* %506, i32 %507)
  store %struct.cmd_results* %508, %struct.cmd_results** %5, align 8
  br label %509

509:                                              ; preds = %488, %480, %382, %371, %324, %296, %266, %230, %52, %45
  %510 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  ret %struct.cmd_results* %510
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.TYPE_14__* @create_list(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_sway_binding(%struct.sway_binding*) #1

declare dso_local %struct.TYPE_13__* @split_string(i8*, i8*) #1

declare dso_local i32 @list_free_items_and_destroy(%struct.TYPE_13__*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @get_modifier_mask_by_name(i8*) #1

declare dso_local %struct.cmd_results* @identify_key(i8*, i32, i32*, i64*) #1

declare dso_local i32 @list_free(%struct.TYPE_13__*) #1

declare dso_local i32 @list_add(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @list_qsort(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @translate_binding(%struct.sway_binding*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local %struct.cmd_results* @binding_remove(%struct.sway_binding*, %struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @join_args(i8**, i32) #1

declare dso_local %struct.cmd_results* @binding_add(%struct.sway_binding*, %struct.TYPE_13__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
