; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp.c_hexstring.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp.c_hexstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64)* @hexstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexstring(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = mul i64 2, %15
  %17 = icmp ugt i64 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = and i64 %19, 1
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  br label %62

23:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %55, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @hexdigit(i8 signext %32)
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @hexdigit(i8 signext %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %28
  store i32 -1, i32* %4, align 4
  br label %62

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = udiv i64 %52, 2
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 2
  store i64 %57, i64* %9, align 8
  br label %24

58:                                               ; preds = %24
  %59 = load i64, i64* %8, align 8
  %60 = udiv i64 %59, 2
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %45, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @hexdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
