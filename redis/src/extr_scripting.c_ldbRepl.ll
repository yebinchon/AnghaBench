; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRepl.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRepl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }

@ldb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@C_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Redis Lua debugger help:\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"[h]elp               Show this help.\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"[s]tep               Run current line and stop again.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"[n]ext               Alias for step.\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"[c]continue          Run till next breakpoint.\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"[l]list              List source code around current line.\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"[l]list [line]       List source code around [line].\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"                     line = 0 means: current position.\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"[l]list [line] [ctx] In this form [ctx] specifies how many lines\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"                     to show before/after [line].\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"[w]hole              List all source code. Alias for 'list 1 1000000'.\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"[p]rint              Show all the local variables.\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"[p]rint <var>        Show the value of the specified variable.\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"                     Can also show global vars KEYS and ARGV.\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"[b]reak              Show all breakpoints.\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"[b]reak <line>       Add a breakpoint to the specified line.\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"[b]reak -<line>      Remove breakpoint from the specified line.\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"[b]reak 0            Remove all breakpoints.\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"[t]race              Show a backtrace.\00", align 1
@.str.21 = private unnamed_addr constant [71 x i8] c"[e]eval <code>       Execute some Lua code (in a different callframe).\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"[r]edis <cmd>        Execute a Redis command.\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"[m]axlen [len]       Trim logged Redis replies and Lua var dumps to len.\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"                     Specifying zero as <len> means unlimited.\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"[a]bort              Stop the execution of the script. In sync\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"                     mode dataset changes will be retained.\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"Debugger functions you can call from Lua scripts:\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"redis.debug()        Produce logs in the debugger console.\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"redis.breakpoint()   Stop execution like if there was a breakpoing.\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"                     in the next line of code.\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"script aborted for user request\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"whole\00", align 1
@.str.57 = private unnamed_addr constant [73 x i8] c"<error> Unknown Redis Lua debugger command or wrong number of arguments.\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldbRepl(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  br label %11

11:                                               ; preds = %1, %344
  br label %12

12:                                               ; preds = %23, %11
  %13 = call i32* @ldbReplParseCommand(i32* %5)
  store i32* %13, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 4), align 8
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %18 = call i32 @connRead(i32 %16, i8* %17, i32 1024)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 3), align 8
  %22 = load i32, i32* @C_ERR, align 4
  store i32 %22, i32* %2, align 4
  br label %353

23:                                               ; preds = %15
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 2), align 8
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sdscatlen(i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 2), align 8
  br label %12

28:                                               ; preds = %12
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 2), align 8
  %30 = call i32 @sdsfree(i32 %29)
  %31 = call i32 (...) @sdsempty()
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 2), align 8
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcasecmp(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcasecmp(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %105, label %43

43:                                               ; preds = %37, %28
  %44 = call i32 @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @ldbLog(i32 %44)
  %46 = call i32 @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @ldbLog(i32 %46)
  %48 = call i32 @sdsnew(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 @ldbLog(i32 %48)
  %50 = call i32 @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32 @ldbLog(i32 %50)
  %52 = call i32 @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 @ldbLog(i32 %52)
  %54 = call i32 @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %55 = call i32 @ldbLog(i32 %54)
  %56 = call i32 @sdsnew(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  %57 = call i32 @ldbLog(i32 %56)
  %58 = call i32 @sdsnew(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %59 = call i32 @ldbLog(i32 %58)
  %60 = call i32 @sdsnew(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0))
  %61 = call i32 @ldbLog(i32 %60)
  %62 = call i32 @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %63 = call i32 @ldbLog(i32 %62)
  %64 = call i32 @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0))
  %65 = call i32 @ldbLog(i32 %64)
  %66 = call i32 @sdsnew(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %67 = call i32 @ldbLog(i32 %66)
  %68 = call i32 @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0))
  %69 = call i32 @ldbLog(i32 %68)
  %70 = call i32 @sdsnew(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0))
  %71 = call i32 @ldbLog(i32 %70)
  %72 = call i32 @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %73 = call i32 @ldbLog(i32 %72)
  %74 = call i32 @sdsnew(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0))
  %75 = call i32 @ldbLog(i32 %74)
  %76 = call i32 @sdsnew(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  %77 = call i32 @ldbLog(i32 %76)
  %78 = call i32 @sdsnew(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %79 = call i32 @ldbLog(i32 %78)
  %80 = call i32 @sdsnew(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  %81 = call i32 @ldbLog(i32 %80)
  %82 = call i32 @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.21, i64 0, i64 0))
  %83 = call i32 @ldbLog(i32 %82)
  %84 = call i32 @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0))
  %85 = call i32 @ldbLog(i32 %84)
  %86 = call i32 @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0))
  %87 = call i32 @ldbLog(i32 %86)
  %88 = call i32 @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0))
  %89 = call i32 @ldbLog(i32 %88)
  %90 = call i32 @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0))
  %91 = call i32 @ldbLog(i32 %90)
  %92 = call i32 @sdsnew(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0))
  %93 = call i32 @ldbLog(i32 %92)
  %94 = call i32 @sdsnew(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0))
  %95 = call i32 @ldbLog(i32 %94)
  %96 = call i32 @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0))
  %97 = call i32 @ldbLog(i32 %96)
  %98 = call i32 @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.29, i64 0, i64 0))
  %99 = call i32 @ldbLog(i32 %98)
  %100 = call i32 @sdsnew(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.30, i64 0, i64 0))
  %101 = call i32 @ldbLog(i32 %100)
  %102 = call i32 @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0))
  %103 = call i32 @ldbLog(i32 %102)
  %104 = call i32 (...) @ldbSendLogs()
  br label %344

105:                                              ; preds = %37
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @strcasecmp(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @strcasecmp(i32 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @strcasecmp(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @strcasecmp(i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123, %117, %111, %105
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 0), align 8
  br label %348

130:                                              ; preds = %123
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @strcasecmp(i32 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @strcasecmp(i32 %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %136, %130
  br label %348

143:                                              ; preds = %136
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @strcasecmp(i32 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @strcasecmp(i32 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %149, %143
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @ldbTrace(i32* %156)
  %158 = call i32 (...) @ldbSendLogs()
  br label %341

159:                                              ; preds = %149
  %160 = load i32*, i32** %4, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @strcasecmp(i32 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @strcasecmp(i32 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %165, %159
  %172 = load i32*, i32** %4, align 8
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @ldbMaxlen(i32* %172, i32 %173)
  %175 = call i32 (...) @ldbSendLogs()
  br label %340

176:                                              ; preds = %165
  %177 = load i32*, i32** %4, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @strcasecmp(i32 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @strcasecmp(i32 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %182, %176
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @ldbBreak(i32* %189, i32 %190)
  %192 = call i32 (...) @ldbSendLogs()
  br label %339

193:                                              ; preds = %182
  %194 = load i32*, i32** %4, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @strcasecmp(i32 %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0))
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @strcasecmp(i32 %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %199, %193
  %206 = load i32*, i32** %3, align 8
  %207 = load i32*, i32** %4, align 8
  %208 = load i32, i32* %5, align 4
  %209 = call i32 @ldbEval(i32* %206, i32* %207, i32 %208)
  %210 = call i32 (...) @ldbSendLogs()
  br label %338

211:                                              ; preds = %199
  %212 = load i32*, i32** %4, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @strcasecmp(i32 %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0))
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = load i32*, i32** %4, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @strcasecmp(i32 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %217, %211
  %224 = load i32*, i32** %3, align 8
  %225 = call i32 @lua_pushstring(i32* %224, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i64 0, i64 0))
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @lua_error(i32* %226)
  br label %337

228:                                              ; preds = %217
  %229 = load i32, i32* %5, align 4
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %249

231:                                              ; preds = %228
  %232 = load i32*, i32** %4, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @strcasecmp(i32 %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %231
  %238 = load i32*, i32** %4, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @strcasecmp(i32 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0))
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %237, %231
  %244 = load i32*, i32** %3, align 8
  %245 = load i32*, i32** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @ldbRedis(i32* %244, i32* %245, i32 %246)
  %248 = call i32 (...) @ldbSendLogs()
  br label %336

249:                                              ; preds = %237, %228
  %250 = load i32*, i32** %4, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @strcasecmp(i32 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0))
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load i32*, i32** %4, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @strcasecmp(i32 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %275, label %261

261:                                              ; preds = %255, %249
  %262 = load i32, i32* %5, align 4
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load i32*, i32** %3, align 8
  %266 = load i32*, i32** %4, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @ldbPrint(i32* %265, i32 %268)
  br label %273

270:                                              ; preds = %261
  %271 = load i32*, i32** %3, align 8
  %272 = call i32 @ldbPrintAll(i32* %271)
  br label %273

273:                                              ; preds = %270, %264
  %274 = call i32 (...) @ldbSendLogs()
  br label %335

275:                                              ; preds = %255
  %276 = load i32*, i32** %4, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @strcasecmp(i32 %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = load i32*, i32** %4, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @strcasecmp(i32 %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0))
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %314, label %287

287:                                              ; preds = %281, %275
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 1), align 4
  store i32 %288, i32* %8, align 4
  store i32 5, i32* %9, align 4
  %289 = load i32, i32* %5, align 4
  %290 = icmp sgt i32 %289, 1
  br i1 %290, label %291, label %301

291:                                              ; preds = %287
  %292 = load i32*, i32** %4, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @atoi(i32 %294)
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* %10, align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %291
  %299 = load i32, i32* %10, align 4
  store i32 %299, i32* %8, align 4
  br label %300

300:                                              ; preds = %298, %291
  br label %301

301:                                              ; preds = %300, %287
  %302 = load i32, i32* %5, align 4
  %303 = icmp sgt i32 %302, 2
  br i1 %303, label %304, label %309

304:                                              ; preds = %301
  %305 = load i32*, i32** %4, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 2
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @atoi(i32 %307)
  store i32 %308, i32* %9, align 4
  br label %309

309:                                              ; preds = %304, %301
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* %9, align 4
  %312 = call i32 @ldbList(i32 %310, i32 %311)
  %313 = call i32 (...) @ldbSendLogs()
  br label %334

314:                                              ; preds = %281
  %315 = load i32*, i32** %4, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @strcasecmp(i32 %317, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0))
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %314
  %321 = load i32*, i32** %4, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @strcasecmp(i32 %323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0))
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %320, %314
  %327 = call i32 @ldbList(i32 1, i32 1000000)
  %328 = call i32 (...) @ldbSendLogs()
  br label %333

329:                                              ; preds = %320
  %330 = call i32 @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.57, i64 0, i64 0))
  %331 = call i32 @ldbLog(i32 %330)
  %332 = call i32 (...) @ldbSendLogs()
  br label %333

333:                                              ; preds = %329, %326
  br label %334

334:                                              ; preds = %333, %309
  br label %335

335:                                              ; preds = %334, %273
  br label %336

336:                                              ; preds = %335, %243
  br label %337

337:                                              ; preds = %336, %223
  br label %338

338:                                              ; preds = %337, %205
  br label %339

339:                                              ; preds = %338, %188
  br label %340

340:                                              ; preds = %339, %171
  br label %341

341:                                              ; preds = %340, %155
  br label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %343, %43
  %345 = load i32*, i32** %4, align 8
  %346 = load i32, i32* %5, align 4
  %347 = call i32 @sdsfreesplitres(i32* %345, i32 %346)
  br label %11

348:                                              ; preds = %142, %129
  %349 = load i32*, i32** %4, align 8
  %350 = load i32, i32* %5, align 4
  %351 = call i32 @sdsfreesplitres(i32* %349, i32 %350)
  %352 = load i32, i32* @C_OK, align 4
  store i32 %352, i32* %2, align 4
  br label %353

353:                                              ; preds = %348, %21
  %354 = load i32, i32* %2, align 4
  ret i32 %354
}

declare dso_local i32* @ldbReplParseCommand(i32*) #1

declare dso_local i32 @connRead(i32, i8*, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @ldbLog(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @ldbSendLogs(...) #1

declare dso_local i32 @ldbTrace(i32*) #1

declare dso_local i32 @ldbMaxlen(i32*, i32) #1

declare dso_local i32 @ldbBreak(i32*, i32) #1

declare dso_local i32 @ldbEval(i32*, i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @ldbRedis(i32*, i32*, i32) #1

declare dso_local i32 @ldbPrint(i32*, i32) #1

declare dso_local i32 @ldbPrintAll(i32*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @ldbList(i32, i32) #1

declare dso_local i32 @sdsfreesplitres(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
