; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_GenerateCSA.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_GenerateCSA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @GenerateCSA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GenerateCSA(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call i32 (...) @DbgThread()
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (...) @DbgThread()
  %15 = call i32 @cmsCreateLab4Profile(i32 %14, i32* null)
  store i32 %15, i32* %5, align 4
  br label %20

16:                                               ; preds = %2
  %17 = call i32 (...) @DbgThread()
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @cmsOpenProfileFromFile(i32 %17, i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = call i32 (...) @DbgThread()
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cmsGetPostScriptCSA(i32 %21, i32 %22, i32 0, i32 0, i8* null, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %65

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i64 @_cmsMalloc(i32 %28, i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %7, align 8
  %33 = call i32 (...) @DbgThread()
  %34 = load i32, i32* %5, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cmsGetPostScriptCSA(i32 %33, i32 %34, i32 0, i32 0, i8* %35, i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %27
  %45 = load i8*, i8** %4, align 8
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %46, i32** %9, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @fwrite(i8* %47, i32 %48, i32 1, i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @fclose(i32* %51)
  br label %53

53:                                               ; preds = %44, %27
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @_cmsFree(i32 %54, i8* %55)
  %57 = call i32 (...) @DbgThread()
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @cmsCloseProfile(i32 %57, i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @remove(i8* %63)
  br label %65

65:                                               ; preds = %26, %62, %53
  ret void
}

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @cmsGetPostScriptCSA(i32, i32, i32, i32, i8*, i32) #1

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
