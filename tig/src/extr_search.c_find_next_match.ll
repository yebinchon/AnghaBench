; ModuleID = '/home/carl/AnghaBench/tig/src/extr_search.c_find_next_match.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_search.c_find_next_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"No previous search\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown search request\00", align 1
@ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@opt_wrap_search = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"No match found for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @find_next_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_match(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.view*, %struct.view** %4, align 8
  %9 = getelementptr inbounds %struct.view, %struct.view* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.view*, %struct.view** %4, align 8
  %15 = getelementptr inbounds %struct.view, %struct.view* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.view*, %struct.view** %4, align 8
  %18 = getelementptr inbounds %struct.view, %struct.view* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @strcmp(i32* %16, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %13, %2
  %25 = load %struct.view*, %struct.view** %4, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @success(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  br label %82

34:                                               ; preds = %24
  %35 = load %struct.view*, %struct.view** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @setup_and_find_next(%struct.view* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %82

38:                                               ; preds = %13
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %42 [
    i32 129, label %40
    i32 131, label %40
    i32 128, label %41
    i32 130, label %41
  ]

40:                                               ; preds = %38, %38
  store i32 1, i32* %7, align 4
  br label %44

41:                                               ; preds = %38, %38
  store i32 -1, i32* %7, align 4
  br label %44

42:                                               ; preds = %38
  %43 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %3, align 4
  br label %82

44:                                               ; preds = %41, %40
  %45 = load %struct.view*, %struct.view** %4, align 8
  %46 = getelementptr inbounds %struct.view, %struct.view* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.view*, %struct.view** %4, align 8
  %51 = call i32 @find_matches(%struct.view* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %54, i32* %3, align 4
  br label %82

55:                                               ; preds = %49, %44
  %56 = load %struct.view*, %struct.view** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @find_next_match_line(%struct.view* %56, i32 %57, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i64, i64* @opt_wrap_search, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.view*, %struct.view** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @find_next_match_line(%struct.view* %66, i32 %67, i32 1)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %62, %55
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SUCCESS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  br label %80

75:                                               ; preds = %69
  %76 = load %struct.view*, %struct.view** %4, align 8
  %77 = getelementptr inbounds %struct.view, %struct.view* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 (i8*, ...) @success(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %78)
  br label %80

80:                                               ; preds = %75, %73
  %81 = phi i32 [ %74, %73 ], [ %79, %75 ]
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %53, %42, %34, %32
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @success(i8*, ...) #1

declare dso_local i32 @setup_and_find_next(%struct.view*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @find_matches(%struct.view*) #1

declare dso_local i32 @find_next_match_line(%struct.view*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
