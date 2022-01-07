; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlLastInLexRange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlLastInLexRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzlLastInLexRange(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @ziplistIndex(i8* %8, i32 -2)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @zzlIsInLexRange(i8* %10, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %48

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @zzlLexValueLteMax(i8* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @zzlLexValueGteMin(i8* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %3, align 8
  br label %48

31:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %48

32:                                               ; preds = %19
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @ziplistPrev(i8* %33, i8* %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @ziplistPrev(i8* %39, i8* %40)
  store i8* %41, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @serverAssert(i32 %43)
  br label %46

45:                                               ; preds = %32
  store i8* null, i8** %6, align 8
  br label %46

46:                                               ; preds = %45, %38
  br label %16

47:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %48

48:                                               ; preds = %47, %31, %29, %14
  %49 = load i8*, i8** %3, align 8
  ret i8* %49
}

declare dso_local i8* @ziplistIndex(i8*, i32) #1

declare dso_local i32 @zzlIsInLexRange(i8*, i32*) #1

declare dso_local i64 @zzlLexValueLteMax(i8*, i32*) #1

declare dso_local i64 @zzlLexValueGteMin(i8*, i32*) #1

declare dso_local i8* @ziplistPrev(i8*, i8*) #1

declare dso_local i32 @serverAssert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
