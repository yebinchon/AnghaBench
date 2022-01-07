; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/skins2/src/extr_ft2_err.c_ft2_strerror.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/skins2/src/extr_ft2_err.c_ft2_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ft2_num_errors = common dso_local global i32 0, align 4
@ft2_errorindex = common dso_local global i32* null, align 8
@ft2_errorstrings = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [40 x i8] c"An error freetype2 neglected to specify\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ft2_strerror(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ft2_num_errors, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = load i32*, i32** @ft2_errorindex, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %21

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %16, %4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ft2_num_errors, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8**, i8*** @ft2_errorstrings, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i8* [ %30, %25 ], [ getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %31 ]
  ret i8* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
