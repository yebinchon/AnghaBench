; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_repl.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_repl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i64, i64, i64, i32, i32, i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@completionCallback = common dso_local global i32 0, align 4
@hintsCallback = common dso_local global i32 0, align 4
@freeHintsCallback = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@REDIS_CLI_HISTFILE_ENV = common dso_local global i32 0, align 4
@REDIS_CLI_HISTFILE_DEFAULT = common dso_local global i32 0, align 4
@context = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"not connected> \00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid redis-cli repeat command option value.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid argument(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@OUTPUT_RAW = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"Use 'restart' only in Lua debugging mode.\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@CC_FORCE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\0A(Lua debugging session ended%s)\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [32 x i8] c" -- dataset changes rolled back\00", align 1
@OUTPUT_STANDARD = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"(%.2fs)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @repl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repl() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* null, i8** %1, align 8
  store i32 0, i32* %2, align 4
  %11 = call i32 (...) @cliInitHelp()
  %12 = call i32 (...) @cliIntegrateHelp()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %13 = call i32 @linenoiseSetMultiLine(i32 1)
  %14 = load i32, i32* @completionCallback, align 4
  %15 = call i32 @linenoiseSetCompletionCallback(i32 %14)
  %16 = load i32, i32* @hintsCallback, align 4
  %17 = call i32 @linenoiseSetHintsCallback(i32 %16)
  %18 = load i32, i32* @freeHintsCallback, align 4
  %19 = call i32 @linenoiseSetFreeHintsCallback(i32 %18)
  %20 = load i32, i32* @stdin, align 4
  %21 = call i32 @fileno(i32 %20)
  %22 = call i64 @isatty(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %0
  %25 = load i32, i32* @REDIS_CLI_HISTFILE_ENV, align 4
  %26 = load i32, i32* @REDIS_CLI_HISTFILE_DEFAULT, align 4
  %27 = call i8* @getDotfilePath(i32 %25, i32 %26)
  store i8* %27, i8** %1, align 8
  store i32 1, i32* %2, align 4
  %28 = load i8*, i8** %1, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 @linenoiseHistoryLoad(i8* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = call i32 (...) @cliLoadPreferences()
  br label %35

35:                                               ; preds = %33, %0
  %36 = call i32 (...) @cliRefreshPrompt()
  br label %37

37:                                               ; preds = %258, %155, %126, %84, %35
  %38 = load i64, i64* @context, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i8* [ %41, %40 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %42 ]
  %45 = call i8* @linenoise(i8* %44)
  store i8* %45, i8** %3, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %261

47:                                               ; preds = %43
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %258

53:                                               ; preds = %47
  store i64 1, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i8** @cliSplitArgs(i8* %54, i32* %4)
  store i8** %55, i8*** %5, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %95

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %58
  store i64 0, i64* @errno, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strtol(i8* %64, i8** %8, i32 10)
  store i64 %65, i64* %6, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @ERANGE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @EINVAL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %6, align 8
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81, %77, %73
  %85 = load i32, i32* @stdout, align 4
  %86 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @sdsfreesplitres(i8** %87, i32 %88)
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 @linenoiseFree(i8* %90)
  br label %37

92:                                               ; preds = %81
  store i32 1, i32* %7, align 4
  br label %94

93:                                               ; preds = %68, %61
  store i64 1, i64* %6, align 8
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94, %58, %53
  %96 = load i8**, i8*** %5, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 0, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strcasecmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %101, %98, %95
  %111 = load i32, i32* %2, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @linenoiseHistoryAdd(i8* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i8*, i8** %1, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i8*, i8** %1, align 8
  %121 = call i32 @linenoiseHistorySave(i8* %120)
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %101
  %124 = load i8**, i8*** %5, align 8
  %125 = icmp eq i8** %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i8*, i8** %3, align 8
  %129 = call i32 @linenoiseFree(i8* %128)
  br label %37

130:                                              ; preds = %123
  %131 = load i32, i32* %4, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %253

133:                                              ; preds = %130
  %134 = load i8**, i8*** %5, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @strcasecmp(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strcasecmp(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139, %133
  %146 = call i32 @exit(i32 0) #3
  unreachable

147:                                              ; preds = %139
  %148 = load i8**, i8*** %5, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 58
  br i1 %154, label %155, label %164

155:                                              ; preds = %147
  %156 = load i8**, i8*** %5, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @cliSetPreferences(i8** %156, i32 %157, i32 1)
  %159 = load i8**, i8*** %5, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @sdsfreesplitres(i8** %159, i32 %160)
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 @linenoiseFree(i8* %162)
  br label %37

164:                                              ; preds = %147
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @strcasecmp(i8* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %174 = load i64, i64* @OUTPUT_RAW, align 8
  store i64 %174, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  ret void

175:                                              ; preds = %170
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175
  br label %250

178:                                              ; preds = %164
  %179 = load i32, i32* %4, align 4
  %180 = icmp eq i32 %179, 3
  br i1 %180, label %181, label %201

181:                                              ; preds = %178
  %182 = load i8**, i8*** %5, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strcasecmp(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %201, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 4
  %189 = call i32 @sdsfree(i32 %188)
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 1
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @sdsnew(i8* %192)
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 4
  %194 = load i8**, i8*** %5, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 2
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @atoi(i8* %196)
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  %198 = call i32 (...) @cliRefreshPrompt()
  %199 = load i32, i32* @CC_FORCE, align 4
  %200 = call i32 @cliConnect(i32 %199)
  br label %249

201:                                              ; preds = %181, %178
  %202 = load i32, i32* %4, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load i8**, i8*** %5, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i64 @strcasecmp(i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %204
  %211 = call i32 (...) @linenoiseClearScreen()
  br label %248

212:                                              ; preds = %204, %201
  %213 = call i64 (...) @mstime()
  store i64 %213, i64* %9, align 8
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i8**, i8*** %5, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i64, i64* %6, align 8
  %222 = call i32 @issueCommandRepeat(i32 %216, i8** %220, i64 %221)
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %212
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %226 = call i32 @cliReadReply(i32 0)
  %227 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %228 = icmp ne i64 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0)
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %225, %212
  %233 = call i64 (...) @mstime()
  %234 = load i64, i64* %9, align 8
  %235 = sub nsw i64 %233, %234
  store i64 %235, i64* %10, align 8
  %236 = load i64, i64* %10, align 8
  %237 = icmp sge i64 %236, 500
  br i1 %237, label %238, label %247

238:                                              ; preds = %232
  %239 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %240 = load i64, i64* @OUTPUT_STANDARD, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i64, i64* %10, align 8
  %244 = sitofp i64 %243 to double
  %245 = fdiv double %244, 1.000000e+03
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), double %245)
  br label %247

247:                                              ; preds = %242, %238, %232
  br label %248

248:                                              ; preds = %247, %210
  br label %249

249:                                              ; preds = %248, %187
  br label %250

250:                                              ; preds = %249, %177
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252, %130
  br label %254

254:                                              ; preds = %253
  %255 = load i8**, i8*** %5, align 8
  %256 = load i32, i32* %4, align 4
  %257 = call i32 @sdsfreesplitres(i8** %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %47
  %259 = load i8*, i8** %3, align 8
  %260 = call i32 @linenoiseFree(i8* %259)
  br label %37

261:                                              ; preds = %43
  %262 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @cliInitHelp(...) #1

declare dso_local i32 @cliIntegrateHelp(...) #1

declare dso_local i32 @linenoiseSetMultiLine(i32) #1

declare dso_local i32 @linenoiseSetCompletionCallback(i32) #1

declare dso_local i32 @linenoiseSetHintsCallback(i32) #1

declare dso_local i32 @linenoiseSetFreeHintsCallback(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i8* @getDotfilePath(i32, i32) #1

declare dso_local i32 @linenoiseHistoryLoad(i8*) #1

declare dso_local i32 @cliLoadPreferences(...) #1

declare dso_local i32 @cliRefreshPrompt(...) #1

declare dso_local i8* @linenoise(i8*) #1

declare dso_local i8** @cliSplitArgs(i8*, i32*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

declare dso_local i32 @linenoiseFree(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @linenoiseHistoryAdd(i8*) #1

declare dso_local i32 @linenoiseHistorySave(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @cliSetPreferences(i8**, i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @cliConnect(i32) #1

declare dso_local i32 @linenoiseClearScreen(...) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @issueCommandRepeat(i32, i8**, i64) #1

declare dso_local i32 @cliReadReply(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
