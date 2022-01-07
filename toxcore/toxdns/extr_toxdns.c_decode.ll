; ModuleID = '/home/carl/AnghaBench/toxcore/toxdns/extr_toxdns.c_decode.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxdns/extr_toxdns.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  store i8 0, i8* %8, align 1
  %12 = load i8*, i8** %7, align 8
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %96, %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %97

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8, i8* %18, align 1
  store i8 %20, i8* %9, align 1
  %21 = load i8, i8* %9, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 65, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i8, i8* %9, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 90
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 65
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %9, align 1
  br label %63

33:                                               ; preds = %24, %17
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 97, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 122
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8, i8* %9, align 1
  %43 = sext i8 %42 to i32
  %44 = sub nsw i32 %43, 97
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %9, align 1
  br label %62

46:                                               ; preds = %37, %33
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 48, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i8, i8* %9, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 53
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = sub nsw i32 %56, 48
  %58 = add nsw i32 %57, 26
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %9, align 1
  br label %61

60:                                               ; preds = %50, %46
  store i32 -1, i32* %3, align 4
  br label %104

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* %8, align 1
  %67 = sext i8 %66 to i32
  %68 = shl i32 %65, %67
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = or i32 %71, %68
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  %74 = load i8, i8* %8, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, 5
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %8, align 1
  %78 = load i8, i8* %8, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sge i32 %79, 8
  br i1 %80, label %81, label %96

81:                                               ; preds = %63
  %82 = load i8, i8* %8, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 8
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %8, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  %88 = load i8, i8* %9, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* %8, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 5, %91
  %93 = ashr i32 %89, %92
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %7, align 8
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %81, %63
  br label %13

97:                                               ; preds = %13
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %97, %60
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
