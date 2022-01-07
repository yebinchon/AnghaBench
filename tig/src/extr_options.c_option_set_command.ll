; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_option_set_command.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_option_set_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_info = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Invalid set command: set option = value\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"No value assigned to %s\00", align 1
@option_info = common dso_local global i8*** null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"status-untracked-dirs\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"status-show-untracked-dirs\00", align 1
@__const.option_set_command.obsolete = private unnamed_addr constant [1 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)]], align 16
@SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"%s has been renamed to %s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"author-width\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"filename-width\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"file-name\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"line-number-interval\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"line-number\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"show-author\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"show-date\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"show-file-size\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"file-size\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"show-filename\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"show-id\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"show-line-numbers\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"show-refs\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"commit-title\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"show-rev-graph\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"title-overflow\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"commit-title and text\00", align 1
@__const.option_set_command.obsolete.27 = private unnamed_addr constant [12 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0)]], align 16
@.str.28 = private unnamed_addr constant [65 x i8] c"%s is obsolete; see tigrc(5) for how to set the %s column option\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"read-git-colors\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"read-git-colors has been obsoleted by the git-colors option\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"cmdline-args\00", align 1
@.str.32 = private unnamed_addr constant [79 x i8] c"cmdline-args is obsolete; use view-specific options instead, e.g. main-options\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Unknown option name: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @option_set_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_set_command(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.option_info*, align 8
  %7 = alloca [1 x [2 x i8*]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [12 x [2 x i8*]], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %136

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %3, align 4
  br label %136

27:                                               ; preds = %16
  %28 = load i8***, i8**** @option_info, align 8
  %29 = load i8***, i8**** @option_info, align 8
  %30 = call i32 @ARRAY_SIZE(i8*** %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call %struct.option_info* @find_option_info(i8*** %28, i32 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  store %struct.option_info* %34, %struct.option_info** %6, align 8
  %35 = load %struct.option_info*, %struct.option_info** %6, align 8
  %36 = icmp ne %struct.option_info* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.option_info*, %struct.option_info** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = call i32 @option_update(%struct.option_info* %38, i32 %39, i8** %40)
  store i32 %41, i32* %3, align 4
  br label %136

42:                                               ; preds = %27
  %43 = bitcast [1 x [2 x i8*]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([1 x [2 x i8*]]* @__const.option_set_command.obsolete to i8*), i64 16, i1 false)
  %44 = getelementptr inbounds [1 x [2 x i8*]], [1 x [2 x i8*]]* %7, i64 0, i64 0
  %45 = bitcast [2 x i8*]* %44 to i8***
  %46 = getelementptr inbounds [1 x [2 x i8*]], [1 x [2 x i8*]]* %7, i64 0, i64 0
  %47 = bitcast [2 x i8*]* %46 to i8***
  %48 = call i32 @ARRAY_SIZE(i8*** %47)
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @find_remapped(i8*** %45, i32 %48, i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %90

55:                                               ; preds = %42
  %56 = load i8***, i8**** @option_info, align 8
  %57 = load i8***, i8**** @option_info, align 8
  %58 = call i32 @ARRAY_SIZE(i8*** %57)
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1 x [2 x i8*]], [1 x [2 x i8*]]* %7, i64 0, i64 %60
  %62 = getelementptr inbounds [2 x i8*], [2 x i8*]* %61, i64 0, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call %struct.option_info* @find_option_info(i8*** %56, i32 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  store %struct.option_info* %64, %struct.option_info** %6, align 8
  %65 = load %struct.option_info*, %struct.option_info** %6, align 8
  %66 = icmp ne %struct.option_info* %65, null
  br i1 %66, label %67, label %89

67:                                               ; preds = %55
  %68 = load %struct.option_info*, %struct.option_info** %6, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = call i32 @option_update(%struct.option_info* %68, i32 %69, i8** %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %136

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1 x [2 x i8*]], [1 x [2 x i8*]]* %7, i64 0, i64 %79
  %81 = getelementptr inbounds [2 x i8*], [2 x i8*]* %80, i64 0, i64 0
  %82 = load i8*, i8** %81, align 16
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1 x [2 x i8*]], [1 x [2 x i8*]]* %7, i64 0, i64 %84
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* %85, i64 0, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %82, i8* %87)
  store i32 %88, i32* %3, align 4
  br label %136

89:                                               ; preds = %55
  br label %90

90:                                               ; preds = %89, %42
  %91 = bitcast [12 x [2 x i8*]]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %91, i8* align 16 bitcast ([12 x [2 x i8*]]* @__const.option_set_command.obsolete.27 to i8*), i64 192, i1 false)
  %92 = getelementptr inbounds [12 x [2 x i8*]], [12 x [2 x i8*]]* %10, i64 0, i64 0
  %93 = bitcast [2 x i8*]* %92 to i8***
  %94 = getelementptr inbounds [12 x [2 x i8*]], [12 x [2 x i8*]]* %10, i64 0, i64 0
  %95 = bitcast [2 x i8*]* %94 to i8***
  %96 = call i32 @ARRAY_SIZE(i8*** %95)
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @find_remapped(i8*** %93, i32 %96, i8* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %115

103:                                              ; preds = %90
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [12 x [2 x i8*]], [12 x [2 x i8*]]* %10, i64 0, i64 %105
  %107 = getelementptr inbounds [2 x i8*], [2 x i8*]* %106, i64 0, i64 0
  %108 = load i8*, i8** %107, align 16
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [12 x [2 x i8*]], [12 x [2 x i8*]]* %10, i64 0, i64 %110
  %112 = getelementptr inbounds [2 x i8*], [2 x i8*]* %111, i64 0, i64 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i64 0, i64 0), i8* %108, i8* %113)
  store i32 %114, i32* %3, align 4
  br label %136

115:                                              ; preds = %90
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %115
  %122 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i64 0, i64 0))
  store i32 %122, i32* %3, align 4
  br label %136

123:                                              ; preds = %115
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.32, i64 0, i64 0))
  store i32 %130, i32* %3, align 4
  br label %136

131:                                              ; preds = %123
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %134)
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %131, %129, %121, %103, %77, %75, %37, %22, %14
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.option_info* @find_option_info(i8***, i32, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8***) #1

declare dso_local i32 @option_update(%struct.option_info*, i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @find_remapped(i8***, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
