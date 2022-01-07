; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, i8*, i64, i32**, %struct.diff_state* }
%struct.diff_state = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed run the diff-highlight program: %s\00", align 1
@opt_diff_highlight = common dso_local global i32 0, align 4
@opt_file_args = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"describe\00", align 1
@OPEN_EXTRA = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to load describe data: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.buffer*, i32)* @diff_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_read(%struct.view* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8*], align 16
  %11 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.view*, %struct.view** %5, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %12, i32 0, i32 4
  %14 = load %struct.diff_state*, %struct.diff_state** %13, align 8
  store %struct.diff_state* %14, %struct.diff_state** %8, align 8
  %15 = load %struct.diff_state*, %struct.diff_state** %8, align 8
  %16 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.view*, %struct.view** %5, align 8
  %21 = load %struct.buffer*, %struct.buffer** %6, align 8
  %22 = load %struct.diff_state*, %struct.diff_state** %8, align 8
  %23 = call i32 @diff_read_describe(%struct.view* %20, %struct.buffer* %21, %struct.diff_state* %22)
  store i32 %23, i32* %4, align 4
  br label %153

24:                                               ; preds = %3
  %25 = load %struct.buffer*, %struct.buffer** %6, align 8
  %26 = icmp ne %struct.buffer* %25, null
  br i1 %26, label %146, label %27

27:                                               ; preds = %24
  %28 = load %struct.diff_state*, %struct.diff_state** %8, align 8
  %29 = call i32 @diff_done_highlight(%struct.diff_state* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @opt_diff_highlight, align 4
  %33 = call i32 @report(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %4, align 4
  br label %153

34:                                               ; preds = %27
  %35 = load %struct.view*, %struct.view** %5, align 8
  %36 = getelementptr inbounds %struct.view, %struct.view* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %109

39:                                               ; preds = %34
  %40 = load i32**, i32*** @opt_file_args, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %42, label %109

42:                                               ; preds = %39
  %43 = load %struct.view*, %struct.view** %5, align 8
  %44 = getelementptr inbounds %struct.view, %struct.view* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = call i32 @argv_size(i32** %45)
  %47 = load i32**, i32*** @opt_file_args, align 8
  %48 = call i32 @argv_size(i32** %47)
  %49 = sub nsw i32 %46, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %108

53:                                               ; preds = %42
  %54 = load %struct.view*, %struct.view** %5, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @strcmp(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %108, label %63

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %89, %63
  %65 = load %struct.view*, %struct.view** %5, align 8
  %66 = getelementptr inbounds %struct.view, %struct.view* %65, i32 0, i32 3
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %92

73:                                               ; preds = %64
  %74 = load %struct.view*, %struct.view** %5, align 8
  %75 = getelementptr inbounds %struct.view, %struct.view* %74, i32 0, i32 3
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = call i32 @free(i8* %81)
  %83 = load %struct.view*, %struct.view** %5, align 8
  %84 = getelementptr inbounds %struct.view, %struct.view* %83, i32 0, i32 3
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %64

92:                                               ; preds = %64
  %93 = load %struct.view*, %struct.view** %5, align 8
  %94 = getelementptr inbounds %struct.view, %struct.view* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.view*, %struct.view** %5, align 8
  %99 = getelementptr inbounds %struct.view, %struct.view* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @io_done(i64 %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.view*, %struct.view** %5, align 8
  %104 = call i64 @view_exec(%struct.view* %103, i32 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %153

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %53, %42
  br label %109

109:                                              ; preds = %108, %39, %34
  %110 = load %struct.view*, %struct.view** %5, align 8
  %111 = load %struct.diff_state*, %struct.diff_state** %8, align 8
  %112 = call i32 @diff_restore_line(%struct.view* %110, %struct.diff_state* %111)
  %113 = load %struct.diff_state*, %struct.diff_state** %8, align 8
  %114 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %145, label %117

117:                                              ; preds = %109
  %118 = load %struct.view*, %struct.view** %5, align 8
  %119 = getelementptr inbounds %struct.view, %struct.view* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @ref_list_contains_tag(i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %145, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %124, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %125, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load %struct.view*, %struct.view** %5, align 8
  %128 = getelementptr inbounds %struct.view, %struct.view* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %126, align 8
  %130 = getelementptr inbounds i8*, i8** %126, i64 1
  store i8* null, i8** %130, align 8
  %131 = load %struct.view*, %struct.view** %5, align 8
  %132 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %133 = load i32, i32* @OPEN_EXTRA, align 4
  %134 = call i32 @begin_update(%struct.view* %131, i32* null, i8** %132, i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @SUCCESS, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %123
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @get_status_message(i32 %139)
  %141 = call i32 @report(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  store i32 1, i32* %4, align 4
  br label %153

142:                                              ; preds = %123
  %143 = load %struct.diff_state*, %struct.diff_state** %8, align 8
  %144 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  store i32 0, i32* %4, align 4
  br label %153

145:                                              ; preds = %117, %109
  store i32 1, i32* %4, align 4
  br label %153

146:                                              ; preds = %24
  %147 = load %struct.view*, %struct.view** %5, align 8
  %148 = load %struct.buffer*, %struct.buffer** %6, align 8
  %149 = getelementptr inbounds %struct.buffer, %struct.buffer* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.diff_state*, %struct.diff_state** %8, align 8
  %152 = call i32 @diff_common_read(%struct.view* %147, i32 %150, %struct.diff_state* %151)
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %146, %145, %142, %138, %106, %31, %19
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @diff_read_describe(%struct.view*, %struct.buffer*, %struct.diff_state*) #1

declare dso_local i32 @diff_done_highlight(%struct.diff_state*) #1

declare dso_local i32 @report(i8*, i32) #1

declare dso_local i32 @argv_size(i32**) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @io_done(i64) #1

declare dso_local i64 @view_exec(%struct.view*, i32) #1

declare dso_local i32 @diff_restore_line(%struct.view*, %struct.diff_state*) #1

declare dso_local i32 @ref_list_contains_tag(i8*) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i8**, i32) #1

declare dso_local i32 @get_status_message(i32) #1

declare dso_local i32 @diff_common_read(%struct.view*, i32, %struct.diff_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
