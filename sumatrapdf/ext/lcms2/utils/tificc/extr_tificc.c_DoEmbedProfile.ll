; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_DoEmbedProfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_DoEmbedProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot read %ld bytes to %s\00", align 1
@TIFFTAG_ICCPROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @DoEmbedProfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoEmbedProfile(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %56

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @cmsfilelength(i32* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %56

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i64 @malloc(i64 %22)
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %8, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @OutOfMem(i64 %29)
  br label %56

31:                                               ; preds = %20
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @fread(i64* %32, i32 1, i64 %33, i32* %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %31
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 0, i64* %48, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @TIFFTAG_ICCPROFILE, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = call i32 @TIFFSetField(i32* %49, i32 %50, i64 %51, i64* %52)
  %54 = load i64*, i64** %8, align 8
  %55 = call i32 @free(i64* %54)
  br label %56

56:                                               ; preds = %43, %27, %19, %13
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @cmsfilelength(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @OutOfMem(i64) #1

declare dso_local i64 @fread(i64*, i32, i64, i32*) #1

declare dso_local i32 @FatalError(i8*, i64, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @TIFFSetField(i32*, i32, i64, i64*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
