; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.line = type { i64, %struct.commit* }
%struct.commit = type { i32, i32 }
%struct.ref = type { i32 }

@LINE_STAT_STAGED = common dso_local global i64 0, align 8
@LINE_STAT_UNSTAGED = common dso_local global i64 0, align 8
@LINE_STAT_UNTRACKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.ref*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %7 = load %struct.line*, %struct.line** %4, align 8
  %8 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 1
  %9 = load %struct.commit*, %struct.commit** %8, align 8
  store %struct.commit* %9, %struct.commit** %5, align 8
  %10 = load %struct.line*, %struct.line** %4, align 8
  %11 = getelementptr inbounds %struct.line, %struct.line* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LINE_STAT_STAGED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.line*, %struct.line** %4, align 8
  %17 = getelementptr inbounds %struct.line, %struct.line* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LINE_STAT_UNSTAGED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.line*, %struct.line** %4, align 8
  %23 = getelementptr inbounds %struct.line, %struct.line* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LINE_STAT_UNTRACKED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %21, %15, %2
  %28 = load %struct.view*, %struct.view** %3, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.commit*, %struct.commit** %5, align 8
  %32 = getelementptr inbounds %struct.commit, %struct.commit* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.commit*, %struct.commit** %5, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strlen(i32 %36)
  %38 = call i32 @string_ncopy(i32 %30, i32 %33, i32 %37)
  %39 = load %struct.view*, %struct.view** %3, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.line*, %struct.line** %4, align 8
  %45 = getelementptr inbounds %struct.line, %struct.line* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @status_stage_info(i32 %43, i64 %46, i32* null)
  br label %68

48:                                               ; preds = %21
  %49 = load %struct.line*, %struct.line** %4, align 8
  %50 = load %struct.commit*, %struct.commit** %5, align 8
  %51 = call %struct.ref* @main_get_commit_refs(%struct.line* %49, %struct.commit* %50)
  store %struct.ref* %51, %struct.ref** %6, align 8
  %52 = load %struct.view*, %struct.view** %3, align 8
  %53 = getelementptr inbounds %struct.view, %struct.view* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.commit*, %struct.commit** %5, align 8
  %56 = getelementptr inbounds %struct.commit, %struct.commit* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @string_copy_rev(i32 %54, i32 %57)
  %59 = load %struct.ref*, %struct.ref** %6, align 8
  %60 = icmp ne %struct.ref* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load %struct.view*, %struct.view** %3, align 8
  %63 = getelementptr inbounds %struct.view, %struct.view* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.ref*, %struct.ref** %6, align 8
  %66 = call i32 @ref_update_env(%struct.TYPE_2__* %64, %struct.ref* %65, i32 1)
  br label %67

67:                                               ; preds = %61, %48
  br label %68

68:                                               ; preds = %67, %27
  %69 = load %struct.view*, %struct.view** %3, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.commit*, %struct.commit** %5, align 8
  %75 = getelementptr inbounds %struct.commit, %struct.commit* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @string_copy_rev(i32 %73, i32 %76)
  ret void
}

declare dso_local i32 @string_ncopy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @status_stage_info(i32, i64, i32*) #1

declare dso_local %struct.ref* @main_get_commit_refs(%struct.line*, %struct.commit*) #1

declare dso_local i32 @string_copy_rev(i32, i32) #1

declare dso_local i32 @ref_update_env(%struct.TYPE_2__*, %struct.ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
