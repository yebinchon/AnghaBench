; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_view_exec.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_view_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32, i32 }

@OPEN_FORWARD_STDIN = common dso_local global i32 0, align 4
@IO_RD_FORWARD_STDIN = common dso_local global i32 0, align 4
@OPEN_WITH_STDERR = common dso_local global i32 0, align 4
@IO_RD_WITH_STDERR = common dso_local global i32 0, align 4
@OPEN_SPLIT = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@opt_vertical_split = common dso_local global i32 0, align 4
@display = common dso_local global %struct.view** null, align 8
@.str = private unnamed_addr constant [11 x i8] c"COLUMNS=%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LINES=%d\00", align 1
@IO_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @view_exec(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [3 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = bitcast [64 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 64, i1 false)
  %18 = bitcast [64 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 64, i1 false)
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 1
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* null, i8** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @OPEN_FORWARD_STDIN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IO_RD_FORWARD_STDIN, align 4
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @OPEN_WITH_STDERR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @IO_RD_WITH_STDERR, align 4
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = call i32 (...) @displayed_views()
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @OPEN_SPLIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48, %40
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 2
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi i1 [ true, %48 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @stdscr, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @getmaxyx(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %56
  %66 = load i32, i32* @opt_vertical_split, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i64 @vertical_split_is_enabled(i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.view**, %struct.view*** @display, align 8
  %73 = getelementptr inbounds %struct.view*, %struct.view** %72, i64 0
  %74 = load %struct.view*, %struct.view** %73, align 8
  %75 = load %struct.view*, %struct.view** %3, align 8
  %76 = icmp eq %struct.view* %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @apply_vertical_split(i32 %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %14, align 4
  br label %89

86:                                               ; preds = %71
  %87 = load i32, i32* %16, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %65, %56
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @MAX(i32 0, i32 %92)
  %94 = call i32 @string_format(i8* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @string_format(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.view*, %struct.view** %3, align 8
  %99 = getelementptr inbounds %struct.view, %struct.view* %98, i32 0, i32 2
  %100 = load i32, i32* @IO_RD, align 4
  %101 = load %struct.view*, %struct.view** %3, align 8
  %102 = getelementptr inbounds %struct.view, %struct.view* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %105 = load %struct.view*, %struct.view** %3, align 8
  %106 = getelementptr inbounds %struct.view, %struct.view* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @io_exec(i32* %99, i32 %100, i32 %103, i8** %104, i32 %107, i32 %108)
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @displayed_views(...) #2

declare dso_local i32 @getmaxyx(i32, i32, i32) #2

declare dso_local i64 @vertical_split_is_enabled(i32, i32, i32) #2

declare dso_local i32 @apply_vertical_split(i32) #2

declare dso_local i32 @string_format(i8*, i8*, i32) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32 @io_exec(i32*, i32, i32, i8**, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
