; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-check-aof.c_redis_check_aof_main.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-check-aof.c_redis_check_aof_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redis_stat = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [--fix] <file.aof>\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--fix\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid argument: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid arguments\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Cannot open file: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Cannot stat file: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Empty file: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.9 = private unnamed_addr constant [84 x i8] c"The AOF appears to start with an RDB preamble.\0AChecking the RDB preamble to start:\0A\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [49 x i8] c"RDB preamble of AOF file is not sane, aborting.\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"RDB preamble is OK, proceeding with AOF tail...\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"AOF analyzed: size=%lld, ok_up_to=%lld, diff=%lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"This will shrink the AOF from %lld bytes, with %lld bytes, to %lld bytes\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Continue? [y/N]: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Aborting...\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Failed to truncate AOF\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Successfully truncated AOF\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"AOF is not valid. Use the --fix option to try fixing it.\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"AOF is valid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_check_aof_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.redis_stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i8], align 1
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  br label %53

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %33
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %5, align 8
  store i32 1, i32* %6, align 4
  br label %52

49:                                               ; preds = %30
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %5, align 8
  %56 = call i32* @fopen(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %54
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @fileno(i32* %64)
  %66 = call i32 @redis_fstat(i32 %65, %struct.redis_stat* %8)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.redis_stat, %struct.redis_stat* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %78)
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  %83 = icmp sge i32 %82, 8
  br i1 %83, label %84, label %115

84:                                               ; preds = %81
  %85 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @fread(i8* %85, i32 5, i32 1, i32* %86)
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %91 = call i64 @memcmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %92 = icmp eq i64 %91, 0
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i1 [ false, %84 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @rewind(i32* %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0))
  %102 = load i32, i32* %3, align 4
  %103 = load i8**, i8*** %4, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = call i64 @redis_check_rdb_main(i32 %102, i8** %103, i32* %104)
  %106 = load i64, i64* @C_ERR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %110 = call i32 @exit(i32 1) #3
  unreachable

111:                                              ; preds = %100
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %81
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @process(i32* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i64 %122, i64 %124, i64 %126)
  %128 = load i32, i32* %13, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %169

130:                                              ; preds = %115
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i64 %135, i64 %137, i64 %139)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %142 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %143 = load i32, i32* @stdin, align 4
  %144 = call i32* @fgets(i8* %142, i32 2, i32 %143)
  %145 = icmp eq i32* %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %133
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %148 = call i64 @strncasecmp(i8* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146, %133
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %152 = call i32 @exit(i32 1) #3
  unreachable

153:                                              ; preds = %146
  %154 = load i32*, i32** %7, align 8
  %155 = call i32 @fileno(i32* %154)
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @ftruncate(i32 %155, i32 %156)
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %161 = call i32 @exit(i32 1) #3
  unreachable

162:                                              ; preds = %153
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162
  br label %168

165:                                              ; preds = %130
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0))
  %167 = call i32 @exit(i32 1) #3
  unreachable

168:                                              ; preds = %164
  br label %171

169:                                              ; preds = %115
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %168
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 @fclose(i32* %172)
  %174 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @redis_fstat(i32, %struct.redis_stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @redis_check_rdb_main(i32, i8**, i32*) #1

declare dso_local i32 @process(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
