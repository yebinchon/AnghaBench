; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_path_from_idref.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_path_from_idref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i8*, i8*, i32)* @path_from_idref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @path_from_idref(i8* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i8* @rel_path_from_idref(i32* %13, i8* %14)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  store i8* null, i8** %6, align 8
  br label %36

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @fz_strlcpy(i8* %22, i8* %23, i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @fz_strlcat(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @fz_strlcat(i8* %29, i8* %30, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @fz_urldecode(i8* %33)
  %35 = call i8* @fz_cleanname(i32 %34)
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i8*, i8** %6, align 8
  ret i8* %37
}

declare dso_local i8* @rel_path_from_idref(i32*, i8*) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_strlcat(i8*, i8*, i32) #1

declare dso_local i8* @fz_cleanname(i32) #1

declare dso_local i32 @fz_urldecode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
