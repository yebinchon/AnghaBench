; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_blame_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_blame_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32 }
%struct.line = type { %struct.blame* }
%struct.blame = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@OPEN_SPLIT = common dso_local global i32 0, align 4
@OPEN_DEFAULT = common dso_local global i32 0, align 4
@diff_view = common dso_local global %struct.view zeroinitializer, align 4
@encoding_arg = common dso_local global i32 0, align 4
@NULL_ID = common dso_local global i32 0, align 4
@REQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @blame_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blame_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.blame*, align 8
  %10 = alloca %struct.view*, align 8
  %11 = alloca [1 x i8*], align 8
  %12 = alloca [1 x i8*], align 8
  %13 = alloca i8**, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %14 = load %struct.view*, %struct.view** %5, align 8
  %15 = call i64 @view_is_displayed(%struct.view* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @OPEN_SPLIT, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @OPEN_DEFAULT, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %8, align 4
  %23 = load %struct.line*, %struct.line** %7, align 8
  %24 = getelementptr inbounds %struct.line, %struct.line* %23, i32 0, i32 0
  %25 = load %struct.blame*, %struct.blame** %24, align 8
  store %struct.blame* %25, %struct.blame** %9, align 8
  store %struct.view* @diff_view, %struct.view** %10, align 8
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %129 [
    i32 128, label %27
    i32 129, label %27
    i32 131, label %42
    i32 130, label %45
  ]

27:                                               ; preds = %21, %21
  %28 = load %struct.blame*, %struct.blame** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 128
  %31 = zext i1 %30 to i32
  %32 = call i32 @check_blame_commit(%struct.blame* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %131

35:                                               ; preds = %27
  %36 = load %struct.view*, %struct.view** %5, align 8
  %37 = load %struct.blame*, %struct.blame** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 129
  %40 = zext i1 %39 to i32
  %41 = call i32 @blame_go_forward(%struct.view* %36, %struct.blame* %37, i32 %40)
  br label %131

42:                                               ; preds = %21
  %43 = load %struct.view*, %struct.view** %5, align 8
  %44 = call i32 @blame_go_back(%struct.view* %43)
  br label %131

45:                                               ; preds = %21
  %46 = load %struct.blame*, %struct.blame** %9, align 8
  %47 = call i32 @check_blame_commit(%struct.blame* %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %131

50:                                               ; preds = %45
  %51 = load %struct.view*, %struct.view** %10, align 8
  %52 = call i64 @view_is_displayed(%struct.view* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.blame*, %struct.blame** %9, align 8
  %56 = getelementptr inbounds %struct.blame, %struct.blame* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.view*, %struct.view** %10, align 8
  %61 = getelementptr inbounds %struct.view, %struct.view* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strcmp(i32 %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  br label %131

66:                                               ; preds = %54, %50
  %67 = load %struct.blame*, %struct.blame** %9, align 8
  %68 = getelementptr inbounds %struct.blame, %struct.blame* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @string_rev_is_null(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %124

74:                                               ; preds = %66
  %75 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i64 0, i64 0
  %76 = load i32, i32* @encoding_arg, align 4
  %77 = call i32 (...) @diff_context_arg()
  %78 = call i32 (...) @ignore_space_arg()
  %79 = load %struct.blame*, %struct.blame** %9, align 8
  %80 = getelementptr inbounds %struct.blame, %struct.blame* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @GIT_DIFF_BLAME(i32 %76, i32 %77, i32 %78, i32 %83)
  store i8* %84, i8** %75, align 8
  %85 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  %86 = load i32, i32* @encoding_arg, align 4
  %87 = call i32 (...) @diff_context_arg()
  %88 = call i32 (...) @ignore_space_arg()
  %89 = load %struct.blame*, %struct.blame** %9, align 8
  %90 = getelementptr inbounds %struct.blame, %struct.blame* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @GIT_DIFF_BLAME_NO_PARENT(i32 %86, i32 %87, i32 %88, i32 %93)
  store i8* %94, i8** %85, align 8
  %95 = load %struct.blame*, %struct.blame** %9, align 8
  %96 = getelementptr inbounds %struct.blame, %struct.blame* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %74
  %103 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i64 0, i64 0
  br label %106

104:                                              ; preds = %74
  %105 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i8** [ %103, %102 ], [ %105, %104 ]
  store i8** %107, i8*** %13, align 8
  %108 = load %struct.view*, %struct.view** %5, align 8
  %109 = load %struct.view*, %struct.view** %10, align 8
  %110 = load i8**, i8*** %13, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @open_argv(%struct.view* %108, %struct.view* %109, i8** %110, i32* null, i32 %111)
  %113 = load %struct.view*, %struct.view** %10, align 8
  %114 = getelementptr inbounds %struct.view, %struct.view* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load %struct.view*, %struct.view** %10, align 8
  %119 = getelementptr inbounds %struct.view, %struct.view* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @NULL_ID, align 4
  %122 = call i32 @string_copy_rev(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %106
  br label %128

124:                                              ; preds = %66
  %125 = load %struct.view*, %struct.view** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @open_diff_view(%struct.view* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %123
  br label %131

129:                                              ; preds = %21
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %4, align 4
  br label %133

131:                                              ; preds = %128, %65, %49, %42, %35, %34
  %132 = load i32, i32* @REQ_NONE, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @check_blame_commit(%struct.blame*, i32) #1

declare dso_local i32 @blame_go_forward(%struct.view*, %struct.blame*, i32) #1

declare dso_local i32 @blame_go_back(%struct.view*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @string_rev_is_null(i32) #1

declare dso_local i8* @GIT_DIFF_BLAME(i32, i32, i32, i32) #1

declare dso_local i32 @diff_context_arg(...) #1

declare dso_local i32 @ignore_space_arg(...) #1

declare dso_local i8* @GIT_DIFF_BLAME_NO_PARENT(i32, i32, i32, i32) #1

declare dso_local i32 @open_argv(%struct.view*, %struct.view*, i8**, i32*, i32) #1

declare dso_local i32 @string_copy_rev(i32, i32) #1

declare dso_local i32 @open_diff_view(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
