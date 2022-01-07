; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfsign.c_process_field.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfsign.c_process_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FT = common dso_local global i32 0, align 4
@Sig = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d is not a signature, skipping\00", align 1
@list = common dso_local global i64 0, align 8
@verify = common dso_local global i64 0, align 8
@clear = common dso_local global i64 0, align 8
@sign = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @process_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_field(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* @FT, align 4
  %10 = call i64 @PDF_NAME(i32 %9)
  %11 = call i64 @pdf_dict_get_inheritable(i32* %7, i32* %8, i64 %10)
  %12 = load i32, i32* @Sig, align 4
  %13 = call i64 @PDF_NAME(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @pdf_to_num(i32* %17, i32* %18)
  %20 = call i32 @fz_warn(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %54

21:                                               ; preds = %3
  %22 = load i64, i64* @list, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @list_signature(i32* %25, i32* %26, i32* %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i64, i64* @verify, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @verify_signature(i32* %33, i32* %34, i32* %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i64, i64* @clear, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @clear_signature(i32* %41, i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i64, i64* @sign, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @sign_signature(i32* %49, i32* %50, i32* %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53, %15
  ret void
}

declare dso_local i64 @pdf_dict_get_inheritable(i32*, i32*, i64) #1

declare dso_local i64 @PDF_NAME(i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i32 @list_signature(i32*, i32*, i32*) #1

declare dso_local i32 @verify_signature(i32*, i32*, i32*) #1

declare dso_local i32 @clear_signature(i32*, i32*, i32*) #1

declare dso_local i32 @sign_signature(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
