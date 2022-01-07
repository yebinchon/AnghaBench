; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_set_check.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_set_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"AP/N\00", align 1
@Off = common dso_local global i32 0, align 4
@AS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @set_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_check(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32* @pdf_dict_getp(i32* %11, i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @pdf_dict_get(i32* %14, i32* %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  store i32* %20, i32** %10, align 8
  br label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @Off, align 4
  %23 = call i32* @PDF_NAME(i32 %22)
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @AS, align 4
  %28 = call i32* @PDF_NAME(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @pdf_dict_put(i32* %25, i32* %26, i32* %28, i32* %29)
  ret void
}

declare dso_local i32* @pdf_dict_getp(i32*, i32*, i8*) #1

declare dso_local i64 @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
