; ModuleID = '/home/carl/AnghaBench/tig/src/extr_grep.c_grep_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_grep.c_grep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.grep_state* }
%struct.grep_state = type { i32 }
%struct.view_column = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@opt_cmdline_args = common dso_local global i32* null, align 8
@grep_argv = common dso_local global i32* null, align 8
@grep_args = common dso_local global i32* null, align 8
@ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@VIEW_COLUMN_FILE_NAME = common dso_local global i32 0, align 4
@FILENAME_NO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @grep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.grep_state*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.view_column*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.view*, %struct.view** %4, align 8
  %11 = getelementptr inbounds %struct.view, %struct.view* %10, i32 0, i32 0
  %12 = load %struct.grep_state*, %struct.grep_state** %11, align 8
  store %struct.grep_state* %12, %struct.grep_state** %6, align 8
  store i8** null, i8*** %7, align 8
  %13 = load %struct.view*, %struct.view** %4, align 8
  %14 = call i64 @is_initial_view(%struct.view* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32*, i32** @opt_cmdline_args, align 8
  store i32* %17, i32** @grep_argv, align 8
  store i32* null, i32** @opt_cmdline_args, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32*, i32** @grep_args, align 8
  %20 = call i32 @argv_append_array(i8*** %7, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32*, i32** @grep_argv, align 8
  %24 = call i32 @argv_append_array(i8*** %7, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %22
  %29 = load %struct.view*, %struct.view** %4, align 8
  %30 = load i32, i32* @VIEW_COLUMN_FILE_NAME, align 4
  %31 = call %struct.view_column* @get_view_column(%struct.view* %29, i32 %30)
  store %struct.view_column* %31, %struct.view_column** %9, align 8
  %32 = load %struct.view_column*, %struct.view_column** %9, align 8
  %33 = icmp ne %struct.view_column* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.view_column*, %struct.view_column** %9, align 8
  %36 = getelementptr inbounds %struct.view_column, %struct.view_column* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FILENAME_NO, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %34, %28
  %43 = phi i1 [ true, %28 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.grep_state*, %struct.grep_state** %6, align 8
  %46 = getelementptr inbounds %struct.grep_state, %struct.grep_state* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.view*, %struct.view** %4, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @begin_update(%struct.view* %47, i32* null, i8** %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i8**, i8*** %7, align 8
  %52 = call i32 @argv_free(i8** %51)
  %53 = load i8**, i8*** %7, align 8
  %54 = call i32 @free(i8** %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %42, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @is_initial_view(%struct.view*) #1

declare dso_local i32 @argv_append_array(i8***, i32*) #1

declare dso_local %struct.view_column* @get_view_column(%struct.view*, i32) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i8**, i32) #1

declare dso_local i32 @argv_free(i8**) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
