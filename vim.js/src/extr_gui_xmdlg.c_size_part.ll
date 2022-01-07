; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_xmdlg.c_size_part.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_xmdlg.c_size_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%4.1f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @size_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @size_part(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  store i8 0, i8* %9, align 1
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @get_part(i8* %13, i32 7, i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @NUL, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sitofp i32 %26 to float
  %28 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), float %27)
  br label %29

29:                                               ; preds = %22, %12
  br label %70

30:                                               ; preds = %3
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @get_part(i8* %31, i32 8, i8* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @NUL, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @atoi(i8* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sitofp i32 %43 to float
  %45 = fpext float %44 to double
  %46 = fdiv double %45, 1.000000e+01
  %47 = fptrunc double %46 to float
  store float %47, float* %8, align 4
  %48 = load float, float* %8, align 4
  %49 = fptosi float %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 48
  br i1 %58, label %59, label %64

59:                                               ; preds = %40
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sitofp i32 %61 to float
  %63 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), float %62)
  br label %68

64:                                               ; preds = %40
  %65 = load i8*, i8** %5, align 8
  %66 = load float, float* %8, align 4
  %67 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), float %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68, %30
  br label %70

70:                                               ; preds = %69, %29
  ret void
}

declare dso_local i32 @get_part(i8*, i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, float) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
