; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_io.c_getExtension.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_io.c_getExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getExtension(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp ule i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i8* null, i8** %3, align 8
  br label %39

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %5, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 46
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %24, %17, %13
  %32 = phi i1 [ false, %17 ], [ false, %13 ], [ %30, %24 ]
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %13

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %34, %11
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
