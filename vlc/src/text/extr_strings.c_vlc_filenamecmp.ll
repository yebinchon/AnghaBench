; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_filenamecmp.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_filenamecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_filenamecmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %7, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = load i8, i8* %7, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %68

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %11

32:                                               ; preds = %11
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 48
  %36 = icmp ugt i32 %35, 9
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 %39, 48
  %41 = icmp ugt i32 %40, 9
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %32
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcoll(i8* %43, i8* %44)
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %37
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = call i64 @strtoull(i8* %49, i32* null, i32 10)
  store i64 %50, i64* %9, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = call i64 @strtoull(i8* %53, i32* null, i32 10)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcoll(i8* %59, i8* %60)
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %46
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ugt i64 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 -1
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %58, %42, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @strcoll(i8*, i8*) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
