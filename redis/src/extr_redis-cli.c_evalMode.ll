; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_evalMode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_evalMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i64 }

@REDIS_OK = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [171 x i8] c"Lua debugging session started, please use:\0Aquit    -- End the session.\0Arestart -- Restart the script in debug mode again.\0Ahelp    -- Show Lua script debugging commands.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't open file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"SCRIPT DEBUG sync\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SCRIPT DEBUG yes\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"EVAL\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Eval debugging session can't start:\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"lua debugger> \00", align 1
@CC_FORCE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @evalMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evalMode(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %5, align 8
  %16 = load i32, i32* @REDIS_OK, align 4
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %2, %160
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @printf(i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @sdsfree(i8* %23)
  %25 = call i8* (...) @sdsempty()
  store i8* %25, i8** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @strerror(i32 %33)
  %35 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %34)
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %43, %37
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @fread(i8* %39, i32 1, i32 1024, i32* %40)
  store i64 %41, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %46 = load i64, i64* %8, align 8
  %47 = call i8* @sdscatlen(i8* %44, i8* %45, i64 %46)
  store i8* %47, i8** %5, align 8
  br label %38

48:                                               ; preds = %38
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @fclose(i32* %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i32, i32* @context, align 4
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)
  %59 = call i32* @redisCommand(i32 %54, i8* %58)
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @freeReplyObject(i32* %63)
  br label %65

65:                                               ; preds = %62, %53
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = mul i64 8, %69
  %71 = trunc i64 %70 to i32
  %72 = call i8** @zmalloc(i32 %71)
  store i8** %72, i8*** %9, align 8
  %73 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i8**, i8*** %9, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  store i8* %76, i8** %78, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %127, %66
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %3, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %130

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %107, label %86

86:                                               ; preds = %83
  %87 = load i8**, i8*** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 44
  br i1 %95, label %96, label %107

96:                                               ; preds = %86
  %97 = load i8**, i8*** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  br label %127

107:                                              ; preds = %96, %86, %83
  %108 = load i8**, i8*** %4, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @sdsnew(i8* %112)
  %114 = load i8**, i8*** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 3
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %114, i64 %119
  store i8* %113, i8** %120, align 8
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %107
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %123, %107
  br label %127

127:                                              ; preds = %126, %106
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %79

130:                                              ; preds = %79
  %131 = call i8* (...) @sdsempty()
  %132 = load i32, i32* %12, align 4
  %133 = call i8* @sdscatprintf(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load i8**, i8*** %9, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 2
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 3
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i8**, i8*** %9, align 8
  %142 = call i32 @issueCommand(i32 %140, i8** %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %130
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %150 = call i32 @cliReadReply(i32 0)
  br label %161

151:                                              ; preds = %145
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %153 = call i32 @strncpy(i32 %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %154 = call i32 (...) @repl()
  %155 = load i32, i32* @CC_FORCE, align 4
  %156 = call i32 @cliConnect(i32 %155)
  %157 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %158

158:                                              ; preds = %151
  br label %160

159:                                              ; preds = %130
  br label %161

160:                                              ; preds = %158
  br label %17

161:                                              ; preds = %159, %148
  %162 = load i32, i32* %13, align 4
  ret i32 %162
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @redisCommand(i32, i8*) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i8** @zmalloc(i32) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i32) #1

declare dso_local i32 @issueCommand(i32, i8**) #1

declare dso_local i32 @cliReadReply(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @repl(...) #1

declare dso_local i32 @cliConnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
