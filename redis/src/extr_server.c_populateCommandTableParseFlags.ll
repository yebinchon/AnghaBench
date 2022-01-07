; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_populateCommandTableParseFlags.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_populateCommandTableParseFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisCommand = type { i32 }

@C_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@CMD_WRITE = common dso_local global i32 0, align 4
@CMD_CATEGORY_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@CMD_READONLY = common dso_local global i32 0, align 4
@CMD_CATEGORY_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"use-memory\00", align 1
@CMD_DENYOOM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@CMD_ADMIN = common dso_local global i32 0, align 4
@CMD_CATEGORY_ADMIN = common dso_local global i32 0, align 4
@CMD_CATEGORY_DANGEROUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"pub-sub\00", align 1
@CMD_PUBSUB = common dso_local global i32 0, align 4
@CMD_CATEGORY_PUBSUB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"no-script\00", align 1
@CMD_NOSCRIPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@CMD_RANDOM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"to-sort\00", align 1
@CMD_SORT_FOR_SCRIPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"ok-loading\00", align 1
@CMD_LOADING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"ok-stale\00", align 1
@CMD_STALE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"no-monitor\00", align 1
@CMD_SKIP_MONITOR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"no-slowlog\00", align 1
@CMD_SKIP_SLOWLOG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"cluster-asking\00", align 1
@CMD_ASKING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@CMD_FAST = common dso_local global i32 0, align 4
@CMD_CATEGORY_FAST = common dso_local global i32 0, align 4
@CMD_CATEGORY_SLOW = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @populateCommandTableParseFlags(%struct.redisCommand* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.redisCommand*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.redisCommand* %0, %struct.redisCommand** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8** @sdssplitargs(i8* %11, i32* %6)
  store i8** %12, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp eq i8** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @C_ERR, align 4
  store i32 %16, i32* %3, align 4
  br label %237

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %216, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %219

22:                                               ; preds = %18
  %23 = load i8**, i8*** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @CMD_WRITE, align 4
  %33 = load i32, i32* @CMD_CATEGORY_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %36 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %215

39:                                               ; preds = %22
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @CMD_READONLY, align 4
  %45 = load i32, i32* @CMD_CATEGORY_READ, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %48 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %214

51:                                               ; preds = %39
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @strcasecmp(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @CMD_DENYOOM, align 4
  %57 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %58 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %213

61:                                               ; preds = %51
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strcasecmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @CMD_ADMIN, align 4
  %67 = load i32, i32* @CMD_CATEGORY_ADMIN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CMD_CATEGORY_DANGEROUS, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %72 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %212

75:                                               ; preds = %61
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @strcasecmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @CMD_PUBSUB, align 4
  %81 = load i32, i32* @CMD_CATEGORY_PUBSUB, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %84 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %211

87:                                               ; preds = %75
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @strcasecmp(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @CMD_NOSCRIPT, align 4
  %93 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %94 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %210

97:                                               ; preds = %87
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @CMD_RANDOM, align 4
  %103 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %104 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %209

107:                                              ; preds = %97
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @strcasecmp(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @CMD_SORT_FOR_SCRIPT, align 4
  %113 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %114 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %208

117:                                              ; preds = %107
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @strcasecmp(i8* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @CMD_LOADING, align 4
  %123 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %124 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %207

127:                                              ; preds = %117
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @strcasecmp(i8* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @CMD_STALE, align 4
  %133 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %134 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %206

137:                                              ; preds = %127
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @strcasecmp(i8* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* @CMD_SKIP_MONITOR, align 4
  %143 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %144 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %205

147:                                              ; preds = %137
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 @strcasecmp(i8* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* @CMD_SKIP_SLOWLOG, align 4
  %153 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %154 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %204

157:                                              ; preds = %147
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @strcasecmp(i8* %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @CMD_ASKING, align 4
  %163 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %164 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %203

167:                                              ; preds = %157
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @strcasecmp(i8* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* @CMD_FAST, align 4
  %173 = load i32, i32* @CMD_CATEGORY_FAST, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %176 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %202

179:                                              ; preds = %167
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 64
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  %188 = call i32 @ACLGetCommandCategoryFlagByName(i8* %187)
  store i32 %188, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %193 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %201

196:                                              ; preds = %185, %179
  %197 = load i8**, i8*** %7, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @sdsfreesplitres(i8** %197, i32 %198)
  %200 = load i32, i32* @C_ERR, align 4
  store i32 %200, i32* %3, align 4
  br label %237

201:                                              ; preds = %190
  br label %202

202:                                              ; preds = %201, %171
  br label %203

203:                                              ; preds = %202, %161
  br label %204

204:                                              ; preds = %203, %151
  br label %205

205:                                              ; preds = %204, %141
  br label %206

206:                                              ; preds = %205, %131
  br label %207

207:                                              ; preds = %206, %121
  br label %208

208:                                              ; preds = %207, %111
  br label %209

209:                                              ; preds = %208, %101
  br label %210

210:                                              ; preds = %209, %91
  br label %211

211:                                              ; preds = %210, %79
  br label %212

212:                                              ; preds = %211, %65
  br label %213

213:                                              ; preds = %212, %55
  br label %214

214:                                              ; preds = %213, %43
  br label %215

215:                                              ; preds = %214, %31
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %18

219:                                              ; preds = %18
  %220 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %221 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @CMD_CATEGORY_FAST, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %219
  %227 = load i32, i32* @CMD_CATEGORY_SLOW, align 4
  %228 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %229 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %226, %219
  %233 = load i8**, i8*** %7, align 8
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @sdsfreesplitres(i8** %233, i32 %234)
  %236 = load i32, i32* @C_OK, align 4
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %232, %196, %15
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i8** @sdssplitargs(i8*, i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @ACLGetCommandCategoryFlagByName(i8*) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
