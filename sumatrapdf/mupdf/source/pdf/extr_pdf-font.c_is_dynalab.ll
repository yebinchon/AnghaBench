; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_is_dynalab.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_is_dynalab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"HuaTian\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MingLi\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"+DF\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DLC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"+DLC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_dynalab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dynalab(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %34

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8*, i8** %3, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %13
  store i32 1, i32* %2, align 4
  br label %34

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i8*, i8** %3, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @strstr(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %23
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %22, %12, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
