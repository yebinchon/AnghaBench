; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_commandFlagsFromString.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_commandFlagsFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@CMD_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@CMD_READONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@CMD_ADMIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"deny-oom\00", align 1
@CMD_DENYOOM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"deny-script\00", align 1
@CMD_NOSCRIPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"allow-loading\00", align 1
@CMD_LOADING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"pubsub\00", align 1
@CMD_PUBSUB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@CMD_RANDOM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"allow-stale\00", align 1
@CMD_STALE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"no-monitor\00", align 1
@CMD_SKIP_MONITOR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@CMD_FAST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"getkeys-api\00", align 1
@CMD_MODULE_GETKEYS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"no-cluster\00", align 1
@CMD_MODULE_NO_CLUSTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commandFlagsFromString(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = call i8** @sdssplitlen(i8* %9, i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32* %4)
  store i8** %12, i8*** %7, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %140, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %143

17:                                               ; preds = %13
  %18 = load i8**, i8*** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @CMD_WRITE, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %139

30:                                               ; preds = %17
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @CMD_READONLY, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %138

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strcasecmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @CMD_ADMIN, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %137

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @CMD_DENYOOM, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %136

54:                                               ; preds = %46
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @CMD_NOSCRIPT, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %135

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @CMD_LOADING, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %134

70:                                               ; preds = %62
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strcasecmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @CMD_PUBSUB, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %133

78:                                               ; preds = %70
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @strcasecmp(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @CMD_RANDOM, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %132

86:                                               ; preds = %78
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strcasecmp(i8* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @CMD_STALE, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %131

94:                                               ; preds = %86
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strcasecmp(i8* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @CMD_SKIP_MONITOR, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %130

102:                                              ; preds = %94
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @strcasecmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* @CMD_FAST, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %129

110:                                              ; preds = %102
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @strcasecmp(i8* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @CMD_MODULE_GETKEYS, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %128

118:                                              ; preds = %110
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @strcasecmp(i8* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @CMD_MODULE_NO_CLUSTER, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %127

126:                                              ; preds = %118
  br label %143

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %114
  br label %129

129:                                              ; preds = %128, %106
  br label %130

130:                                              ; preds = %129, %98
  br label %131

131:                                              ; preds = %130, %90
  br label %132

132:                                              ; preds = %131, %82
  br label %133

133:                                              ; preds = %132, %74
  br label %134

134:                                              ; preds = %133, %66
  br label %135

135:                                              ; preds = %134, %58
  br label %136

136:                                              ; preds = %135, %50
  br label %137

137:                                              ; preds = %136, %42
  br label %138

138:                                              ; preds = %137, %34
  br label %139

139:                                              ; preds = %138, %26
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %13

143:                                              ; preds = %126, %13
  %144 = load i8**, i8*** %7, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @sdsfreesplitres(i8** %144, i32 %145)
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 -1, i32* %2, align 4
  br label %153

151:                                              ; preds = %143
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i8** @sdssplitlen(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
