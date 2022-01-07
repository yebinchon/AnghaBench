; ModuleID = '/home/carl/AnghaBench/tig/src/extr_prompt.c_prompt_toggle.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_prompt.c_prompt_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i8*, %struct.view_column*, %struct.sort_state }
%struct.view_column = type { i32, i32, %struct.view_column* }
%struct.sort_state = type { i64 }
%struct.option_info = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No option name given to :toggle\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sort-field\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sort-order\00", align 1
@VIEW_SORTABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Sorting is not yet supported for the %s view\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"set %s = %s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"descending\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ascending\00", align 1
@option_toggles = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"`:toggle %s` not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i8**, i32*)* @prompt_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompt_toggle(%struct.view* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.option_info, align 4
  %11 = alloca %struct.option_info*, align 8
  %12 = alloca %struct.view_column*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sort_state*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strlen(i8* %22)
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i64 [ %23, %21 ], [ 0, %24 ]
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  br label %123

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @enum_equals_static(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @enum_equals_static(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %36, %31
  %42 = load %struct.view*, %struct.view** %5, align 8
  %43 = load i32, i32* @VIEW_SORTABLE, align 4
  %44 = call i32 @view_has_flags(%struct.view* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.view*, %struct.view** %5, align 8
  %48 = getelementptr inbounds %struct.view, %struct.view* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %4, align 4
  br label %123

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @enum_equals_static(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %52, i64 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.view*, %struct.view** %5, align 8
  %56 = getelementptr inbounds %struct.view, %struct.view* %55, i32 0, i32 2
  store %struct.sort_state* %56, %struct.sort_state** %15, align 8
  %57 = load %struct.view*, %struct.view** %5, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @sort_view(%struct.view* %57, i32 %58)
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.view*, %struct.view** %5, align 8
  %65 = call i32 @get_sort_field(%struct.view* %64)
  %66 = call i8* @view_column_name(i32 %65)
  br label %74

67:                                               ; preds = %51
  %68 = load %struct.sort_state*, %struct.sort_state** %15, align 8
  %69 = getelementptr inbounds %struct.sort_state, %struct.sort_state* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)
  br label %74

74:                                               ; preds = %67, %63
  %75 = phi i8* [ %66, %63 ], [ %73, %67 ]
  %76 = call i32 @success(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %60, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %123

77:                                               ; preds = %36
  %78 = load i32, i32* @option_toggles, align 4
  %79 = load i32, i32* @option_toggles, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = load i8*, i8** %8, align 8
  %82 = call %struct.option_info* @find_option_info(i32 %78, i32 %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %81)
  store %struct.option_info* %82, %struct.option_info** %11, align 8
  %83 = load %struct.option_info*, %struct.option_info** %11, align 8
  %84 = icmp ne %struct.option_info* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.view*, %struct.view** %5, align 8
  %87 = load i8**, i8*** %6, align 8
  %88 = load %struct.option_info*, %struct.option_info** %11, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @prompt_toggle_option(%struct.view* %86, i8** %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.option_info* %88, i32* %89)
  store i32 %90, i32* %4, align 4
  br label %123

91:                                               ; preds = %77
  %92 = load %struct.view*, %struct.view** %5, align 8
  %93 = getelementptr inbounds %struct.view, %struct.view* %92, i32 0, i32 1
  %94 = load %struct.view_column*, %struct.view_column** %93, align 8
  store %struct.view_column* %94, %struct.view_column** %12, align 8
  br label %95

95:                                               ; preds = %116, %91
  %96 = load %struct.view_column*, %struct.view_column** %12, align 8
  %97 = icmp ne %struct.view_column* %96, null
  br i1 %97, label %98, label %120

98:                                               ; preds = %95
  %99 = load %struct.view_column*, %struct.view_column** %12, align 8
  %100 = getelementptr inbounds %struct.view_column, %struct.view_column* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.view_column*, %struct.view_column** %12, align 8
  %103 = getelementptr inbounds %struct.view_column, %struct.view_column* %102, i32 0, i32 0
  %104 = load i8*, i8** %8, align 8
  %105 = call %struct.option_info* @find_column_option_info(i32 %101, i32* %103, i8* %104, %struct.option_info* %10, i8** %13)
  store %struct.option_info* %105, %struct.option_info** %11, align 8
  %106 = load %struct.option_info*, %struct.option_info** %11, align 8
  %107 = icmp ne %struct.option_info* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load %struct.view*, %struct.view** %5, align 8
  %110 = load i8**, i8*** %6, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load %struct.option_info*, %struct.option_info** %11, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @prompt_toggle_option(%struct.view* %109, i8** %110, i8* %111, %struct.option_info* %112, i32* %113)
  store i32 %114, i32* %4, align 4
  br label %123

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.view_column*, %struct.view_column** %12, align 8
  %118 = getelementptr inbounds %struct.view_column, %struct.view_column* %117, i32 0, i32 2
  %119 = load %struct.view_column*, %struct.view_column** %118, align 8
  store %struct.view_column* %119, %struct.view_column** %12, align 8
  br label %95

120:                                              ; preds = %95
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %121)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %108, %85, %74, %46, %29
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @enum_equals_static(i8*, i8*, i64) #1

declare dso_local i32 @view_has_flags(%struct.view*, i32) #1

declare dso_local i32 @sort_view(%struct.view*, i32) #1

declare dso_local i32 @success(i8*, i8*, i8*) #1

declare dso_local i8* @view_column_name(i32) #1

declare dso_local i32 @get_sort_field(%struct.view*) #1

declare dso_local %struct.option_info* @find_option_info(i32, i32, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @prompt_toggle_option(%struct.view*, i8**, i8*, %struct.option_info*, i32*) #1

declare dso_local %struct.option_info* @find_column_option_info(i32, i32*, i8*, %struct.option_info*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
