; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_save_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_save_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_2__, %struct.line* }
%struct.TYPE_2__ = type { i64 }
%struct.line = type { i32 }
%struct.diff_state = type { %struct.TYPE_2__, i32, i32 }

@OPEN_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_save_line(%struct.view* %0, %struct.diff_state* %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.diff_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.diff_state* %1, %struct.diff_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @OPEN_RELOAD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %3
  %14 = load %struct.view*, %struct.view** %4, align 8
  %15 = getelementptr inbounds %struct.view, %struct.view* %14, i32 0, i32 1
  %16 = load %struct.line*, %struct.line** %15, align 8
  %17 = load %struct.view*, %struct.view** %4, align 8
  %18 = getelementptr inbounds %struct.view, %struct.view* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.line, %struct.line* %16, i64 %20
  store %struct.line* %21, %struct.line** %7, align 8
  %22 = load %struct.view*, %struct.view** %4, align 8
  %23 = load %struct.line*, %struct.line** %7, align 8
  %24 = call i64 @view_has_line(%struct.view* %22, %struct.line* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load %struct.view*, %struct.view** %4, align 8
  %28 = load %struct.line*, %struct.line** %7, align 8
  %29 = call i8* @diff_get_pathname(%struct.view* %27, %struct.line* %28)
  br label %31

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ null, %30 ]
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @get_path(i8* %36)
  %38 = load %struct.diff_state*, %struct.diff_state** %5, align 8
  %39 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.view*, %struct.view** %4, align 8
  %41 = load %struct.line*, %struct.line** %7, align 8
  %42 = call i32 @diff_get_lineno(%struct.view* %40, %struct.line* %41)
  %43 = load %struct.diff_state*, %struct.diff_state** %5, align 8
  %44 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.diff_state*, %struct.diff_state** %5, align 8
  %46 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %45, i32 0, i32 0
  %47 = load %struct.view*, %struct.view** %4, align 8
  %48 = getelementptr inbounds %struct.view, %struct.view* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_2__* %46 to i8*
  %50 = bitcast %struct.TYPE_2__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  br label %51

51:                                               ; preds = %35, %31
  br label %52

52:                                               ; preds = %51, %3
  ret void
}

declare dso_local i64 @view_has_line(%struct.view*, %struct.line*) #1

declare dso_local i8* @diff_get_pathname(%struct.view*, %struct.line*) #1

declare dso_local i32 @get_path(i8*) #1

declare dso_local i32 @diff_get_lineno(%struct.view*, %struct.line*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
