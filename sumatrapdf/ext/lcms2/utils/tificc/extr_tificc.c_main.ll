; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TiffLabPlugin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tificc\00", align 1
@xoptind = common dso_local global i32 0, align 4
@ConsoleErrorHandler = common dso_local global i32 0, align 4
@ConsoleWarningHandler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unable to open '%s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unable to write '%s'\00", align 1
@cInpProf = common dso_local global i32 0, align 4
@Verbose = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @cmsPlugin(i32* @TiffLabPlugin)
  %9 = call i32 @InitUtils(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @HandleSwitches(i32 %10, i8** %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @xoptind, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @Help(i32 0)
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* @ConsoleErrorHandler, align 4
  %21 = call i32 @TIFFSetErrorHandler(i32 %20)
  %22 = load i32, i32* @ConsoleWarningHandler, align 4
  %23 = call i32 @TIFFSetWarningHandler(i32 %22)
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* @xoptind, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32* @TIFFOpen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %19
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* @xoptind, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @FatalError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %32, %19
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* @xoptind, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32* @TIFFOpen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @TIFFClose(i32* %50)
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* @xoptind, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @FatalError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %49, %39
  br label %60

60:                                               ; preds = %65, %59
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @cInpProf, align 4
  %64 = call i32 @TransformImage(i32* %61, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @TIFFReadDirectory(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %60, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* @Verbose, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fflush(i32 %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @TIFFClose(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @TIFFClose(i32* %80)
  ret i32 0
}

declare dso_local i32 @cmsPlugin(i32*) #1

declare dso_local i32 @InitUtils(i32*, i8*) #1

declare dso_local i32 @HandleSwitches(i32, i8**) #1

declare dso_local i32 @Help(i32) #1

declare dso_local i32 @TIFFSetErrorHandler(i32) #1

declare dso_local i32 @TIFFSetWarningHandler(i32) #1

declare dso_local i32* @TIFFOpen(i8*, i8*) #1

declare dso_local i32 @FatalError(i8*, i8*) #1

declare dso_local i32 @TIFFClose(i32*) #1

declare dso_local i32 @TransformImage(i32*, i32*, i32) #1

declare dso_local i64 @TIFFReadDirectory(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
