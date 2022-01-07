; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_highlight.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_highlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.diff_stat_context = type { i8*, i32, i32, i32 }

@LINE_DIFF_ADD = common dso_local global i32 0, align 4
@LINE_DIFF_ADD_HIGHLIGHT = common dso_local global i32 0, align 4
@LINE_DIFF_DEL_HIGHLIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\1B[7m\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[27m\00", align 1
@__const.diff_common_highlight.codes = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i8*, i32)* @diff_common_highlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_common_highlight(%struct.view* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_stat_context, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8*], align 16
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %7, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %7, i32 0, i32 1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %7, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %7, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LINE_DIFF_ADD, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @LINE_DIFF_ADD_HIGHLIGHT, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @LINE_DIFF_DEL_HIGHLIGHT, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %8, align 4
  %27 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([2 x i8*]* @__const.diff_common_highlight.codes to i8*), i64 16, i1 false)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %30, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %44, %25
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @diff_common_add_cell_until(%struct.diff_stat_context* %7, i8* %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  %47 = srem i32 %46, 2
  store i32 %47, i32* %11, align 4
  br label %32

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %7, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @strlen(i32 %50)
  %52 = call i32 @diff_common_add_cell(%struct.diff_stat_context* %7, i32 %51, i32 1)
  %53 = load %struct.view*, %struct.view** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @diff_common_add_line(%struct.view* %53, i8* %54, i32 %55, %struct.diff_stat_context* %7)
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @diff_common_add_cell_until(%struct.diff_stat_context*, i8*, i32) #2

declare dso_local i32 @diff_common_add_cell(%struct.diff_stat_context*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @diff_common_add_line(%struct.view*, i8*, i32, %struct.diff_stat_context*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
