; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_csv.c_csv_dequote.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_csv.c_csv_dequote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @csv_dequote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csv_dequote(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %4, align 1
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 39
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 34
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %82

18:                                               ; preds = %13, %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 2
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23, %18
  br label %82

36:                                               ; preds = %23
  store i64 1, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %74, %36
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, 1
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  %43 = load i8*, i8** %2, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* %4, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load i8*, i8** %2, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* %4, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %61, %51, %42
  %65 = load i8*, i8** %2, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 %68, i8* %73, align 1
  br label %74

74:                                               ; preds = %64
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %37

77:                                               ; preds = %37
  %78 = load i8*, i8** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %77, %35, %17
  ret void
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
