; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_ipc_parse_colors.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_ipc_parse_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_config = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"statusline\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"focused_background\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"focused_statusline\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"focused_separator\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"focused_workspace_border\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"focused_workspace_bg\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"focused_workspace_text\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"active_workspace_border\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"active_workspace_bg\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"active_workspace_text\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"inactive_workspace_border\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"inactive_workspace_bg\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"inactive_workspace_text\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"urgent_workspace_border\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"urgent_workspace_bg\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"urgent_workspace_text\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"binding_mode_border\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"binding_mode_bg\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"binding_mode_text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaybar_config*, i32*)* @ipc_parse_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_parse_colors(%struct.swaybar_config* %0, i32* %1) #0 {
  %3 = alloca %struct.swaybar_config*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store %struct.swaybar_config* %0, %struct.swaybar_config** %3, align 8
  store i32* %1, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @json_object_object_get_ex(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32** %5)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @json_object_object_get_ex(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32** %6)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @json_object_object_get_ex(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32** %7)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @json_object_object_get_ex(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32** %8)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @json_object_object_get_ex(i32* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32** %9)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @json_object_object_get_ex(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32** %10)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @json_object_object_get_ex(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32** %11)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @json_object_object_get_ex(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32** %12)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @json_object_object_get_ex(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32** %13)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @json_object_object_get_ex(i32* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32** %17)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @json_object_object_get_ex(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32** %18)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @json_object_object_get_ex(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32** %19)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @json_object_object_get_ex(i32* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32** %14)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @json_object_object_get_ex(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32** %15)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @json_object_object_get_ex(i32* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32** %16)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @json_object_object_get_ex(i32* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32** %20)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @json_object_object_get_ex(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32** %21)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @json_object_object_get_ex(i32* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32** %22)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @json_object_object_get_ex(i32* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32** %23)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @json_object_object_get_ex(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32** %24)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @json_object_object_get_ex(i32* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32** %25)
  %68 = load i32*, i32** %5, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %2
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @json_object_get_string(i32* %71)
  %73 = call i8* @parse_color(i32 %72)
  %74 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %75 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 10
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %2
  %78 = load i32*, i32** %6, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @json_object_get_string(i32* %81)
  %83 = call i8* @parse_color(i32 %82)
  %84 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %85 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 9
  store i8* %83, i8** %86, align 8
  br label %87

87:                                               ; preds = %80, %77
  %88 = load i32*, i32** %7, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @json_object_get_string(i32* %91)
  %93 = call i8* @parse_color(i32 %92)
  %94 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %95 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 8
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %87
  %98 = load i32*, i32** %8, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @json_object_get_string(i32* %101)
  %103 = call i8* @parse_color(i32 %102)
  %104 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %105 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 7
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %100, %97
  %108 = load i32*, i32** %9, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @json_object_get_string(i32* %111)
  %113 = call i8* @parse_color(i32 %112)
  %114 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %115 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 6
  store i8* %113, i8** %116, align 8
  br label %117

117:                                              ; preds = %110, %107
  %118 = load i32*, i32** %10, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @json_object_get_string(i32* %121)
  %123 = call i8* @parse_color(i32 %122)
  %124 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %125 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 5
  store i8* %123, i8** %126, align 8
  br label %127

127:                                              ; preds = %120, %117
  %128 = load i32*, i32** %11, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @json_object_get_string(i32* %131)
  %133 = call i8* @parse_color(i32 %132)
  %134 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %135 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i8* %133, i8** %137, align 8
  br label %138

138:                                              ; preds = %130, %127
  %139 = load i32*, i32** %12, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @json_object_get_string(i32* %142)
  %144 = call i8* @parse_color(i32 %143)
  %145 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %146 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i8* %144, i8** %148, align 8
  br label %149

149:                                              ; preds = %141, %138
  %150 = load i32*, i32** %13, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @json_object_get_string(i32* %153)
  %155 = call i8* @parse_color(i32 %154)
  %156 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %157 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i8* %155, i8** %159, align 8
  br label %160

160:                                              ; preds = %152, %149
  %161 = load i32*, i32** %17, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load i32*, i32** %17, align 8
  %165 = call i32 @json_object_get_string(i32* %164)
  %166 = call i8* @parse_color(i32 %165)
  %167 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %168 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  store i8* %166, i8** %170, align 8
  br label %171

171:                                              ; preds = %163, %160
  %172 = load i32*, i32** %18, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load i32*, i32** %18, align 8
  %176 = call i32 @json_object_get_string(i32* %175)
  %177 = call i8* @parse_color(i32 %176)
  %178 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %179 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  store i8* %177, i8** %181, align 8
  br label %182

182:                                              ; preds = %174, %171
  %183 = load i32*, i32** %19, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i32*, i32** %19, align 8
  %187 = call i32 @json_object_get_string(i32* %186)
  %188 = call i8* @parse_color(i32 %187)
  %189 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %190 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  store i8* %188, i8** %192, align 8
  br label %193

193:                                              ; preds = %185, %182
  %194 = load i32*, i32** %14, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = load i32*, i32** %14, align 8
  %198 = call i32 @json_object_get_string(i32* %197)
  %199 = call i8* @parse_color(i32 %198)
  %200 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %201 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  store i8* %199, i8** %203, align 8
  br label %204

204:                                              ; preds = %196, %193
  %205 = load i32*, i32** %15, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load i32*, i32** %15, align 8
  %209 = call i32 @json_object_get_string(i32* %208)
  %210 = call i8* @parse_color(i32 %209)
  %211 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %212 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  store i8* %210, i8** %214, align 8
  br label %215

215:                                              ; preds = %207, %204
  %216 = load i32*, i32** %16, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = load i32*, i32** %16, align 8
  %220 = call i32 @json_object_get_string(i32* %219)
  %221 = call i8* @parse_color(i32 %220)
  %222 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %223 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  store i8* %221, i8** %225, align 8
  br label %226

226:                                              ; preds = %218, %215
  %227 = load i32*, i32** %20, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load i32*, i32** %20, align 8
  %231 = call i32 @json_object_get_string(i32* %230)
  %232 = call i8* @parse_color(i32 %231)
  %233 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %234 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 2
  store i8* %232, i8** %236, align 8
  br label %237

237:                                              ; preds = %229, %226
  %238 = load i32*, i32** %21, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load i32*, i32** %21, align 8
  %242 = call i32 @json_object_get_string(i32* %241)
  %243 = call i8* @parse_color(i32 %242)
  %244 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %245 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  store i8* %243, i8** %247, align 8
  br label %248

248:                                              ; preds = %240, %237
  %249 = load i32*, i32** %22, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %259

251:                                              ; preds = %248
  %252 = load i32*, i32** %22, align 8
  %253 = call i32 @json_object_get_string(i32* %252)
  %254 = call i8* @parse_color(i32 %253)
  %255 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %256 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  store i8* %254, i8** %258, align 8
  br label %259

259:                                              ; preds = %251, %248
  %260 = load i32*, i32** %23, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %270

262:                                              ; preds = %259
  %263 = load i32*, i32** %23, align 8
  %264 = call i32 @json_object_get_string(i32* %263)
  %265 = call i8* @parse_color(i32 %264)
  %266 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %267 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 2
  store i8* %265, i8** %269, align 8
  br label %270

270:                                              ; preds = %262, %259
  %271 = load i32*, i32** %24, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %281

273:                                              ; preds = %270
  %274 = load i32*, i32** %24, align 8
  %275 = call i32 @json_object_get_string(i32* %274)
  %276 = call i8* @parse_color(i32 %275)
  %277 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %278 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  store i8* %276, i8** %280, align 8
  br label %281

281:                                              ; preds = %273, %270
  %282 = load i32*, i32** %25, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %292

284:                                              ; preds = %281
  %285 = load i32*, i32** %25, align 8
  %286 = call i32 @json_object_get_string(i32* %285)
  %287 = call i8* @parse_color(i32 %286)
  %288 = load %struct.swaybar_config*, %struct.swaybar_config** %3, align 8
  %289 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  store i8* %287, i8** %291, align 8
  br label %292

292:                                              ; preds = %284, %281
  ret void
}

declare dso_local i32 @json_object_object_get_ex(i32*, i8*, i32**) #1

declare dso_local i8* @parse_color(i32) #1

declare dso_local i32 @json_object_get_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
