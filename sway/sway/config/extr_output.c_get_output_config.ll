; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c_get_output_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c_get_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.output_config** }
%struct.output_config = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sway_output = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"%s on %s\00", align 1
@config = common dso_local global %struct.TYPE_7__* null, align 8
@output_name_cmp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [114 x i8] c"Generated output config \22%s\22 (enabled: %d) (%dx%d@%fHz position %d,%d scale %f transform %d) (bg %s %s) (dpms %d)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.output_config* (i8*, %struct.sway_output*)* @get_output_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.output_config* @get_output_config(i8* %0, %struct.sway_output* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.output_config*, align 8
  %7 = alloca %struct.output_config*, align 8
  %8 = alloca %struct.output_config*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.output_config*, align 8
  %13 = alloca %struct.output_config*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sway_output* %1, %struct.sway_output** %4, align 8
  %14 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %15 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  store %struct.output_config* null, %struct.output_config** %6, align 8
  store %struct.output_config* null, %struct.output_config** %7, align 8
  store %struct.output_config* null, %struct.output_config** %8, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i8* @malloc(i64 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* @output_name_cmp, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @list_seq_find(%struct.TYPE_5__* %33, i32 %34, i8* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.output_config**, %struct.output_config*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.output_config*, %struct.output_config** %44, i64 %46
  %48 = load %struct.output_config*, %struct.output_config** %47, align 8
  store %struct.output_config* %48, %struct.output_config** %6, align 8
  br label %88

49:                                               ; preds = %2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* @output_name_cmp, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @list_seq_find(%struct.TYPE_5__* %52, i32 %53, i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.output_config**, %struct.output_config*** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.output_config*, %struct.output_config** %63, i64 %65
  %67 = load %struct.output_config*, %struct.output_config** %66, align 8
  store %struct.output_config* %67, %struct.output_config** %7, align 8
  br label %68

68:                                               ; preds = %58, %49
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* @output_name_cmp, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @list_seq_find(%struct.TYPE_5__* %71, i32 %72, i8* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.output_config**, %struct.output_config*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.output_config*, %struct.output_config** %82, i64 %84
  %86 = load %struct.output_config*, %struct.output_config** %85, align 8
  store %struct.output_config* %86, %struct.output_config** %8, align 8
  br label %87

87:                                               ; preds = %77, %68
  br label %88

88:                                               ; preds = %87, %39
  %89 = call %struct.output_config* @new_output_config(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.output_config* %89, %struct.output_config** %12, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.output_config*, %struct.output_config** %12, align 8
  %96 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %97 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i32 @default_output_config(%struct.output_config* %95, %struct.TYPE_6__* %98)
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.output_config*, %struct.output_config** %6, align 8
  %102 = icmp ne %struct.output_config* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load %struct.output_config*, %struct.output_config** %12, align 8
  %105 = getelementptr inbounds %struct.output_config, %struct.output_config* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i8*, i8** %10, align 8
  %109 = call i8* @strdup(i8* %108)
  %110 = load %struct.output_config*, %struct.output_config** %12, align 8
  %111 = getelementptr inbounds %struct.output_config, %struct.output_config* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.output_config*, %struct.output_config** %12, align 8
  %113 = load %struct.output_config*, %struct.output_config** %6, align 8
  %114 = call i32 @merge_output_config(%struct.output_config* %112, %struct.output_config* %113)
  br label %254

115:                                              ; preds = %100
  %116 = load %struct.output_config*, %struct.output_config** %7, align 8
  %117 = icmp ne %struct.output_config* %116, null
  br i1 %117, label %118, label %184

118:                                              ; preds = %115
  %119 = load %struct.output_config*, %struct.output_config** %8, align 8
  %120 = icmp ne %struct.output_config* %119, null
  br i1 %120, label %121, label %184

121:                                              ; preds = %118
  %122 = load i8*, i8** %10, align 8
  %123 = call %struct.output_config* @new_output_config(i8* %122)
  store %struct.output_config* %123, %struct.output_config** %13, align 8
  %124 = load %struct.output_config*, %struct.output_config** %13, align 8
  %125 = load %struct.output_config*, %struct.output_config** %7, align 8
  %126 = call i32 @merge_output_config(%struct.output_config* %124, %struct.output_config* %125)
  %127 = load %struct.output_config*, %struct.output_config** %13, align 8
  %128 = load %struct.output_config*, %struct.output_config** %8, align 8
  %129 = call i32 @merge_output_config(%struct.output_config* %127, %struct.output_config* %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load %struct.output_config*, %struct.output_config** %13, align 8
  %134 = call i32 @list_add(%struct.TYPE_5__* %132, %struct.output_config* %133)
  %135 = load %struct.output_config*, %struct.output_config** %12, align 8
  %136 = getelementptr inbounds %struct.output_config, %struct.output_config* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load i8*, i8** %10, align 8
  %140 = call i8* @strdup(i8* %139)
  %141 = load %struct.output_config*, %struct.output_config** %12, align 8
  %142 = getelementptr inbounds %struct.output_config, %struct.output_config* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.output_config*, %struct.output_config** %12, align 8
  %144 = load %struct.output_config*, %struct.output_config** %13, align 8
  %145 = call i32 @merge_output_config(%struct.output_config* %143, %struct.output_config* %144)
  %146 = load i32, i32* @SWAY_DEBUG, align 4
  %147 = load %struct.output_config*, %struct.output_config** %12, align 8
  %148 = getelementptr inbounds %struct.output_config, %struct.output_config* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.output_config*, %struct.output_config** %12, align 8
  %151 = getelementptr inbounds %struct.output_config, %struct.output_config* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.output_config*, %struct.output_config** %12, align 8
  %154 = getelementptr inbounds %struct.output_config, %struct.output_config* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.output_config*, %struct.output_config** %12, align 8
  %157 = getelementptr inbounds %struct.output_config, %struct.output_config* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.output_config*, %struct.output_config** %12, align 8
  %160 = getelementptr inbounds %struct.output_config, %struct.output_config* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.output_config*, %struct.output_config** %12, align 8
  %163 = getelementptr inbounds %struct.output_config, %struct.output_config* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.output_config*, %struct.output_config** %12, align 8
  %166 = getelementptr inbounds %struct.output_config, %struct.output_config* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.output_config*, %struct.output_config** %12, align 8
  %169 = getelementptr inbounds %struct.output_config, %struct.output_config* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.output_config*, %struct.output_config** %12, align 8
  %172 = getelementptr inbounds %struct.output_config, %struct.output_config* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.output_config*, %struct.output_config** %12, align 8
  %175 = getelementptr inbounds %struct.output_config, %struct.output_config* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.output_config*, %struct.output_config** %12, align 8
  %178 = getelementptr inbounds %struct.output_config, %struct.output_config* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.output_config*, %struct.output_config** %12, align 8
  %181 = getelementptr inbounds %struct.output_config, %struct.output_config* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @sway_log(i32 %146, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i8* %149, i32 %152, i32 %155, i32 %158, i32 %161, i32 %164, i32 %167, i32 %170, i32 %173, i32 %176, i32 %179, i32 %182)
  br label %253

184:                                              ; preds = %118, %115
  %185 = load %struct.output_config*, %struct.output_config** %7, align 8
  %186 = icmp ne %struct.output_config* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load %struct.output_config*, %struct.output_config** %12, align 8
  %189 = getelementptr inbounds %struct.output_config, %struct.output_config* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i8*, i8** %5, align 8
  %193 = call i8* @strdup(i8* %192)
  %194 = load %struct.output_config*, %struct.output_config** %12, align 8
  %195 = getelementptr inbounds %struct.output_config, %struct.output_config* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  %196 = load %struct.output_config*, %struct.output_config** %12, align 8
  %197 = load %struct.output_config*, %struct.output_config** %7, align 8
  %198 = call i32 @merge_output_config(%struct.output_config* %196, %struct.output_config* %197)
  br label %252

199:                                              ; preds = %184
  %200 = load %struct.output_config*, %struct.output_config** %8, align 8
  %201 = icmp ne %struct.output_config* %200, null
  br i1 %201, label %202, label %214

202:                                              ; preds = %199
  %203 = load %struct.output_config*, %struct.output_config** %12, align 8
  %204 = getelementptr inbounds %struct.output_config, %struct.output_config* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @free(i8* %205)
  %207 = load i8*, i8** %3, align 8
  %208 = call i8* @strdup(i8* %207)
  %209 = load %struct.output_config*, %struct.output_config** %12, align 8
  %210 = getelementptr inbounds %struct.output_config, %struct.output_config* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = load %struct.output_config*, %struct.output_config** %12, align 8
  %212 = load %struct.output_config*, %struct.output_config** %8, align 8
  %213 = call i32 @merge_output_config(%struct.output_config* %211, %struct.output_config* %212)
  br label %251

214:                                              ; preds = %199
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = load i32, i32* @output_name_cmp, align 4
  %219 = call i32 @list_seq_find(%struct.TYPE_5__* %217, i32 %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %241

222:                                              ; preds = %214
  %223 = load %struct.output_config*, %struct.output_config** %12, align 8
  %224 = getelementptr inbounds %struct.output_config, %struct.output_config* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @free(i8* %225)
  %227 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %228 = load %struct.output_config*, %struct.output_config** %12, align 8
  %229 = getelementptr inbounds %struct.output_config, %struct.output_config* %228, i32 0, i32 0
  store i8* %227, i8** %229, align 8
  %230 = load %struct.output_config*, %struct.output_config** %12, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load %struct.output_config**, %struct.output_config*** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.output_config*, %struct.output_config** %235, i64 %237
  %239 = load %struct.output_config*, %struct.output_config** %238, align 8
  %240 = call i32 @merge_output_config(%struct.output_config* %230, %struct.output_config* %239)
  br label %250

241:                                              ; preds = %214
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %241
  %247 = load %struct.output_config*, %struct.output_config** %12, align 8
  %248 = call i32 @free_output_config(%struct.output_config* %247)
  store %struct.output_config* null, %struct.output_config** %12, align 8
  br label %249

249:                                              ; preds = %246, %241
  br label %250

250:                                              ; preds = %249, %222
  br label %251

251:                                              ; preds = %250, %202
  br label %252

252:                                              ; preds = %251, %187
  br label %253

253:                                              ; preds = %252, %121
  br label %254

254:                                              ; preds = %253, %103
  %255 = load i8*, i8** %10, align 8
  %256 = call i32 @free(i8* %255)
  %257 = load %struct.output_config*, %struct.output_config** %12, align 8
  ret %struct.output_config* %257
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @list_seq_find(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local %struct.output_config* @new_output_config(i8*) #1

declare dso_local i32 @default_output_config(%struct.output_config*, %struct.TYPE_6__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @merge_output_config(%struct.output_config*, %struct.output_config*) #1

declare dso_local i32 @list_add(%struct.TYPE_5__*, %struct.output_config*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_output_config(%struct.output_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
