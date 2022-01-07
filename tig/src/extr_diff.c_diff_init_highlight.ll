; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_init_highlight.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_init_highlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.io, i32 }
%struct.io = type { i32 }
%struct.diff_state = type { i32, %struct.io }
%struct.app_external = type { i8**, i32 }

@opt_diff_highlight = common dso_local global i32* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IO_RP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Failed to run %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_init_highlight(%struct.view* %0, %struct.diff_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.diff_state*, align 8
  %6 = alloca %struct.app_external*, align 8
  %7 = alloca %struct.io, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.diff_state* %1, %struct.diff_state** %5, align 8
  %8 = load i32*, i32** @opt_diff_highlight, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** @opt_diff_highlight, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %63

16:                                               ; preds = %10
  %17 = load i32*, i32** @opt_diff_highlight, align 8
  %18 = call %struct.app_external* @app_diff_highlight_load(i32* %17)
  store %struct.app_external* %18, %struct.app_external** %6, align 8
  %19 = load %struct.app_external*, %struct.app_external** %6, align 8
  %20 = getelementptr inbounds %struct.app_external, %struct.app_external* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = load %struct.app_external*, %struct.app_external** %6, align 8
  %26 = getelementptr inbounds %struct.app_external, %struct.app_external* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  br label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* @IO_RP, align 4
  %31 = load %struct.view*, %struct.view** %4, align 8
  %32 = getelementptr inbounds %struct.view, %struct.view* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.app_external*, %struct.app_external** %6, align 8
  %35 = getelementptr inbounds %struct.app_external, %struct.app_external* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.app_external*, %struct.app_external** %6, align 8
  %38 = getelementptr inbounds %struct.app_external, %struct.app_external* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load %struct.view*, %struct.view** %4, align 8
  %41 = getelementptr inbounds %struct.view, %struct.view* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.io, %struct.io* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @io_exec(%struct.io* %7, i32 %30, i32 %33, i32 %36, i8** %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = load i32*, i32** @opt_diff_highlight, align 8
  %48 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %29
  %50 = load %struct.diff_state*, %struct.diff_state** %5, align 8
  %51 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %50, i32 0, i32 1
  %52 = load %struct.view*, %struct.view** %4, align 8
  %53 = getelementptr inbounds %struct.view, %struct.view* %52, i32 0, i32 0
  %54 = bitcast %struct.io* %51 to i8*
  %55 = bitcast %struct.io* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load %struct.view*, %struct.view** %4, align 8
  %57 = getelementptr inbounds %struct.view, %struct.view* %56, i32 0, i32 0
  %58 = bitcast %struct.io* %57 to i8*
  %59 = bitcast %struct.io* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = load %struct.diff_state*, %struct.diff_state** %5, align 8
  %61 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %49, %46, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.app_external* @app_diff_highlight_load(i32*) #1

declare dso_local i32 @io_exec(%struct.io*, i32, i32, i32, i8**, i32) #1

declare dso_local i32 @error(i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
