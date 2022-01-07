; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_update_onbranch.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_update_onbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i64*, i32 }
%struct.stat = type { i32 }
%struct.io = type { i32 }
%struct.ref = type { i8* }

@status_update_onbranch.paths = internal global [8 x [3 x i8*]] [[3 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)]], align 16
@.str = private unnamed_addr constant [22 x i8] c"rebase-apply/rebasing\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"rebase-apply/head-name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Rebasing\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"rebase-apply/applying\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Applying mailbox to\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"rebase-apply/\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Rebasing mailbox onto\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"rebase-merge/interactive\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"rebase-merge/head-name\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Interactive rebase\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"rebase-merge/\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Rebase merge\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"MERGE_HEAD\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Merging\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"BISECT_LOG\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Bisecting\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"On branch\00", align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@status_onbranch = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"Initial commit\00", align 1
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"HEAD detached at\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%s %s. %s\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Not currently on any branch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @status_update_onbranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_update_onbranch() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.io, align 4
  %10 = alloca %struct.ref*, align 8
  %11 = alloca i8*, align 8
  %12 = load i32, i32* @SIZEOF_STR, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %1, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %2, align 8
  %16 = call i64 (...) @is_initial_commit()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @status_onbranch, align 4
  %20 = call i32 @string_copy(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %159

21:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %153, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ARRAY_SIZE(i8*** bitcast ([8 x [3 x i8*]]* @status_update_onbranch.paths to i8***))
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %156

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x [3 x i8*]], [8 x [3 x i8*]]* @status_update_onbranch.paths, i64 0, i64 %28
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  store i8* %32, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8** %8, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 3), align 8
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x [3 x i8*]], [8 x [3 x i8*]]* @status_update_onbranch.paths, i64 0, i64 %37
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %38, i64 0, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, i8*, i8*, ...) @string_format(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %35, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %26
  %44 = call i64 @lstat(i8* %15, %struct.stat* %3)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %26
  br label %153

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x [3 x i8*]], [8 x [3 x i8*]]* @status_update_onbranch.paths, i64 0, i64 %49
  %51 = getelementptr inbounds [3 x i8*], [3 x i8*]* %50, i64 0, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %47
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 3), align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x [3 x i8*]], [8 x [3 x i8*]]* @status_update_onbranch.paths, i64 0, i64 %57
  %59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %58, i64 0, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @io_open(%struct.io* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %55, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %54
  %64 = trunc i64 %13 to i32
  %65 = call i64 @io_read_buf(%struct.io* %9, i8* %15, i32 %64, i32 0)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  store i8* %15, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @prefixcmp(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %73 = load i8*, i8** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %71, %67
  br label %77

77:                                               ; preds = %76, %63, %54
  br label %78

78:                                               ; preds = %77, %47
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %112, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x [3 x i8*]], [8 x [3 x i8*]]* @status_update_onbranch.paths, i64 0, i64 %84
  %86 = getelementptr inbounds [3 x i8*], [3 x i8*]* %85, i64 0, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %82
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 1), align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 1), align 8
  %97 = call %struct.ref* @get_canonical_ref(i8* %96)
  store %struct.ref* %97, %struct.ref** %10, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8** %6, align 8
  %98 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 1), align 8
  store i8* %98, i8** %7, align 8
  %99 = load %struct.ref*, %struct.ref** %10, align 8
  %100 = icmp ne %struct.ref* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.ref*, %struct.ref** %10, align 8
  %103 = getelementptr inbounds %struct.ref, %struct.ref* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.ref*, %struct.ref** %10, align 8
  %109 = getelementptr inbounds %struct.ref, %struct.ref* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %7, align 8
  br label %111

111:                                              ; preds = %107, %101, %95
  br label %132

112:                                              ; preds = %90, %82, %78
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8 x [3 x i8*]], [8 x [3 x i8*]]* @status_update_onbranch.paths, i64 0, i64 %114
  %116 = getelementptr inbounds [3 x i8*], [3 x i8*]* %115, i64 0, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %112
  %120 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 2), align 8
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = trunc i64 %13 to i32
  %125 = load i8*, i8** %7, align 8
  %126 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 2), align 8
  %127 = call i64 @status_branch_tracking_info(i8* %15, i32 %124, i8* %125, i64* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i8* %15, i8** %8, align 8
  br label %130

130:                                              ; preds = %129, %123
  br label %131

131:                                              ; preds = %130, %119, %112
  br label %132

132:                                              ; preds = %131, %111
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)
  store i8* %138, i8** %11, align 8
  %139 = load i32, i32* @status_onbranch, align 4
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = load i8*, i8** %11, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 (i8*, i8*, i8*, i8*, ...) @string_format(i8* %141, i8* %142, i8* %143, i8* %144, i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %132
  %149 = load i32, i32* @status_onbranch, align 4
  %150 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %151 = call i32 @string_copy(i32 %149, i8* %150)
  br label %152

152:                                              ; preds = %148, %132
  store i32 1, i32* %5, align 4
  br label %159

153:                                              ; preds = %46
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %22

156:                                              ; preds = %22
  %157 = load i32, i32* @status_onbranch, align 4
  %158 = call i32 @string_copy(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %156, %152, %18
  %160 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %5, align 4
  switch i32 %161, label %163 [
    i32 0, label %162
    i32 1, label %162
  ]

162:                                              ; preds = %159, %159
  ret void

163:                                              ; preds = %159
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_initial_commit(...) #2

declare dso_local i32 @string_copy(i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8***) #2

declare dso_local i32 @string_format(i8*, i8*, i8*, i8*, ...) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @io_open(%struct.io*, i8*, i32, i8*) #2

declare dso_local i64 @io_read_buf(%struct.io*, i8*, i32, i32) #2

declare dso_local i32 @prefixcmp(i8*, i8*) #2

declare dso_local i32 @STRING_SIZE(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local %struct.ref* @get_canonical_ref(i8*) #2

declare dso_local i64 @status_branch_tracking_info(i8*, i32, i8*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
