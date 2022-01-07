; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsnset.c__mbsnset.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsnset.c__mbsnset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_mbsnset(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i16*
  store i16* %11, i16** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @_mbclen2(i32 %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %19, %15
  %17 = load i64, i64* %6, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %7, align 8
  store i8 %21, i8* %22, align 1
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %6, align 8
  br label %16

27:                                               ; preds = %16
  %28 = load i8*, i8** %7, align 8
  store i8 0, i8* %28, align 1
  br label %43

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i64, i64* %6, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = trunc i32 %34 to i16
  %36 = load i16*, i16** %8, align 8
  store i16 %35, i16* %36, align 2
  %37 = load i16*, i16** %8, align 8
  %38 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %38, i16** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, 2
  store i64 %40, i64* %6, align 8
  br label %30

41:                                               ; preds = %30
  %42 = load i16*, i16** %8, align 8
  store i16 0, i16* %42, align 2
  br label %43

43:                                               ; preds = %41, %27
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i32 @_mbclen2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
