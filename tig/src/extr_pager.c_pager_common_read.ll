; ModuleID = '/home/carl/AnghaBench/tig/src/extr_pager.c_pager_common_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_pager.c_pager_common_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i64 }

@opt_wrap_lines = common dso_local global i64 0, align 8
@LINE_COMMIT = common dso_local global i64 0, align 8
@VIEW_ADD_PAGER_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"commit \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pager_common_read(%struct.view* %0, i8* %1, i32 %2, %struct.line** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.view*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.line**, align 8
  %10 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.line** %3, %struct.line*** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %56

14:                                               ; preds = %4
  %15 = load i64, i64* @opt_wrap_lines, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.view*, %struct.view** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.line* @pager_wrap_line(%struct.view* %18, i8* %19, i32 %20)
  store %struct.line* %21, %struct.line** %10, align 8
  br label %27

22:                                               ; preds = %14
  %23 = load %struct.view*, %struct.view** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.line* @add_line_text(%struct.view* %23, i8* %24, i32 %25)
  store %struct.line* %26, %struct.line** %10, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.line*, %struct.line** %10, align 8
  %29 = icmp ne %struct.line* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %56

31:                                               ; preds = %27
  %32 = load %struct.line**, %struct.line*** %9, align 8
  %33 = icmp ne %struct.line** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.line*, %struct.line** %10, align 8
  %36 = load %struct.line**, %struct.line*** %9, align 8
  store %struct.line* %35, %struct.line** %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.line*, %struct.line** %10, align 8
  %39 = getelementptr inbounds %struct.line, %struct.line* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LINE_COMMIT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.view*, %struct.view** %6, align 8
  %45 = load i32, i32* @VIEW_ADD_PAGER_REFS, align 4
  %46 = call i64 @view_has_flags(%struct.view* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.view*, %struct.view** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = call i32 @add_pager_refs(%struct.view* %49, i8* %53)
  br label %55

55:                                               ; preds = %48, %43, %37
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %30, %13
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.line* @pager_wrap_line(%struct.view*, i8*, i32) #1

declare dso_local %struct.line* @add_line_text(%struct.view*, i8*, i32) #1

declare dso_local i64 @view_has_flags(%struct.view*, i32) #1

declare dso_local i32 @add_pager_refs(%struct.view*, i8*) #1

declare dso_local i32 @STRING_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
