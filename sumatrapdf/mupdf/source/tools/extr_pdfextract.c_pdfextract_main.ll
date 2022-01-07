; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfextract.c_pdfextract_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfextract.c_pdfextract_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"p:rN\00", align 1
@fz_optarg = common dso_local global i8* null, align 8
@dorgb = common dso_local global i32 0, align 4
@doicc = common dso_local global i32 0, align 4
@fz_optind = common dso_local global i32 0, align 4
@FZ_STORE_UNLIMITED = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot initialise context\0A\00", align 1
@doc = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"cannot authenticate password: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdfextract_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @fz_getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %25 [
    i32 112, label %17
    i32 114, label %19
    i32 78, label %22
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @fz_optarg, align 8
  store i8* %18, i8** %6, align 8
  br label %27

19:                                               ; preds = %15
  %20 = load i32, i32* @dorgb, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @dorgb, align 4
  br label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @doicc, align 4
  %24 = xor i32 %23, 1
  store i32 %24, i32* @doicc, align 4
  br label %27

25:                                               ; preds = %15
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %22, %19, %17
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* @fz_optind, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* @fz_optind, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @fz_optind, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %5, align 8
  %41 = load i32, i32* @FZ_STORE_UNLIMITED, align 4
  %42 = call i32 @fz_new_context(i32* null, i32* null, i32 %41)
  store i32 %42, i32* @ctx, align 4
  %43 = load i32, i32* @ctx, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %34
  %50 = load i32, i32* @doicc, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ctx, align 4
  %54 = call i32 @fz_enable_icc(i32 %53)
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @ctx, align 4
  %57 = call i32 @fz_disable_icc(i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @ctx, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @pdf_open_document(i32 %59, i8* %60)
  store i32 %61, i32* @doc, align 4
  %62 = load i32, i32* @ctx, align 4
  %63 = load i32, i32* @doc, align 4
  %64 = call i64 @pdf_needs_password(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %58
  %67 = load i32, i32* @ctx, align 4
  %68 = load i32, i32* @doc, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @pdf_authenticate_password(i32 %67, i32 %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ctx, align 4
  %74 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @fz_throw(i32 %73, i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %72, %66
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i32, i32* @fz_optind, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load i32, i32* @ctx, align 4
  %84 = load i32, i32* @doc, align 4
  %85 = call i32 @pdf_count_objects(i32 %83, i32 %84)
  store i32 %85, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %93, %82
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @extractobject(i32 %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %86

96:                                               ; preds = %86
  br label %113

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i32, i32* @fz_optind, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i8**, i8*** %4, align 8
  %104 = load i32, i32* @fz_optind, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @atoi(i8* %107)
  %109 = call i32 @extractobject(i32 %108)
  %110 = load i32, i32* @fz_optind, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @fz_optind, align 4
  br label %98

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %96
  %114 = load i32, i32* @ctx, align 4
  %115 = load i32, i32* @doc, align 4
  %116 = call i32 @pdf_drop_document(i32 %114, i32 %115)
  %117 = load i32, i32* @ctx, align 4
  %118 = call i32 @fz_flush_warnings(i32 %117)
  %119 = load i32, i32* @ctx, align 4
  %120 = call i32 @fz_drop_context(i32 %119)
  ret i32 0
}

declare dso_local i32 @fz_getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fz_new_context(i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fz_enable_icc(i32) #1

declare dso_local i32 @fz_disable_icc(i32) #1

declare dso_local i32 @pdf_open_document(i32, i8*) #1

declare dso_local i64 @pdf_needs_password(i32, i32) #1

declare dso_local i32 @pdf_authenticate_password(i32, i32, i8*) #1

declare dso_local i32 @fz_throw(i32, i32, i8*, i8*) #1

declare dso_local i32 @pdf_count_objects(i32, i32) #1

declare dso_local i32 @extractobject(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @pdf_drop_document(i32, i32) #1

declare dso_local i32 @fz_flush_warnings(i32) #1

declare dso_local i32 @fz_drop_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
