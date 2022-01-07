; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tree.c_open_blob_editor.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tree.c_open_blob_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cat-file\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s/tigblob.XXXXXX.%s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Temporary file name is too long\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to create temporary file\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to save blob data to file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_blob_editor(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8*], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* null, i8** %17, align 8
  %18 = load i32, i32* @SIZEOF_STR, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %25

25:                                               ; preds = %24, %3
  %26 = call i32 (...) @get_temp_dir()
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @string_format(i8* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @report(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %58

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %34, 1
  %36 = call i32 @mkstemps(i8* %21, i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @report(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %52

41:                                               ; preds = %32
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @io_run_append(i8** %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @report(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @open_editor(i8* %21, i32 %49)
  br label %51

51:                                               ; preds = %48, %46
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @unlink(i8* %21)
  br label %57

57:                                               ; preds = %55, %52
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %62 [
    i32 0, label %61
    i32 1, label %61
  ]

61:                                               ; preds = %58, %58
  ret void

62:                                               ; preds = %58
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @string_format(i8*, i8*, i32, i8*) #2

declare dso_local i32 @get_temp_dir(...) #2

declare dso_local i32 @report(i8*) #2

declare dso_local i32 @mkstemps(i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @io_run_append(i8**, i32) #2

declare dso_local i32 @open_editor(i8*, i32) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
