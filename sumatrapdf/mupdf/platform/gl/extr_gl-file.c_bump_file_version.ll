; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_bump_file_version.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_bump_file_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@fc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%d%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bump_file_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bump_file_version(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fc, i32 0, i32 0, i32 0), align 4
  %21 = trunc i64 %11 to i32
  %22 = call i32 @fz_strlcpy(i8* %13, i32 %20, i32 %21)
  %23 = call i8* @strrchr(i8* %13, i8 signext 46)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %76

26:                                               ; preds = %1
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %45, %26
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ugt i8* %29, %13
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br label %43

43:                                               ; preds = %37, %31, %28
  %44 = phi i1 [ false, %31 ], [ false, %28 ], [ %42, %37 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %6, align 8
  br label %28

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @atoi(i8* %53)
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %9, align 4
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %2, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i8*, i8** %6, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = ptrtoint i8* %13 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i8* %16, i8* %13, i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = ptrtoint i8* %13 to i64
  %69 = sub i64 %67, %68
  %70 = getelementptr inbounds i8, i8* %16, i64 %69
  store i8 0, i8* %70, align 1
  %71 = trunc i64 %18 to i32
  %72 = load i32, i32* %9, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @fz_snprintf(i8* %19, i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %72, i8* %73)
  %75 = call i32 @ui_input_init(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fc, i32 0, i32 0), i8* %19)
  br label %76

76:                                               ; preds = %59, %1
  %77 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fz_strlcpy(i8*, i32, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @ui_input_init(%struct.TYPE_3__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
