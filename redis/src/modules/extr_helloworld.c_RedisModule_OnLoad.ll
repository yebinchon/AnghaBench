; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_RedisModule_OnLoad.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_RedisModule_OnLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"helloworld\00", align 1
@REDISMODULE_APIVER_1 = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Module loaded with ARGV[%d] = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hello.simple\00", align 1
@HelloSimple_RedisCommand = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"hello.push.native\00", align 1
@HelloPushNative_RedisCommand = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"write deny-oom\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"hello.push.call\00", align 1
@HelloPushCall_RedisCommand = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"hello.push.call2\00", align 1
@HelloPushCall2_RedisCommand = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"hello.list.sum.len\00", align 1
@HelloListSumLen_RedisCommand = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"hello.list.splice\00", align 1
@HelloListSplice_RedisCommand = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"hello.list.splice.auto\00", align 1
@HelloListSpliceAuto_RedisCommand = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"hello.rand.array\00", align 1
@HelloRandArray_RedisCommand = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"hello.repl1\00", align 1
@HelloRepl1_RedisCommand = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"hello.repl2\00", align 1
@HelloRepl2_RedisCommand = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"hello.toggle.case\00", align 1
@HelloToggleCase_RedisCommand = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"hello.more.expire\00", align 1
@HelloMoreExpire_RedisCommand = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"hello.zsumrange\00", align 1
@HelloZsumRange_RedisCommand = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"hello.lexrange\00", align 1
@HelloLexRange_RedisCommand = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"hello.hcopy\00", align 1
@HelloHCopy_RedisCommand = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"hello.leftpad\00", align 1
@HelloLeftPad_RedisCommand = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RedisModule_OnLoad(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @REDISMODULE_APIVER_1, align 4
  %12 = call i64 @RedisModule_Init(i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1, i32 %11)
  %13 = load i64, i64* @REDISMODULE_ERR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* @REDISMODULE_ERR, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %182

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i8* @RedisModule_StringPtrLen(i32* %28, i32* null)
  store i8* %29, i8** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %19

36:                                               ; preds = %19
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @HelloSimple_RedisCommand, align 4
  %39 = call i64 @RedisModule_CreateCommand(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %40 = load i64, i64* @REDISMODULE_ERR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* @REDISMODULE_ERR, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %182

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @HelloPushNative_RedisCommand, align 4
  %48 = call i64 @RedisModule_CreateCommand(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 1, i32 1)
  %49 = load i64, i64* @REDISMODULE_ERR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* @REDISMODULE_ERR, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %182

54:                                               ; preds = %45
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @HelloPushCall_RedisCommand, align 4
  %57 = call i64 @RedisModule_CreateCommand(i32* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 1, i32 1)
  %58 = load i64, i64* @REDISMODULE_ERR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i64, i64* @REDISMODULE_ERR, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %182

63:                                               ; preds = %54
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @HelloPushCall2_RedisCommand, align 4
  %66 = call i64 @RedisModule_CreateCommand(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 1, i32 1)
  %67 = load i64, i64* @REDISMODULE_ERR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i64, i64* @REDISMODULE_ERR, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %182

72:                                               ; preds = %63
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @HelloListSumLen_RedisCommand, align 4
  %75 = call i64 @RedisModule_CreateCommand(i32* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 1, i32 1)
  %76 = load i64, i64* @REDISMODULE_ERR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i64, i64* @REDISMODULE_ERR, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %182

81:                                               ; preds = %72
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @HelloListSplice_RedisCommand, align 4
  %84 = call i64 @RedisModule_CreateCommand(i32* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 2, i32 1)
  %85 = load i64, i64* @REDISMODULE_ERR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i64, i64* @REDISMODULE_ERR, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %182

90:                                               ; preds = %81
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @HelloListSpliceAuto_RedisCommand, align 4
  %93 = call i64 @RedisModule_CreateCommand(i32* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 2, i32 1)
  %94 = load i64, i64* @REDISMODULE_ERR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i64, i64* @REDISMODULE_ERR, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %182

99:                                               ; preds = %90
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @HelloRandArray_RedisCommand, align 4
  %102 = call i64 @RedisModule_CreateCommand(i32* %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %103 = load i64, i64* @REDISMODULE_ERR, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i64, i64* @REDISMODULE_ERR, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %182

108:                                              ; preds = %99
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* @HelloRepl1_RedisCommand, align 4
  %111 = call i64 @RedisModule_CreateCommand(i32* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 0, i32 0)
  %112 = load i64, i64* @REDISMODULE_ERR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i64, i64* @REDISMODULE_ERR, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %4, align 4
  br label %182

117:                                              ; preds = %108
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* @HelloRepl2_RedisCommand, align 4
  %120 = call i64 @RedisModule_CreateCommand(i32* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 1, i32 1, i32 1)
  %121 = load i64, i64* @REDISMODULE_ERR, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i64, i64* @REDISMODULE_ERR, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %4, align 4
  br label %182

126:                                              ; preds = %117
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* @HelloToggleCase_RedisCommand, align 4
  %129 = call i64 @RedisModule_CreateCommand(i32* %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 1, i32 1, i32 1)
  %130 = load i64, i64* @REDISMODULE_ERR, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i64, i64* @REDISMODULE_ERR, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %4, align 4
  br label %182

135:                                              ; preds = %126
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* @HelloMoreExpire_RedisCommand, align 4
  %138 = call i64 @RedisModule_CreateCommand(i32* %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 1, i32 1, i32 1)
  %139 = load i64, i64* @REDISMODULE_ERR, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i64, i64* @REDISMODULE_ERR, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %4, align 4
  br label %182

144:                                              ; preds = %135
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* @HelloZsumRange_RedisCommand, align 4
  %147 = call i64 @RedisModule_CreateCommand(i32* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 1, i32 1)
  %148 = load i64, i64* @REDISMODULE_ERR, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i64, i64* @REDISMODULE_ERR, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %4, align 4
  br label %182

153:                                              ; preds = %144
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* @HelloLexRange_RedisCommand, align 4
  %156 = call i64 @RedisModule_CreateCommand(i32* %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 1, i32 1)
  %157 = load i64, i64* @REDISMODULE_ERR, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i64, i64* @REDISMODULE_ERR, align 8
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %4, align 4
  br label %182

162:                                              ; preds = %153
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* @HelloHCopy_RedisCommand, align 4
  %165 = call i64 @RedisModule_CreateCommand(i32* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 1, i32 1)
  %166 = load i64, i64* @REDISMODULE_ERR, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i64, i64* @REDISMODULE_ERR, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %4, align 4
  br label %182

171:                                              ; preds = %162
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* @HelloLeftPad_RedisCommand, align 4
  %174 = call i64 @RedisModule_CreateCommand(i32* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %173, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i32 1, i32 1, i32 1)
  %175 = load i64, i64* @REDISMODULE_ERR, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i64, i64* @REDISMODULE_ERR, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %4, align 4
  br label %182

180:                                              ; preds = %171
  %181 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %177, %168, %159, %150, %141, %132, %123, %114, %105, %96, %87, %78, %69, %60, %51, %42, %15
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @RedisModule_Init(i32*, i8*, i32, i32) #1

declare dso_local i8* @RedisModule_StringPtrLen(i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i64 @RedisModule_CreateCommand(i32*, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
