; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_pop_view_history_state.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_pop_view_history_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view_history = type { i32, %struct.view_state*, %struct.position }
%struct.view_state = type { %struct.position, i32, %struct.view_state* }
%struct.position = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop_view_history_state(%struct.view_history* %0, %struct.position* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view_history*, align 8
  %6 = alloca %struct.position*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.view_state*, align 8
  store %struct.view_history* %0, %struct.view_history** %5, align 8
  store %struct.position* %1, %struct.position** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.view_history*, %struct.view_history** %5, align 8
  %10 = getelementptr inbounds %struct.view_history, %struct.view_history* %9, i32 0, i32 1
  %11 = load %struct.view_state*, %struct.view_state** %10, align 8
  store %struct.view_state* %11, %struct.view_state** %8, align 8
  %12 = load %struct.view_history*, %struct.view_history** %5, align 8
  %13 = call i64 @view_history_is_empty(%struct.view_history* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load %struct.view_history*, %struct.view_history** %5, align 8
  %18 = getelementptr inbounds %struct.view_history, %struct.view_history* %17, i32 0, i32 2
  %19 = load %struct.view_state*, %struct.view_state** %8, align 8
  %20 = getelementptr inbounds %struct.view_state, %struct.view_state* %19, i32 0, i32 0
  %21 = bitcast %struct.position* %18 to i8*
  %22 = bitcast %struct.position* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 4, i1 false)
  %23 = load %struct.view_state*, %struct.view_state** %8, align 8
  %24 = getelementptr inbounds %struct.view_state, %struct.view_state* %23, i32 0, i32 2
  %25 = load %struct.view_state*, %struct.view_state** %24, align 8
  %26 = load %struct.view_history*, %struct.view_history** %5, align 8
  %27 = getelementptr inbounds %struct.view_history, %struct.view_history* %26, i32 0, i32 1
  store %struct.view_state* %25, %struct.view_state** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %16
  %31 = load %struct.view_history*, %struct.view_history** %5, align 8
  %32 = getelementptr inbounds %struct.view_history, %struct.view_history* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.view_state*, %struct.view_state** %8, align 8
  %38 = getelementptr inbounds %struct.view_state, %struct.view_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.view_history*, %struct.view_history** %5, align 8
  %41 = getelementptr inbounds %struct.view_history, %struct.view_history* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memcpy(i8* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %30, %16
  %45 = load %struct.position*, %struct.position** %6, align 8
  %46 = icmp ne %struct.position* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.position*, %struct.position** %6, align 8
  %49 = load %struct.view_state*, %struct.view_state** %8, align 8
  %50 = getelementptr inbounds %struct.view_state, %struct.view_state* %49, i32 0, i32 0
  %51 = bitcast %struct.position* %48 to i8*
  %52 = bitcast %struct.position* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 8 %52, i64 4, i1 false)
  br label %53

53:                                               ; preds = %47, %44
  %54 = load %struct.view_state*, %struct.view_state** %8, align 8
  %55 = call i32 @free(%struct.view_state* %54)
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @view_history_is_empty(%struct.view_history*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @free(%struct.view_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
