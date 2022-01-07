; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_GetShortName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_GetShortName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetShortName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @PICE_strlen(i8* %4)
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 92
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = load i8*, i8** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8*, i8** %2, align 8
  %18 = icmp ne i8* %16, %17
  br label %19

19:                                               ; preds = %13, %6
  %20 = phi i1 [ false, %6 ], [ %18, %13 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %3, align 8
  br label %6

25:                                               ; preds = %19
  %26 = load i8*, i8** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8*, i8** %2, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i8*, i8** %2, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  ret i8* %37
}

declare dso_local i64 @PICE_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
