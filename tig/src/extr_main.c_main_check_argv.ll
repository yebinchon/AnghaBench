; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_check_argv.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_check_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_6__*, %struct.main_state* }
%struct.TYPE_6__ = type { i32* }
%struct.main_state = type { i32, i32 }
%struct.rev_flags = type { i32, i32, i64, i32 }
%struct.view_column = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"--graph\00", align 1
@VIEW_COLUMN_COMMIT_TITLE = common dso_local global i32 0, align 4
@opt_commit_order = common dso_local global i64 0, align 8
@COMMIT_ORDER_REVERSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--merge\00", align 1
@opt_rev_args = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"--boundary\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"--first-parent\00", align 1
@opt_diff_options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i8**)* @main_check_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_check_argv(%struct.view* %0, i8** %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.main_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rev_flags, align 8
  %10 = alloca %struct.view_column*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i8** %1, i8*** %4, align 8
  %11 = load %struct.view*, %struct.view** %3, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 1
  %13 = load %struct.main_state*, %struct.main_state** %12, align 8
  store %struct.main_state* %13, %struct.main_state** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %115, %2
  %15 = load i8**, i8*** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %118

21:                                               ; preds = %14
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = bitcast %struct.rev_flags* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %21
  %32 = load %struct.view*, %struct.view** %3, align 8
  %33 = load i32, i32* @VIEW_COLUMN_COMMIT_TITLE, align 4
  %34 = call %struct.view_column* @get_view_column(%struct.view* %32, i32 %33)
  store %struct.view_column* %34, %struct.view_column** %10, align 8
  %35 = load %struct.view_column*, %struct.view_column** %10, align 8
  %36 = icmp ne %struct.view_column* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.view_column*, %struct.view_column** %10, align 8
  %39 = getelementptr inbounds %struct.view_column, %struct.view_column* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i64, i64* @opt_commit_order, align 8
  %43 = load i64, i64* @COMMIT_ORDER_REVERSE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.main_state*, %struct.main_state** %5, align 8
  %47 = getelementptr inbounds %struct.main_state, %struct.main_state* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %37
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  br label %115

54:                                               ; preds = %21
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 @argv_append(i32* @opt_rev_args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %115

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load %struct.main_state*, %struct.main_state** %5, align 8
  %66 = getelementptr inbounds %struct.main_state, %struct.main_state* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @argv_append(i32* @opt_diff_options, i8* %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @argv_parse_rev_flag(i8* %70, %struct.rev_flags* %9)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %115

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rev_flags, %struct.rev_flags* %9, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr inbounds %struct.rev_flags, %struct.rev_flags* %9, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load %struct.main_state*, %struct.main_state** %5, align 8
  %85 = getelementptr inbounds %struct.main_state, %struct.main_state* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %79
  %87 = getelementptr inbounds %struct.rev_flags, %struct.rev_flags* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %8, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %86
  %97 = load %struct.view*, %struct.view** %3, align 8
  %98 = getelementptr inbounds %struct.view, %struct.view* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %96
  %105 = load %struct.view*, %struct.view** %3, align 8
  %106 = getelementptr inbounds %struct.view, %struct.view* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = call i32 @string_ncopy(i32* %109, i8* %110, i32 %112)
  br label %114

114:                                              ; preds = %104, %96, %86
  br label %115

115:                                              ; preds = %114, %73, %58, %49
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %14

118:                                              ; preds = %14
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local %struct.view_column* @get_view_column(%struct.view*, i32) #2

declare dso_local i32 @argv_append(i32*, i8*) #2

declare dso_local i32 @argv_parse_rev_flag(i8*, %struct.rev_flags*) #2

declare dso_local i32 @string_ncopy(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
