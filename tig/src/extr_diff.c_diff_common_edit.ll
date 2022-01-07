; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_edit.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.view = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.line = type { i64 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@LINE_DIFF_STAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Nothing to edit\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@R_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to open file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_common_edit(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %13 = load i32, i32* @SIZEOF_STR, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %struct.line*, %struct.line** %7, align 8
  %18 = getelementptr inbounds %struct.line, %struct.line* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LINE_DIFF_STAT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.view*, %struct.view** %5, align 8
  %24 = getelementptr inbounds %struct.view, %struct.view* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.view*, %struct.view** %5, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  br label %40

33:                                               ; preds = %3
  %34 = load %struct.view*, %struct.view** %5, align 8
  %35 = load %struct.line*, %struct.line** %7, align 8
  %36 = call i8* @diff_get_pathname(%struct.view* %34, %struct.line* %35)
  store i8* %36, i8** %8, align 8
  %37 = load %struct.view*, %struct.view** %5, align 8
  %38 = load %struct.line*, %struct.line** %7, align 8
  %39 = call i32 @diff_get_lineno(%struct.view* %37, %struct.line* %38)
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %33, %22
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @REQ_NONE, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

46:                                               ; preds = %40
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @string_concat_path(i8* %16, i32 %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @R_OK, align 4
  %53 = call i64 @access(i8* %16, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %46
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @REQ_NONE, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

59:                                               ; preds = %51
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @open_editor(i8* %60, i32 %61)
  %63 = load i32, i32* @REQ_NONE, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %55, %43
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @diff_get_pathname(%struct.view*, %struct.line*) #2

declare dso_local i32 @diff_get_lineno(%struct.view*, %struct.line*) #2

declare dso_local i32 @report(i8*, ...) #2

declare dso_local i32 @string_concat_path(i8*, i32, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @open_editor(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
