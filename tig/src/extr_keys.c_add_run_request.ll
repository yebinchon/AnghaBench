; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_add_run_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_add_run_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_request = type { %struct.keymap*, %struct.run_request_flags, i32 }
%struct.keymap = type { i32 }
%struct.run_request_flags = type { i32 }
%struct.key = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@run_request = common dso_local global %struct.run_request* null, align 8
@run_requests = common dso_local global i64 0, align 8
@ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@REQ_RUN_REQUESTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_run_request(%struct.keymap* %0, %struct.key* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.keymap*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.run_request*, align 8
  %11 = alloca %struct.run_request_flags, align 4
  %12 = alloca i32, align 4
  store %struct.keymap* %0, %struct.keymap** %6, align 8
  store %struct.key* %1, %struct.key** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = bitcast %struct.run_request_flags* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load i8**, i8*** %9, align 8
  %15 = call i32 @parse_run_request_flags(%struct.run_request_flags* %11, i8** %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load i64, i64* @run_requests, align 8
  %23 = call i32 @realloc_run_requests(%struct.run_request** @run_request, i64 %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %26, i32* %5, align 4
  br label %56

27:                                               ; preds = %21
  %28 = load %struct.run_request*, %struct.run_request** @run_request, align 8
  %29 = load i64, i64* @run_requests, align 8
  %30 = getelementptr inbounds %struct.run_request, %struct.run_request* %28, i64 %29
  %31 = getelementptr inbounds %struct.run_request, %struct.run_request* %30, i32 0, i32 2
  %32 = load i8**, i8*** %9, align 8
  %33 = call i32 @argv_copy(i32* %31, i8** %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %36, i32* %5, align 4
  br label %56

37:                                               ; preds = %27
  %38 = load %struct.run_request*, %struct.run_request** @run_request, align 8
  %39 = load i64, i64* @run_requests, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* @run_requests, align 8
  %41 = getelementptr inbounds %struct.run_request, %struct.run_request* %38, i64 %39
  store %struct.run_request* %41, %struct.run_request** %10, align 8
  %42 = load %struct.run_request*, %struct.run_request** %10, align 8
  %43 = getelementptr inbounds %struct.run_request, %struct.run_request* %42, i32 0, i32 1
  %44 = bitcast %struct.run_request_flags* %43 to i8*
  %45 = bitcast %struct.run_request_flags* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.keymap*, %struct.keymap** %6, align 8
  %47 = load %struct.run_request*, %struct.run_request** %10, align 8
  %48 = getelementptr inbounds %struct.run_request, %struct.run_request* %47, i32 0, i32 0
  store %struct.keymap* %46, %struct.keymap** %48, align 8
  %49 = load %struct.keymap*, %struct.keymap** %6, align 8
  %50 = load i64, i64* @REQ_RUN_REQUESTS, align 8
  %51 = load i64, i64* @run_requests, align 8
  %52 = add i64 %50, %51
  %53 = load %struct.key*, %struct.key** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @add_keybinding(%struct.keymap* %49, i64 %52, %struct.key* %53, i64 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %37, %35, %25, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_run_request_flags(%struct.run_request_flags*, i8**) #2

declare dso_local i32 @realloc_run_requests(%struct.run_request**, i64, i32) #2

declare dso_local i32 @argv_copy(i32*, i8**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @add_keybinding(%struct.keymap*, i64, %struct.key*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
