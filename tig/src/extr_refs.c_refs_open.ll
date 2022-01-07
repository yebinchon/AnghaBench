; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refs.c_refs_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refs.c_refs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.view = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@encoding_arg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"--no-color\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"--date=raw\00", align 1
@opt_mailmap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"--pretty=format:%H%x00%aN <%aE> %ad%x00%s\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"--pretty=format:%H%x00%an <%ae> %ad%x00%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"--simplify-by-decoration\00", align 1
@REFS_ALL_NAME = common dso_local global i8* null, align 8
@opt_cmdline_args = common dso_local global i64* null, align 8
@refs_argv = common dso_local global i64* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@REFS_FILTER_TAGS = common dso_local global i32 0, align 4
@refs_filter = common dso_local global i32 0, align 4
@REFS_TAGS_NAME = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"--branches\00", align 1
@REFS_FILTER_BRANCHES = common dso_local global i32 0, align 4
@REFS_BRANCHES_NAME = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"--remotes\00", align 1
@REFS_FILTER_REMOTES = common dso_local global i32 0, align 4
@REFS_REMOTES_NAME = common dso_local global i8* null, align 8
@refs_all = common dso_local global %struct.ref* null, align 8
@ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@OPEN_RELOAD = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@VIEW_COLUMN_REF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Failed to setup the refs view\00", align 1
@WATCH_HEAD = common dso_local global i32 0, align 4
@WATCH_REFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @refs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refs_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [9 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ref*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** @encoding_arg, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i32, i32* @opt_mailmap, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0)
  store i8* %22, i8** %18, align 8
  %23 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* null, i8** %25, align 8
  %26 = load i8*, i8** @REFS_ALL_NAME, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.view*, %struct.view** %4, align 8
  %28 = call i64 @is_initial_view(%struct.view* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i64*, i64** @opt_cmdline_args, align 8
  store i64* %31, i64** @refs_argv, align 8
  store i64* null, i64** @opt_cmdline_args, align 8
  br label %32

32:                                               ; preds = %30, %2
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %81, %32
  %34 = load i64*, i64** @refs_argv, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i64*, i64** @refs_argv, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %36, %33
  %44 = phi i1 [ false, %33 ], [ %42, %36 ]
  br i1 %44, label %45, label %84

45:                                               ; preds = %43
  %46 = load i64*, i64** @refs_argv, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strncmp(i64 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @REFS_FILTER_TAGS, align 4
  store i32 %54, i32* @refs_filter, align 4
  %55 = load i8*, i8** @REFS_TAGS_NAME, align 8
  store i8* %55, i8** %8, align 8
  br label %80

56:                                               ; preds = %45
  %57 = load i64*, i64** @refs_argv, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @strncmp(i64 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 10)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @REFS_FILTER_BRANCHES, align 4
  store i32 %65, i32* @refs_filter, align 4
  %66 = load i8*, i8** @REFS_BRANCHES_NAME, align 8
  store i8* %66, i8** %8, align 8
  br label %79

67:                                               ; preds = %56
  %68 = load i64*, i64** @refs_argv, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @strncmp(i64 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @REFS_FILTER_REMOTES, align 4
  store i32 %76, i32* @refs_filter, align 4
  %77 = load i8*, i8** @REFS_REMOTES_NAME, align 8
  store i8* %77, i8** %8, align 8
  br label %78

78:                                               ; preds = %75, %67
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %33

84:                                               ; preds = %43
  %85 = load %struct.ref*, %struct.ref** @refs_all, align 8
  %86 = icmp ne %struct.ref* %85, null
  br i1 %86, label %107, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @strlen(i8* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 4, %91
  %93 = trunc i64 %92 to i32
  %94 = call %struct.ref* @calloc(i32 1, i32 %93)
  store %struct.ref* %94, %struct.ref** %11, align 8
  %95 = load %struct.ref*, %struct.ref** %11, align 8
  %96 = icmp ne %struct.ref* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %98, i32* %3, align 4
  br label %148

99:                                               ; preds = %87
  %100 = load %struct.ref*, %struct.ref** %11, align 8
  %101 = getelementptr inbounds %struct.ref, %struct.ref* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @strncpy(i32 %102, i8* %103, i32 %104)
  %106 = load %struct.ref*, %struct.ref** %11, align 8
  store %struct.ref* %106, %struct.ref** @refs_all, align 8
  br label %107

107:                                              ; preds = %99, %84
  %108 = load %struct.view*, %struct.view** %4, align 8
  %109 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  %110 = load i32, i32* @OPEN_RELOAD, align 4
  %111 = call i32 @begin_update(%struct.view* %108, i32* null, i8** %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @SUCCESS, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %148

117:                                              ; preds = %107
  %118 = load %struct.view*, %struct.view** %4, align 8
  %119 = getelementptr inbounds %struct.view, %struct.view* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %117
  %123 = load %struct.view*, %struct.view** %4, align 8
  %124 = load i32, i32* @VIEW_COLUMN_REF, align 4
  %125 = call i32 @get_view_column(%struct.view* %123, i32 %124)
  %126 = load %struct.view*, %struct.view** %4, align 8
  %127 = getelementptr inbounds %struct.view, %struct.view* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = icmp ne i32 %125, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %122
  %131 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %122
  br label %133

133:                                              ; preds = %132, %117
  %134 = load %struct.view*, %struct.view** %4, align 8
  %135 = load %struct.ref*, %struct.ref** @refs_all, align 8
  %136 = call i32 @refs_open_visitor(%struct.view* %134, %struct.ref* %135)
  %137 = load %struct.view*, %struct.view** %4, align 8
  %138 = call i32 @foreach_ref(i32 (%struct.view*, %struct.ref*)* @refs_open_visitor, %struct.view* %137)
  %139 = load %struct.view*, %struct.view** %4, align 8
  %140 = call i32 @resort_view(%struct.view* %139, i32 1)
  %141 = load %struct.view*, %struct.view** %4, align 8
  %142 = getelementptr inbounds %struct.view, %struct.view* %141, i32 0, i32 0
  %143 = load i32, i32* @WATCH_HEAD, align 4
  %144 = load i32, i32* @WATCH_REFS, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @watch_register(i32* %142, i32 %145)
  %147 = load i32, i32* @SUCCESS, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %133, %115, %97
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @is_initial_view(%struct.view*) #1

declare dso_local i32 @strncmp(i64, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.ref* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i8**, i32) #1

declare dso_local i32 @get_view_column(%struct.view*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @refs_open_visitor(%struct.view*, %struct.ref*) #1

declare dso_local i32 @foreach_ref(i32 (%struct.view*, %struct.ref*)*, %struct.view*) #1

declare dso_local i32 @resort_view(%struct.view*, i32) #1

declare dso_local i32 @watch_register(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
