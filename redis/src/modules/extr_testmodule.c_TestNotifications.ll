; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestNotifications.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestNotifications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"FLUSHDB\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"SADD\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HSET\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ccc\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"LPUSH\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"nosuchkey\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"SMEMBERS\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"HGET\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"notifications\00", align 1
@REDISMODULE_REPLY_STRING = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Failed NOTIFY Test. Reason: \22Wrong or no reply for foo\22\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"Failed NOTIFY Test. Reason: \22Got reply '%s'. expected '2'\22\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"Failed NOTIFY Test. Reason: \22Wrong or no reply for bar\22\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"Failed NOTIFY Test. Reason: \22Wrong or no reply for baz\22\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"Failed NOTIFY Test. Reason: \22Got reply '%.*s'. expected '1'\22\00", align 1
@REDISMODULE_REPLY_NULL = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [48 x i8] c"Failed NOTIFY Test. Reason: \22Wrong reply for l\22\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"Failed NOTIFY Test. Reason: \22Wrong or no reply for nosuchkey\22\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"Failed NOTIFY Test. Reason: \22Got reply '%.*s'. expected '2'\22\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestNotifications(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = ptrtoint i32** %11 to i32
  %13 = call i32 @REDISMODULE_NOT_USED(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @REDISMODULE_NOT_USED(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %3
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @RedisModule_CallReplyType(i32* %41)
  %43 = load i64, i64* @REDISMODULE_REPLY_STRING, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %3
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, ...)*)(i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0))
  br label %168

48:                                               ; preds = %40
  %49 = load i32*, i32** %10, align 8
  %50 = call i8* @RedisModule_CallReplyStringPtr(i32* %49, i64* %8)
  store i8* %50, i8** %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 1
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 50
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %48
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i8* @RedisModule_CallReplyStringPtr(i32* %60, i64* null)
  %62 = call i32 (i32*, i8*, i8*, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, i8*, ...)*)(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i64 0, i64 0), i8* %61)
  br label %168

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %5, align 8
  %66 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %10, align 8
  %71 = call i64 @RedisModule_CallReplyType(i32* %70)
  %72 = load i64, i64* @REDISMODULE_REPLY_STRING, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, ...)*)(i32* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0))
  br label %168

77:                                               ; preds = %69
  %78 = load i32*, i32** %10, align 8
  %79 = call i8* @RedisModule_CallReplyStringPtr(i32* %78, i64* %8)
  store i8* %79, i8** %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 1
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 50
  br i1 %86, label %87, label %91

87:                                               ; preds = %82, %77
  %88 = load i32*, i32** %5, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 (i32*, i8*, i8*, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, i8*, ...)*)(i32* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i64 0, i64 0), i8* %89)
  br label %168

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91
  %93 = load i32*, i32** %5, align 8
  %94 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32* %94, i32** %10, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %10, align 8
  %99 = call i64 @RedisModule_CallReplyType(i32* %98)
  %100 = load i64, i64* @REDISMODULE_REPLY_STRING, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97, %92
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, ...)*)(i32* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0))
  br label %168

105:                                              ; preds = %97
  %106 = load i32*, i32** %10, align 8
  %107 = call i8* @RedisModule_CallReplyStringPtr(i32* %106, i64* %8)
  store i8* %107, i8** %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp ne i64 %108, 1
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 49
  br i1 %114, label %115, label %120

115:                                              ; preds = %110, %105
  %116 = load i32*, i32** %5, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 (i32*, i8*, i8*, i64, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, i64, i8*, ...)*)(i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.25, i64 0, i64 0), i64 %117, i8* %118)
  br label %168

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120
  %122 = load i32*, i32** %5, align 8
  %123 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32* %123, i32** %10, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i32*, i32** %10, align 8
  %128 = call i64 @RedisModule_CallReplyType(i32* %127)
  %129 = load i64, i64* @REDISMODULE_REPLY_NULL, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126, %121
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, ...)*)(i32* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i64 0, i64 0))
  br label %168

134:                                              ; preds = %126
  %135 = load i32*, i32** %5, align 8
  %136 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  store i32* %136, i32** %10, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load i32*, i32** %10, align 8
  %141 = call i64 @RedisModule_CallReplyType(i32* %140)
  %142 = load i64, i64* @REDISMODULE_REPLY_STRING, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139, %134
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 (i32*, i8*, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, ...)*)(i32* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.27, i64 0, i64 0))
  br label %168

147:                                              ; preds = %139
  %148 = load i32*, i32** %10, align 8
  %149 = call i8* @RedisModule_CallReplyStringPtr(i32* %148, i64* %8)
  store i8* %149, i8** %9, align 8
  %150 = load i64, i64* %8, align 8
  %151 = icmp ne i64 %150, 1
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load i8*, i8** %9, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 50
  br i1 %156, label %157, label %162

157:                                              ; preds = %152, %147
  %158 = load i32*, i32** %5, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = call i32 (i32*, i8*, i8*, i64, i8*, ...) bitcast (i32 (...)* @RedisModule_Log to i32 (i32*, i8*, i8*, i64, i8*, ...)*)(i32* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i64 0, i64 0), i64 %159, i8* %160)
  br label %168

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162
  %164 = load i32*, i32** %5, align 8
  %165 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @RedisModule_ReplyWithSimpleString(i32* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  store i32 %167, i32* %4, align 4
  br label %173

168:                                              ; preds = %157, %144, %131, %115, %102, %87, %74, %58, %45
  %169 = load i32*, i32** %5, align 8
  %170 = call i32* (i32*, i8*, i8*, ...) @RedisModule_Call(i32* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @RedisModule_ReplyWithSimpleString(i32* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, ...) #1

declare dso_local i64 @RedisModule_CallReplyType(i32*) #1

declare dso_local i32 @RedisModule_Log(...) #1

declare dso_local i8* @RedisModule_CallReplyStringPtr(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
