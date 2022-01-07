; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_push_view_history_state.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_push_view_history_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view_state = type { %struct.view_state*, %struct.position, %struct.view_state* }
%struct.position = type { i32 }
%struct.view_history = type { i64, i32, %struct.view_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.view_state* @push_view_history_state(%struct.view_history* %0, %struct.position* %1, i8* %2) #0 {
  %4 = alloca %struct.view_state*, align 8
  %5 = alloca %struct.view_history*, align 8
  %6 = alloca %struct.position*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.view_state*, align 8
  store %struct.view_history* %0, %struct.view_history** %5, align 8
  store %struct.position* %1, %struct.position** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.view_history*, %struct.view_history** %5, align 8
  %10 = getelementptr inbounds %struct.view_history, %struct.view_history* %9, i32 0, i32 2
  %11 = load %struct.view_state*, %struct.view_state** %10, align 8
  store %struct.view_state* %11, %struct.view_state** %8, align 8
  %12 = load %struct.view_state*, %struct.view_state** %8, align 8
  %13 = icmp ne %struct.view_state* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.view_history*, %struct.view_history** %5, align 8
  %19 = getelementptr inbounds %struct.view_history, %struct.view_history* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.view_state*, %struct.view_state** %8, align 8
  %24 = getelementptr inbounds %struct.view_state, %struct.view_state* %23, i32 0, i32 0
  %25 = load %struct.view_state*, %struct.view_state** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.view_history*, %struct.view_history** %5, align 8
  %28 = getelementptr inbounds %struct.view_history, %struct.view_history* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memcmp(%struct.view_state* %25, i8* %26, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store %struct.view_state* null, %struct.view_state** %4, align 8
  br label %81

33:                                               ; preds = %22, %17, %14, %3
  %34 = load %struct.view_history*, %struct.view_history** %5, align 8
  %35 = getelementptr inbounds %struct.view_history, %struct.view_history* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 24, %36
  %38 = call %struct.view_state* @calloc(i32 1, i64 %37)
  store %struct.view_state* %38, %struct.view_state** %8, align 8
  %39 = load %struct.view_state*, %struct.view_state** %8, align 8
  %40 = icmp ne %struct.view_state* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store %struct.view_state* null, %struct.view_state** %4, align 8
  br label %81

42:                                               ; preds = %33
  %43 = load %struct.view_history*, %struct.view_history** %5, align 8
  %44 = getelementptr inbounds %struct.view_history, %struct.view_history* %43, i32 0, i32 2
  %45 = load %struct.view_state*, %struct.view_state** %44, align 8
  %46 = load %struct.view_state*, %struct.view_state** %8, align 8
  %47 = getelementptr inbounds %struct.view_state, %struct.view_state* %46, i32 0, i32 2
  store %struct.view_state* %45, %struct.view_state** %47, align 8
  %48 = load %struct.view_state*, %struct.view_state** %8, align 8
  %49 = load %struct.view_history*, %struct.view_history** %5, align 8
  %50 = getelementptr inbounds %struct.view_history, %struct.view_history* %49, i32 0, i32 2
  store %struct.view_state* %48, %struct.view_state** %50, align 8
  %51 = load %struct.view_history*, %struct.view_history** %5, align 8
  %52 = getelementptr inbounds %struct.view_history, %struct.view_history* %51, i32 0, i32 1
  %53 = call i32 @clear_position(i32* %52)
  %54 = load %struct.view_state*, %struct.view_state** %8, align 8
  %55 = getelementptr inbounds %struct.view_state, %struct.view_state* %54, i32 0, i32 1
  %56 = load %struct.position*, %struct.position** %6, align 8
  %57 = bitcast %struct.position* %55 to i8*
  %58 = bitcast %struct.position* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.view_state*, %struct.view_state** %8, align 8
  %60 = getelementptr inbounds %struct.view_state, %struct.view_state* %59, i64 1
  %61 = load %struct.view_state*, %struct.view_state** %8, align 8
  %62 = getelementptr inbounds %struct.view_state, %struct.view_state* %61, i32 0, i32 0
  store %struct.view_state* %60, %struct.view_state** %62, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %42
  %66 = load %struct.view_history*, %struct.view_history** %5, align 8
  %67 = getelementptr inbounds %struct.view_history, %struct.view_history* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.view_state*, %struct.view_state** %8, align 8
  %72 = getelementptr inbounds %struct.view_state, %struct.view_state* %71, i32 0, i32 0
  %73 = load %struct.view_state*, %struct.view_state** %72, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.view_history*, %struct.view_history** %5, align 8
  %76 = getelementptr inbounds %struct.view_history, %struct.view_history* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memcpy(%struct.view_state* %73, i8* %74, i64 %77)
  br label %79

79:                                               ; preds = %70, %65, %42
  %80 = load %struct.view_state*, %struct.view_state** %8, align 8
  store %struct.view_state* %80, %struct.view_state** %4, align 8
  br label %81

81:                                               ; preds = %79, %41, %32
  %82 = load %struct.view_state*, %struct.view_state** %4, align 8
  ret %struct.view_state* %82
}

declare dso_local i32 @memcmp(%struct.view_state*, i8*, i64) #1

declare dso_local %struct.view_state* @calloc(i32, i64) #1

declare dso_local i32 @clear_position(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.view_state*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
