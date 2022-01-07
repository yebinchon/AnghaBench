; ModuleID = '/home/carl/AnghaBench/tig/src/extr_pager.c_add_pager_refs.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_pager.c_add_pager_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.ref = type { i32, %struct.ref* }
%struct.ref_format = type { i32, i32 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Refs: \00", align 1
@VIEW_ADD_DESCRIBE_REF = common dso_local global i32 0, align 4
@LINE_PP_REFS = common dso_local global i32 0, align 4
@opt_reference_format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, i8*)* @add_pager_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pager_refs(%struct.view* %0, i8* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ref*, align 8
  %12 = alloca %struct.ref_format*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @SIZEOF_STR, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.ref* @get_ref_list(i8* %17)
  store %struct.ref* %18, %struct.ref** %7, align 8
  %19 = load %struct.ref*, %struct.ref** %7, align 8
  %20 = icmp ne %struct.ref* %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %2
  %22 = load %struct.view*, %struct.view** %3, align 8
  %23 = load i32, i32* @VIEW_ADD_DESCRIBE_REF, align 4
  %24 = call i64 @view_has_flags(%struct.view* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = call i64 (...) @refs_contain_tag()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.view*, %struct.view** %3, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @LINE_PP_REFS, align 4
  %33 = call i32 @add_line_text(%struct.view* %30, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %26, %21
  store i32 1, i32* %10, align 4
  br label %70

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %58, %35
  %37 = load %struct.ref*, %struct.ref** %7, align 8
  %38 = icmp ne %struct.ref* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load %struct.ref*, %struct.ref** %7, align 8
  store %struct.ref* %40, %struct.ref** %11, align 8
  %41 = load i32, i32* @opt_reference_format, align 4
  %42 = load %struct.ref*, %struct.ref** %11, align 8
  %43 = call %struct.ref_format* @get_ref_format(i32 %41, %struct.ref* %42)
  store %struct.ref_format* %43, %struct.ref_format** %12, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.ref_format*, %struct.ref_format** %12, align 8
  %46 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ref*, %struct.ref** %11, align 8
  %49 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ref_format*, %struct.ref_format** %12, align 8
  %52 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @string_format_from(i8* %16, i64* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %47, i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %70

57:                                               ; preds = %39
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.ref*, %struct.ref** %7, align 8
  %60 = getelementptr inbounds %struct.ref, %struct.ref* %59, i32 0, i32 1
  %61 = load %struct.ref*, %struct.ref** %60, align 8
  store %struct.ref* %61, %struct.ref** %7, align 8
  br label %36

62:                                               ; preds = %36
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %70

66:                                               ; preds = %62
  %67 = load %struct.view*, %struct.view** %3, align 8
  %68 = load i32, i32* @LINE_PP_REFS, align 4
  %69 = call i32 @add_line_text(%struct.view* %67, i8* %16, i32 %68)
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %65, %56, %34
  %71 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %10, align 4
  switch i32 %72, label %74 [
    i32 0, label %73
    i32 1, label %73
  ]

73:                                               ; preds = %70, %70
  ret void

74:                                               ; preds = %70
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ref* @get_ref_list(i8*) #2

declare dso_local i64 @view_has_flags(%struct.view*, i32) #2

declare dso_local i64 @refs_contain_tag(...) #2

declare dso_local i32 @add_line_text(%struct.view*, i8*, i32) #2

declare dso_local %struct.ref_format* @get_ref_format(i32, %struct.ref*) #2

declare dso_local i32 @string_format_from(i8*, i64*, i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
