; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stash.c_stash_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stash.c_stash_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.line = type { i32 }

@OPEN_SPLIT = common dso_local global i32 0, align 4
@OPEN_DEFAULT = common dso_local global i32 0, align 4
@diff_view = common dso_local global %struct.view zeroinitializer, align 8
@display = common dso_local global %struct.view** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@encoding_arg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"--pretty=fuller\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"--root\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"--patch-with-stat\00", align 1
@DIFF_ARGS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"--no-color\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%(stash)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to format argument\00", align 1
@OPEN_PREPARED = common dso_local global i32 0, align 4
@REQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stash_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.view*, align 8
  %10 = alloca [14 x i8*], align 16
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %11 = load %struct.view*, %struct.view** %5, align 8
  %12 = call i64 @view_is_displayed(%struct.view* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 128
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @OPEN_SPLIT, align 4
  br label %21

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @OPEN_DEFAULT, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %8, align 4
  store %struct.view* @diff_view, %struct.view** %9, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %87 [
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %21, %21
  %25 = load %struct.view*, %struct.view** %5, align 8
  %26 = call i64 @view_is_displayed(%struct.view* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.view**, %struct.view*** @display, align 8
  %30 = getelementptr inbounds %struct.view*, %struct.view** %29, i64 0
  %31 = load %struct.view*, %struct.view** %30, align 8
  %32 = load %struct.view*, %struct.view** %5, align 8
  %33 = icmp ne %struct.view* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.view*, %struct.view** %5, align 8
  %36 = call i32 @maximize_view(%struct.view* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %28, %24
  %38 = load %struct.view*, %struct.view** %9, align 8
  %39 = call i64 @view_is_displayed(%struct.view* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.view*, %struct.view** %5, align 8
  %43 = getelementptr inbounds %struct.view, %struct.view* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.view*, %struct.view** %9, align 8
  %48 = getelementptr inbounds %struct.view, %struct.view* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcmp(i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %41, %37
  %53 = getelementptr inbounds [14 x i8*], [14 x i8*]* %10, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** @encoding_arg, align 8
  store i8* %57, i8** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %59, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = call i8* (...) @show_notes_arg()
  store i8* %62, i8** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 1
  %64 = call i8* (...) @diff_context_arg()
  store i8* %64, i8** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 1
  %66 = call i8* (...) @ignore_space_arg()
  store i8* %66, i8** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 1
  %68 = load i8*, i8** @DIFF_ARGS, align 8
  store i8* %68, i8** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %69, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %70, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  store i8* null, i8** %71, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.view, %struct.view* @diff_view, i32 0, i32 1), align 8
  %73 = getelementptr inbounds [14 x i8*], [14 x i8*]* %10, i64 0, i64 0
  %74 = call i32 @argv_format(%struct.TYPE_2__* %72, i32* getelementptr inbounds (%struct.view, %struct.view* @diff_view, i32 0, i32 0), i8** %73, i32 0, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %52
  %77 = call i32 @report(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %84

78:                                               ; preds = %52
  %79 = load %struct.view*, %struct.view** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @OPEN_PREPARED, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @open_view(%struct.view* %79, %struct.view* @diff_view, i32 %82)
  br label %84

84:                                               ; preds = %78, %76
  br label %85

85:                                               ; preds = %84, %41
  %86 = load i32, i32* @REQ_NONE, align 4
  store i32 %86, i32* %4, align 4
  br label %92

87:                                               ; preds = %21
  %88 = load %struct.view*, %struct.view** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.line*, %struct.line** %7, align 8
  %91 = call i32 @main_request(%struct.view* %88, i32 %89, %struct.line* %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %85
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @maximize_view(%struct.view*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i8* @show_notes_arg(...) #1

declare dso_local i8* @diff_context_arg(...) #1

declare dso_local i8* @ignore_space_arg(...) #1

declare dso_local i32 @argv_format(%struct.TYPE_2__*, i32*, i8**, i32, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @open_view(%struct.view*, %struct.view*, i32) #1

declare dso_local i32 @main_request(%struct.view*, i32, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
