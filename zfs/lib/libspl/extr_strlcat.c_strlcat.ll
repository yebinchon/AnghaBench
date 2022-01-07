; ModuleID = '/home/carl/AnghaBench/zfs/lib/libspl/extr_strlcat.c_strlcat.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libspl/extr_strlcat.c_strlcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strlcat(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %28, %3
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %9, align 8
  %20 = icmp ne i64 %18, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %25, %21 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  br label %17

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %4, align 8
  br label %73

44:                                               ; preds = %31
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %45, %46
  %48 = load i64, i64* %7, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %51, %52
  %54 = sub i64 %53, 1
  br label %57

55:                                               ; preds = %44
  %56 = load i64, i64* %11, align 8
  br label %57

57:                                               ; preds = %55, %50
  %58 = phi i64 [ %54, %50 ], [ %56, %55 ]
  store i64 %58, i64* %12, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @memcpy(i8* %61, i8* %62, i64 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %66, %67
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %57, %40
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
