; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_convert_to_accel_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_convert_to_accel_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/var/tmp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s/%s.accel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @convert_to_accel_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_accel_path(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %10, align 8
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @fz_is_directory(i32* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 92
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %27
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %65, %42
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 92
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 58
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %53, %48
  %64 = load i8*, i8** %11, align 8
  store i8 37, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %11, align 8
  br label %44

68:                                               ; preds = %44
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @fz_snprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %71, i8* %72)
  %74 = load i64, i64* %9, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %78

77:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @fz_is_directory(i32*, i8*) #1

declare dso_local i64 @fz_snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
