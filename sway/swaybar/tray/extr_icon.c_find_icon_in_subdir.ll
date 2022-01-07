; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_find_icon_in_subdir.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_find_icon_in_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_icon_in_subdir.extensions = internal global [1 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/%s/%s/%s.EXT\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s/%s/%s/%s.%s\00", align 1
@R_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*)* @find_icon_in_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_icon_in_subdir(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, i64, i8*, i8*, i8*, i8*, i8*, ...) @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* %14, i8* %15, i8* %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %11, align 8
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %43, %4
  %23 = load i64, i64* %12, align 8
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds [1 x i8*], [1 x i8*]* @find_icon_in_subdir.extensions, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, i64, i8*, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %28, i8* %29, i8* %30, i8* %31, i8* %34)
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @R_OK, align 4
  %38 = call i64 @access(i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i8*, i8** %11, align 8
  store i8* %41, i8** %5, align 8
  br label %49

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  br label %22

46:                                               ; preds = %22
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @free(i8* %47)
  store i8* null, i8** %5, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** %5, align 8
  ret i8* %50
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
