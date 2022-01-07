; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_graph_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_graph_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_dot = common dso_local global i32 0, align 4
@DEP_ORDER = common dso_local global i32 0, align 4
@DEP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"After\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@DEP_REQUIRE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Requires\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Requisite\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"darkblue\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Wants\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"grey66\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Conflicts\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i8**, i8**)* @graph_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_one(i32* %0, i32* %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32, i32* @arg_dot, align 4
  %18 = load i32, i32* @DEP_ORDER, align 4
  %19 = load i32, i32* @DEP_ALL, align 4
  %20 = call i64 @IN_SET(i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8**, i8*** %10, align 8
  %27 = load i8**, i8*** %11, align 8
  %28 = call i32 @graph_one_property(i32* %23, i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %25, i8** %26, i8** %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %86

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i32, i32* @arg_dot, align 4
  %36 = load i32, i32* @DEP_REQUIRE, align 4
  %37 = load i32, i32* @DEP_ALL, align 4
  %38 = call i64 @IN_SET(i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %85

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i8**, i8*** %9, align 8
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8**, i8*** %11, align 8
  %46 = call i32 @graph_one_property(i32* %41, i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %43, i8** %44, i8** %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %86

51:                                               ; preds = %40
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8**, i8*** %10, align 8
  %56 = load i8**, i8*** %11, align 8
  %57 = call i32 @graph_one_property(i32* %52, i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %54, i8** %55, i8** %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %86

62:                                               ; preds = %51
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i8**, i8*** %9, align 8
  %66 = load i8**, i8*** %10, align 8
  %67 = load i8**, i8*** %11, align 8
  %68 = call i32 @graph_one_property(i32* %63, i32* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %65, i8** %66, i8** %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %86

73:                                               ; preds = %62
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i8**, i8*** %9, align 8
  %77 = load i8**, i8*** %10, align 8
  %78 = load i8**, i8*** %11, align 8
  %79 = call i32 @graph_one_property(i32* %74, i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %76, i8** %77, i8** %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %86

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %34
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %82, %71, %60, %49, %31
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @graph_one_property(i32*, i32*, i8*, i8*, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
