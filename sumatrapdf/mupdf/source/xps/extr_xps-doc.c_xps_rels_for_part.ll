; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-doc.c_xps_rels_for_part.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-doc.c_xps_rels_for_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"/_rels/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".rels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i8*, i32)* @xps_rels_for_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_rels_for_part(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  br label %22

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i8* [ %19, %17 ], [ %21, %20 ]
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @fz_strlcpy(i8* %24, i8* %25, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 47)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i8*, i8** %11, align 8
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @fz_strlcat(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @fz_strlcat(i8* %38, i8* %39, i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @fz_strlcat(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_strlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
