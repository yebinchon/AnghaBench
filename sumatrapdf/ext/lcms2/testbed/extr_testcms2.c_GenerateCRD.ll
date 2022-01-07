; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_GenerateCRD.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_GenerateCRD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @GenerateCRD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GenerateCRD(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @DbgThread()
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 (...) @DbgThread()
  %16 = call i32 @cmsCreateLab4Profile(i32 %15, i32* null)
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  %18 = call i32 (...) @DbgThread()
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @cmsOpenProfileFromFile(i32 %18, i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = call i32 (...) @DbgThread()
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @cmsGetPostScriptCRD(i32 %22, i32 %23, i32 0, i32 %24, i8* null, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %68

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i64 @_cmsMalloc(i32 %30, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %7, align 8
  %35 = call i32 (...) @DbgThread()
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @cmsGetPostScriptCRD(i32 %35, i32 %36, i32 0, i32 %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %29
  %48 = load i8*, i8** %4, align 8
  %49 = call i32* @fopen(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %49, i32** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @fwrite(i8* %50, i32 %51, i32 1, i32* %52)
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @fclose(i32* %54)
  br label %56

56:                                               ; preds = %47, %29
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @_cmsFree(i32 %57, i8* %58)
  %60 = call i32 (...) @DbgThread()
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @cmsCloseProfile(i32 %60, i32 %61)
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @remove(i8* %66)
  br label %68

68:                                               ; preds = %28, %65, %56
  ret void
}

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @cmsGetPostScriptCRD(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @_cmsMalloc(i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
