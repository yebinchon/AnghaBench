; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliSendCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliSendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@REDIS_OK = common dso_local global i32 0, align 4
@context = common dso_local global i32* null, align 8
@REDIS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"lolwut\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"htstats\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"htstats-key\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"malloc-stats\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"subscribe\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"psubscribe\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"psync\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@OUTPUT_RAW = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [44 x i8] c"Reading messages... (press Ctrl-C to quit)\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"Entering replica output mode...  (press Ctrl-C to quit)\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i64)* @cliSendCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cliSendCommand(i32 %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %6, align 8
  %30 = call i32 @cliOutputHelp(i32 %27, i8** %29)
  %31 = load i32, i32* @REDIS_OK, align 4
  store i32 %31, i32* %4, align 4
  br label %353

32:                                               ; preds = %21, %3
  %33 = load i32*, i32** @context, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @REDIS_ERR, align 4
  store i32 %36, i32* %4, align 4
  br label %353

37:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %148

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %148

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i8**, i8*** %6, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %148

58:                                               ; preds = %52, %48, %45
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 2
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strcasecmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load i8**, i8*** %6, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcasecmp(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %148

71:                                               ; preds = %65, %61, %58
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strcasecmp(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcasecmp(i8* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %148

84:                                               ; preds = %78
  %85 = load i8**, i8*** %6, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcasecmp(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %148

90:                                               ; preds = %84, %74, %71
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @strcasecmp(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = load i8**, i8*** %6, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcasecmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %148

103:                                              ; preds = %97
  %104 = load i8**, i8*** %6, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcasecmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %103, %93, %90
  %110 = load i32, i32* %5, align 4
  %111 = icmp sge i32 %110, 2
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @strcasecmp(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load i8**, i8*** %6, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcasecmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %116, %112, %109
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @strcasecmp(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load i8**, i8*** %6, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcasecmp(i8* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %129, %125, %122
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @strcasecmp(i8* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %138
  %143 = load i8**, i8*** %6, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @strcasecmp(i8* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %142, %129, %116, %103, %97, %84, %78, %65, %52, %41, %37
  store i32 1, i32* %11, align 4
  br label %149

149:                                              ; preds = %148, %142, %138, %135
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @strcasecmp(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  br label %154

154:                                              ; preds = %153, %149
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @strcasecmp(i8* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  br label %159

159:                                              ; preds = %158, %154
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @strcasecmp(i8* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @strcasecmp(i8* %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163, %159
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  br label %168

168:                                              ; preds = %167, %163
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 @strcasecmp(i8* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @strcasecmp(i8* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172, %168
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  br label %177

177:                                              ; preds = %176, %172
  %178 = load i32, i32* %5, align 4
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %207

180:                                              ; preds = %177
  %181 = load i8**, i8*** %6, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strcasecmp(i8* %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %207, label %186

186:                                              ; preds = %180
  %187 = load i8**, i8*** %6, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strcasecmp(i8* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %207, label %192

192:                                              ; preds = %186
  %193 = load i8**, i8*** %6, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 2
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @strcasecmp(i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load i8**, i8*** %6, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @strcasecmp(i8* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %198, %192
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 4
  br label %206

205:                                              ; preds = %198
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 4
  br label %206

206:                                              ; preds = %205, %204
  br label %207

207:                                              ; preds = %206, %186, %180, %177
  %208 = load i8*, i8** %8, align 8
  %209 = call i32 @strcasecmp(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %215 = load i64, i64* @OUTPUT_RAW, align 8
  store i64 %215, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  br label %216

216:                                              ; preds = %214, %211, %207
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 %218, 8
  %220 = trunc i64 %219 to i32
  %221 = call i64* @zmalloc(i32 %220)
  store i64* %221, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %222

222:                                              ; preds = %237, %216
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %5, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %240

226:                                              ; preds = %222
  %227 = load i8**, i8*** %6, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @sdslen(i8* %231)
  %233 = load i64*, i64** %9, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  store i64 %232, i64* %236, align 8
  br label %237

237:                                              ; preds = %226
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %222

240:                                              ; preds = %222
  br label %241

241:                                              ; preds = %346, %240
  %242 = load i64, i64* %7, align 8
  %243 = icmp slt i64 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %241
  %245 = load i64, i64* %7, align 8
  %246 = add nsw i64 %245, -1
  store i64 %246, i64* %7, align 8
  %247 = icmp sgt i64 %245, 0
  br label %248

248:                                              ; preds = %244, %241
  %249 = phi i1 [ true, %241 ], [ %247, %244 ]
  br i1 %249, label %250, label %349

250:                                              ; preds = %248
  %251 = load i32*, i32** @context, align 8
  %252 = load i32, i32* %5, align 4
  %253 = load i8**, i8*** %6, align 8
  %254 = load i64*, i64** %9, align 8
  %255 = call i32 @redisAppendCommandArgv(i32* %251, i32 %252, i8** %253, i64* %254)
  br label %256

256:                                              ; preds = %266, %250
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %256
  %260 = load i32, i32* %11, align 4
  %261 = call i32 @cliReadReply(i32 %260)
  %262 = load i32, i32* @REDIS_OK, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = call i32 @exit(i32 1) #3
  unreachable

266:                                              ; preds = %259
  %267 = load i32, i32* @stdout, align 4
  %268 = call i32 @fflush(i32 %267)
  br label %256

269:                                              ; preds = %256
  %270 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %287

272:                                              ; preds = %269
  %273 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  %274 = load i64, i64* @OUTPUT_RAW, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %272
  %277 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %272
  br label %279

279:                                              ; preds = %278, %286
  %280 = load i32, i32* %11, align 4
  %281 = call i32 @cliReadReply(i32 %280)
  %282 = load i32, i32* @REDIS_OK, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = call i32 @exit(i32 1) #3
  unreachable

286:                                              ; preds = %279
  br label %279

287:                                              ; preds = %269
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %287
  %291 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0))
  %292 = call i32 (...) @slaveMode()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %293 = load i64*, i64** %9, align 8
  %294 = call i32 @zfree(i64* %293)
  %295 = load i32, i32* @REDIS_ERR, align 4
  store i32 %295, i32* %4, align 4
  br label %353

296:                                              ; preds = %287
  %297 = load i32, i32* %11, align 4
  %298 = call i32 @cliReadReply(i32 %297)
  %299 = load i32, i32* @REDIS_OK, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load i64*, i64** %9, align 8
  %303 = call i32 @zfree(i64* %302)
  %304 = load i32, i32* @REDIS_ERR, align 4
  store i32 %304, i32* %4, align 4
  br label %353

305:                                              ; preds = %296
  %306 = load i8*, i8** %8, align 8
  %307 = call i32 @strcasecmp(i8* %306, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %322, label %309

309:                                              ; preds = %305
  %310 = load i32, i32* %5, align 4
  %311 = icmp eq i32 %310, 2
  br i1 %311, label %312, label %322

312:                                              ; preds = %309
  %313 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 8
  %314 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = load i8**, i8*** %6, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i64 1
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @atoi(i8* %319)
  store i32 %320, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  %321 = call i32 (...) @cliRefreshPrompt()
  br label %335

322:                                              ; preds = %312, %309, %305
  %323 = load i8*, i8** %8, align 8
  %324 = call i32 @strcasecmp(i8* %323, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %334, label %326

326:                                              ; preds = %322
  %327 = load i32, i32* %5, align 4
  %328 = icmp eq i32 %327, 2
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %5, align 4
  %331 = icmp eq i32 %330, 3
  br i1 %331, label %332, label %334

332:                                              ; preds = %329, %326
  %333 = call i32 (...) @cliSelect()
  br label %334

334:                                              ; preds = %332, %329, %322
  br label %335

335:                                              ; preds = %334, %316
  br label %336

336:                                              ; preds = %335
  %337 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  br label %349

340:                                              ; preds = %336
  %341 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %345 = call i32 @usleep(i64 %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load i32, i32* @stdout, align 4
  %348 = call i32 @fflush(i32 %347)
  br label %241

349:                                              ; preds = %339, %248
  %350 = load i64*, i64** %9, align 8
  %351 = call i32 @zfree(i64* %350)
  %352 = load i32, i32* @REDIS_OK, align 4
  store i32 %352, i32* %4, align 4
  br label %353

353:                                              ; preds = %349, %301, %290, %35, %25
  %354 = load i32, i32* %4, align 4
  ret i32 %354
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @cliOutputHelp(i32, i8**) #1

declare dso_local i64* @zmalloc(i32) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @redisAppendCommandArgv(i32*, i32, i8**, i64*) #1

declare dso_local i32 @cliReadReply(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @slaveMode(...) #1

declare dso_local i32 @zfree(i64*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @cliRefreshPrompt(...) #1

declare dso_local i32 @cliSelect(...) #1

declare dso_local i32 @usleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
