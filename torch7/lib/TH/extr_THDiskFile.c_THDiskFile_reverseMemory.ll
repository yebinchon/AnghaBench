; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THDiskFile.c_THDiskFile_reverseMemory.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THDiskFile.c_THDiskFile_reverseMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64)* @THDiskFile_reverseMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THDiskFile_reverseMemory(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 1
  br i1 %16, label %17, label %67

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = udiv i64 %18, 2
  store i64 %19, i64* %9, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %11, align 8
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %63, %17
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %14, align 1
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, 1
  %39 = load i64, i64* %13, align 8
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %42, i8* %45, align 1
  %46 = load i8, i8* %14, align 1
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = load i64, i64* %13, align 8
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 %46, i8* %52, align 1
  br label %53

53:                                               ; preds = %31
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %13, align 8
  br label %27

56:                                               ; preds = %27
  %57 = load i64, i64* %7, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** %10, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %22

66:                                               ; preds = %22
  br label %67

67:                                               ; preds = %66, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
