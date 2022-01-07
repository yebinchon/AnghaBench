; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_prefix_uli.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_prefix_uli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @prefix_uli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prefix_uli(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %17, %10, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %31, %24, %20
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %45, %38, %34
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  %51 = load i64, i64* %5, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %82, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 42
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 43
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 45
  br i1 %73, label %82, label %74

74:                                               ; preds = %67, %60, %53
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 32
  br i1 %81, label %82, label %83

82:                                               ; preds = %74, %67, %48
  store i64 0, i64* %3, align 8
  br label %96

83:                                               ; preds = %74
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = sub i64 %87, %88
  %90 = call i64 @is_next_headerline(i8* %86, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i64 0, i64* %3, align 8
  br label %96

93:                                               ; preds = %83
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 2
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %93, %92, %82
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i64 @is_next_headerline(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
