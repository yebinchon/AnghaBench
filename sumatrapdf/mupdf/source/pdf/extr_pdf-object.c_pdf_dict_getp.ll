; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_getp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_getp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"path too long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pdf_dict_getp(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @RESOLVE(i32* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @OBJ_IS_DICT(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %74

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = icmp sgt i32 %20, 256
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %25 = call i32 @fz_throw(i32* %23, i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %67, %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i1 [ false, %31 ], [ %38, %36 ]
  br i1 %40, label %41, label %72

41:                                               ; preds = %39
  %42 = load i8*, i8** %10, align 8
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %55, %41
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 47
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  br label %43

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32* @pdf_dict_gets(i32* %68, i32* %69, i8* %70)
  store i32* %71, i32** %6, align 8
  br label %31

72:                                               ; preds = %39
  %73 = load i32*, i32** %6, align 8
  store i32* %73, i32** %4, align 8
  br label %74

74:                                               ; preds = %72, %16
  %75 = load i32*, i32** %4, align 8
  ret i32* %75
}

declare dso_local i32 @RESOLVE(i32*) #1

declare dso_local i32 @OBJ_IS_DICT(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @pdf_dict_gets(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
