; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_vericc.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_vericc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"--r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Wrong version number\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"'%s': cannot open\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"$$tmp.icc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @PrintUsage()
  store i32 %12, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (...) @PrintUsage()
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %13
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %62

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @atof(i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32* @cmsOpenProfileFromFile(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i32 1, i32* %3, align 4
  br label %62

46:                                               ; preds = %31
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @cmsSetProfileVersion(i32* %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @cmsSaveProfileToFile(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @cmsCloseProfile(i32* %52)
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @remove(i8* %56)
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @rename(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %46, %40, %28, %20, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @PrintUsage(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32* @cmsOpenProfileFromFile(i8*, i8*) #1

declare dso_local i32 @cmsSetProfileVersion(i32*, i32) #1

declare dso_local i32 @cmsSaveProfileToFile(i32*, i8*) #1

declare dso_local i32 @cmsCloseProfile(i32*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
