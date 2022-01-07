; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_add_commit.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_add_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.main_state* }
%struct.main_state = type { i64* }
%struct.commit = type { i32, i32 }
%struct.line = type { i64 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@opt_start_on_head = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.view*, i32, %struct.commit*, i8*, i32)* @main_add_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @main_add_commit(%struct.view* %0, i32 %1, %struct.commit* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.view*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.main_state*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.line*, align 8
  %18 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.commit* %2, %struct.commit** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.view*, %struct.view** %7, align 8
  %20 = getelementptr inbounds %struct.view, %struct.view* %19, i32 0, i32 0
  %21 = load %struct.main_state*, %struct.main_state** %20, align 8
  store %struct.main_state* %21, %struct.main_state** %12, align 8
  %22 = load i32, i32* @SIZEOF_STR, align 4
  %23 = sdiv i32 %22, 2
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %15, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %27 = trunc i64 %24 to i32
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = call i32 @string_expand(i8* %26, i32 %27, i8* %28, i64 %30, i32 1)
  store i8* %26, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.view*, %struct.view** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.line* @add_line_alloc(%struct.view* %34, %struct.commit** %14, i32 %35, i64 %36, i32 %37)
  store %struct.line* %38, %struct.line** %17, align 8
  %39 = load %struct.line*, %struct.line** %17, align 8
  %40 = icmp ne %struct.line* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %5
  store %struct.commit* null, %struct.commit** %6, align 8
  store i32 1, i32* %18, align 4
  br label %79

42:                                               ; preds = %5
  %43 = load %struct.commit*, %struct.commit** %14, align 8
  %44 = load %struct.commit*, %struct.commit** %9, align 8
  %45 = bitcast %struct.commit* %43 to i8*
  %46 = bitcast %struct.commit* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 8, i1 false)
  %47 = load %struct.commit*, %struct.commit** %14, align 8
  %48 = getelementptr inbounds %struct.commit, %struct.commit* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @strncpy(i32 %49, i8* %50, i64 %51)
  %53 = load %struct.commit*, %struct.commit** %9, align 8
  %54 = call i32 @memset(%struct.commit* %53, i32 0, i32 8)
  %55 = load %struct.main_state*, %struct.main_state** %12, align 8
  %56 = getelementptr inbounds %struct.main_state, %struct.main_state* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.view*, %struct.view** %7, align 8
  %60 = load %struct.line*, %struct.line** %17, align 8
  %61 = call i32 @view_column_info_update(%struct.view* %59, %struct.line* %60)
  %62 = load i64, i64* @opt_start_on_head, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %42
  %65 = load %struct.commit*, %struct.commit** %14, align 8
  %66 = getelementptr inbounds %struct.commit, %struct.commit* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @is_head_commit(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.view*, %struct.view** %7, align 8
  %72 = load %struct.line*, %struct.line** %17, align 8
  %73 = getelementptr inbounds %struct.line, %struct.line* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  %76 = call i32 @select_view_line(%struct.view* %71, i64 %75)
  br label %77

77:                                               ; preds = %70, %64, %42
  %78 = load %struct.commit*, %struct.commit** %14, align 8
  store %struct.commit* %78, %struct.commit** %6, align 8
  store i32 1, i32* %18, align 4
  br label %79

79:                                               ; preds = %77, %41
  %80 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load %struct.commit*, %struct.commit** %6, align 8
  ret %struct.commit* %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @string_expand(i8*, i32, i8*, i64, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.line* @add_line_alloc(%struct.view*, %struct.commit**, i32, i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @strncpy(i32, i8*, i64) #2

declare dso_local i32 @memset(%struct.commit*, i32, i32) #2

declare dso_local i32 @view_column_info_update(%struct.view*, %struct.line*) #2

declare dso_local i64 @is_head_commit(i32) #2

declare dso_local i32 @select_view_line(%struct.view*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
