; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_open_loc_file.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_open_loc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@loc_filename = common dso_local global i64 0, align 8
@embedded_loc_filename = common dso_local global i64 0, align 8
@conversion_error = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"localization: could not open '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @open_loc_file(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %55

10:                                               ; preds = %1
  %11 = load i64, i64* @loc_filename, align 8
  %12 = load i64, i64* @embedded_loc_filename, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i64, i64* @loc_filename, align 8
  %16 = call i32 @safe_free(i64 %15)
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @safe_strlen(i8* %20)
  %22 = sub nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = call i64 @safe_strcmp(i8* %18, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i64, i64* @embedded_loc_filename, align 8
  store i64 %28, i64* @loc_filename, align 8
  br label %32

29:                                               ; preds = %17
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @safe_strdup(i8* %30)
  store i64 %31, i64* @loc_filename, align 8
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i32* @utf8_to_wchar(i8* %33)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8*, i8** @conversion_error, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @uprintf(i8* %38, i8* %39)
  br label %50

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @_wfopen(i32* %42, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32*, i32** %5, align 8
  %52 = ptrtoint i32* %51 to i64
  %53 = call i32 @safe_free(i64 %52)
  %54 = load i32*, i32** %4, align 8
  store i32* %54, i32** %2, align 8
  br label %55

55:                                               ; preds = %50, %9
  %56 = load i32*, i32** %2, align 8
  ret i32* %56
}

declare dso_local i32 @safe_free(i64) #1

declare dso_local i64 @safe_strcmp(i8*, i8*) #1

declare dso_local i32 @safe_strlen(i8*) #1

declare dso_local i64 @safe_strdup(i8*) #1

declare dso_local i32* @utf8_to_wchar(i8*) #1

declare dso_local i32 @uprintf(i8*, i8*) #1

declare dso_local i32* @_wfopen(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
