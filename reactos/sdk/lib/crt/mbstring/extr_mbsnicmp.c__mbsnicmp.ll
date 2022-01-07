; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsnicmp.c__mbsnicmp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsnicmp.c__mbsnicmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mbsnicmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %55, %11
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i32 @_mbbtoupper(i8 zeroext %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @_mbbtoupper(i8 zeroext %17)
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @_mbbtoupper(i8 zeroext %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @_mbbtoupper(i8 zeroext %25)
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %12
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @_mbclen2(i8 zeroext %30)
  %32 = load i8*, i8** %5, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @_mbclen2(i8 zeroext %36)
  %38 = load i8*, i8** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %58

46:                                               ; preds = %28
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @_ismbblead(i8 zeroext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %12, label %58

58:                                               ; preds = %55, %45
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %20, %10
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @_mbbtoupper(i8 zeroext) #1

declare dso_local i32 @_mbclen2(i8 zeroext) #1

declare dso_local i32 @_ismbblead(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
