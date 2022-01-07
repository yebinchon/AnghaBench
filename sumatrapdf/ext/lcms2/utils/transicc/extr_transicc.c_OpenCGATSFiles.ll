; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_OpenCGATSFiles.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_OpenCGATSFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xoptind = common dso_local global i32 0, align 4
@hIT8in = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"'%s' is not recognized as a CGATS file\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NUMBER_OF_SETS\00", align 1
@nMaxPatches = common dso_local global i32 0, align 4
@hIT8out = common dso_local global i32 0, align 4
@CGATSoutFilename = common dso_local global i32 0, align 4
@cmsMAX_PATH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Too many CGATS files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8**)* @OpenCGATSFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpenCGATSFiles(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @xoptind, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 1
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  %15 = load i32, i32* @xoptind, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32* @cmsIT8LoadFromFile(i32 0, i8* %18)
  store i32* %19, i32** @hIT8in, align 8
  %20 = load i32*, i32** @hIT8in, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* @xoptind, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %22, %13
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** @hIT8in, align 8
  %32 = call i64 @cmsIT8GetPropertyDbl(i32 %30, i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* @nMaxPatches, align 4
  br label %34

34:                                               ; preds = %29, %3
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = call i32 @cmsIT8Alloc(i32* null)
  store i32 %38, i32* @hIT8out, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @SetOutputDataFormat(i32 %39)
  %41 = load i32, i32* @CGATSoutFilename, align 4
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32, i32* @xoptind, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* @cmsMAX_PATH, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @strncpy(i32 %41, i8* %47, i64 %49)
  br label %51

51:                                               ; preds = %37, %34
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32* @cmsIT8LoadFromFile(i32, i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i64 @cmsIT8GetPropertyDbl(i32, i32*, i8*) #1

declare dso_local i32 @cmsIT8Alloc(i32*) #1

declare dso_local i32 @SetOutputDataFormat(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
