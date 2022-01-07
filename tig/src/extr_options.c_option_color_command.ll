; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_option_color_command.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_option_color_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_rule = type { i32, i32 }
%struct.line_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"Invalid color mapping: color area fgcolor bgcolor [attrs]\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@option_color_command.obsolete = internal global [24 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0)]], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"acked\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"'    Acked-by'\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"diff-copy-from\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"'copy from '\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"diff-copy-to\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"'copy to '\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"diff-deleted-file-mode\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"'deleted file mode '\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"diff-dissimilarity\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"'dissimilarity '\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"diff-rename-from\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"'rename from '\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"diff-rename-to\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"'rename to '\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"diff-tree\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"'diff-tree '\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"help-keymap\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"help.section\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"main-revgraph\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"pp-adate\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"'AuthorDate: '\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"pp-author\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"'Author: '\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"pp-cdate\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"'CommitDate: '\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"pp-commit\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"'Commit: '\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"pp-date\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"'Date: '\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"reviewed\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"'    Reviewed-by'\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"signoff\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"'    Signed-off-by'\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"stat-head\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"status.header\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"stat-section\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"status.section\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"tested\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"'    Tested-by'\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"tree-dir\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"tree.directory\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"tree-file\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"tree.file\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"tree-head\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"tree.header\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"%s is obsolete\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"Unknown color name: %s\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"%s has been replaced by %s\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"Unknown color: %s\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"Unknown color attribute: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @option_color_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_color_command(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.line_rule, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.line_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast %struct.line_rule* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %149

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @parse_color_name(i8* %20, %struct.line_rule* %6, i8** %7)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %149

27:                                               ; preds = %17
  %28 = load i8*, i8** %7, align 8
  %29 = call %struct.line_info* @add_line_rule(i8* %28, %struct.line_rule* %6)
  store %struct.line_info* %29, %struct.line_info** %8, align 8
  %30 = load %struct.line_info*, %struct.line_info** %8, align 8
  %31 = icmp ne %struct.line_info* %30, null
  br i1 %31, label %93, label %32

32:                                               ; preds = %27
  %33 = call i32 @ARRAY_SIZE(i8*** bitcast ([24 x [2 x i8*]]* @option_color_command.obsolete to i8***))
  %34 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @find_remapped(i8*** bitcast ([24 x [2 x i8*]]* @option_color_command.obsolete to i8***), i32 %33, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %73

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [24 x [2 x i8*]], [24 x [2 x i8*]]* @option_color_command.obsolete, i64 0, i64 %41
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %42, i64 0, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %3, align 4
  br label %149

52:                                               ; preds = %39
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [24 x [2 x i8*]], [24 x [2 x i8*]]* @option_color_command.obsolete, i64 0, i64 %54
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %55, i64 0, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %60
  %63 = phi i8** [ null, %60 ], [ %7, %61 ]
  %64 = call i32 @parse_color_name(i8* %57, %struct.line_rule* %6, i8** %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %149

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = call %struct.line_info* @add_line_rule(i8* %71, %struct.line_rule* %6)
  store %struct.line_info* %72, %struct.line_info** %8, align 8
  br label %73

73:                                               ; preds = %70, %32
  %74 = load %struct.line_info*, %struct.line_info** %8, align 8
  %75 = icmp ne %struct.line_info* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i8* %79)
  store i32 %80, i32* %3, align 4
  br label %149

81:                                               ; preds = %73
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [24 x [2 x i8*]], [24 x [2 x i8*]]* @option_color_command.obsolete, i64 0, i64 %83
  %85 = getelementptr inbounds [2 x i8*], [2 x i8*]* %84, i64 0, i64 0
  %86 = load i8*, i8** %85, align 16
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [24 x [2 x i8*]], [24 x [2 x i8*]]* @option_color_command.obsolete, i64 0, i64 %88
  %90 = getelementptr inbounds [2 x i8*], [2 x i8*]* %89, i64 0, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i8* %86, i8* %91)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %81, %27
  %94 = load %struct.line_info*, %struct.line_info** %8, align 8
  %95 = getelementptr inbounds %struct.line_info, %struct.line_info* %94, i32 0, i32 2
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @set_color(i32* %95, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0), i8* %104)
  store i32 %105, i32* %3, align 4
  br label %149

106:                                              ; preds = %93
  %107 = load %struct.line_info*, %struct.line_info** %8, align 8
  %108 = getelementptr inbounds %struct.line_info, %struct.line_info* %107, i32 0, i32 1
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @set_color(i32* %108, i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %106
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0), i8* %117)
  store i32 %118, i32* %3, align 4
  br label %149

119:                                              ; preds = %106
  %120 = load %struct.line_info*, %struct.line_info** %8, align 8
  %121 = getelementptr inbounds %struct.line_info, %struct.line_info* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %141, %119
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %4, align 4
  %125 = icmp sgt i32 %123, 3
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @set_attribute(i32* %11, i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %126
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0), i8* %139)
  store i32 %140, i32* %3, align 4
  br label %149

141:                                              ; preds = %126
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.line_info*, %struct.line_info** %8, align 8
  %144 = getelementptr inbounds %struct.line_info, %struct.line_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %122

147:                                              ; preds = %122
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %134, %114, %101, %76, %68, %47, %25, %15
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @parse_color_name(i8*, %struct.line_rule*, i8**) #2

declare dso_local %struct.line_info* @add_line_rule(i8*, %struct.line_rule*) #2

declare dso_local i32 @find_remapped(i8***, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8***) #2

declare dso_local i32 @set_color(i32*, i8*) #2

declare dso_local i32 @set_attribute(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
