; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-gif.c_gif_read_ae.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-gif.c_gif_read_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32 }

@gif_read_ae.ignorable = internal global [11 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"NETSACPE2.0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ANIMEXTS1.0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"XMP DataXMP\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ZGATEXTI5\00\00\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ZGATILEI5\00\00\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ZGANPIMGI5\00\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ZGACTRLI5\00\00\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ZGAVECTI5\00\00\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ZGAALPHAI5\00\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ZGATITLE4.0\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ZGATEXTI4.0\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [52 x i8] c"premature end in application extension in gif image\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"out of range application extension block size in gif image\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"ignoring unsupported application extension '%s' in gif image\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ICCRGBG1012\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8*)* @gif_read_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gif_read_ae(i32* %0, %struct.info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [9 x i8], align 1
  store i32* %0, i32** %6, align 8
  store %struct.info* %1, %struct.info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, 14
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %22 = call i32 @fz_throw(i32* %20, i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 11
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %32 = call i32 @fz_throw(i32* %30, i32 %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %23
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @nelem(i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @gif_read_ae.ignorable, i64 0, i64 0))
  %37 = trunc i64 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [11 x i8*], [11 x i8*]* @gif_read_ae.ignorable, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @memcmp(i8* %41, i8* %45, i32 11)
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = call i32 @memmove(i8* %56, i8* %58, i32 8)
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 8
  store i8 0, i8* %60, align 1
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %63 = call i32 @fz_warn(i32* %61, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = call i32 @memcmp(i8* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 11)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.info*, %struct.info** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 14
  %74 = load i8*, i8** %9, align 8
  %75 = call i8* @gif_read_icc(i32* %70, %struct.info* %71, i8* %73, i8* %74)
  store i8* %75, i8** %5, align 8
  br label %83

76:                                               ; preds = %64
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.info*, %struct.info** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 14
  %81 = load i8*, i8** %9, align 8
  %82 = call i8* @gif_read_subblocks(i32* %77, %struct.info* %78, i8* %80, i8* %81, i32* null)
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i8*, i8** %5, align 8
  ret i8* %84
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i64 @nelem(i8**) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i8*) #1

declare dso_local i8* @gif_read_icc(i32*, %struct.info*, i8*, i8*) #1

declare dso_local i8* @gif_read_subblocks(i32*, %struct.info*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
