; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfposter.c_pdfposter_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfposter.c_pdfposter_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"out.pdf\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pdf_default_write_options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"x:y:\00", align 1
@fz_optarg = common dso_local global i8* null, align 8
@x_factor = common dso_local global i8* null, align 8
@y_factor = common dso_local global i8* null, align 8
@fz_optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c".pdf\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".PDF\00", align 1
@FZ_STORE_UNLIMITED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cannot initialise context\0A\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"cannot authenticate password: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdfposter_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %12 = load i32, i32* @pdf_default_write_options, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i8**, i8*** %4, align 8
  %16 = call i32 @fz_getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %28 [
    i32 112, label %20
    i32 120, label %22
    i32 121, label %25
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @fz_optarg, align 8
  store i8* %21, i8** %7, align 8
  br label %30

22:                                               ; preds = %18
  %23 = load i8*, i8** @fz_optarg, align 8
  %24 = call i8* @atoi(i8* %23)
  store i8* %24, i8** @x_factor, align 8
  br label %30

25:                                               ; preds = %18
  %26 = load i8*, i8** @fz_optarg, align 8
  %27 = call i8* @atoi(i8* %26)
  store i8* %27, i8** @y_factor, align 8
  br label %30

28:                                               ; preds = %18
  %29 = call i32 (...) @usage()
  br label %30

30:                                               ; preds = %28, %25, %22, %20
  br label %13

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @fz_optind, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* @fz_optind, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @fz_optind, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @fz_optind, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %38
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* @fz_optind, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strstr(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load i8**, i8*** %4, align 8
  %59 = load i32, i32* @fz_optind, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strstr(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57, %49
  %66 = load i8**, i8*** %4, align 8
  %67 = load i32, i32* @fz_optind, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @fz_optind, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %65, %57, %38
  %73 = load i32, i32* @FZ_STORE_UNLIMITED, align 4
  %74 = call i32* @fz_new_context(i32* null, i32* null, i32 %73)
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %72
  %82 = load i32*, i32** %11, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32* @pdf_open_document(i32* %82, i8* %83)
  store i32* %84, i32** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i64 @pdf_needs_password(i32* %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @pdf_authenticate_password(i32* %90, i32* %91, i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @fz_throw(i32* %96, i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %95, %89
  br label %101

101:                                              ; preds = %100, %81
  %102 = load i32*, i32** %11, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @decimatepages(i32* %102, i32* %103)
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @pdf_save_document(i32* %105, i32* %106, i8* %107, i32* %9)
  %109 = load i32*, i32** %11, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @pdf_drop_document(i32* %109, i32* %110)
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @fz_drop_context(i32* %112)
  ret i32 0
}

declare dso_local i32 @fz_getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32* @fz_new_context(i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @pdf_open_document(i32*, i8*) #1

declare dso_local i64 @pdf_needs_password(i32*, i32*) #1

declare dso_local i32 @pdf_authenticate_password(i32*, i32*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i8*) #1

declare dso_local i32 @decimatepages(i32*, i32*) #1

declare dso_local i32 @pdf_save_document(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @pdf_drop_document(i32*, i32*) #1

declare dso_local i32 @fz_drop_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
