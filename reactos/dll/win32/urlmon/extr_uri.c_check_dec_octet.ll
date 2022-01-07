; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_check_dec_octet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_check_dec_octet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @check_dec_octet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dec_octet(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp slt i32 %11, 48
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sgt i32 %16, 57
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %13
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %21, align 8
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, 48
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sgt i32 %33, 57
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %20
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %2, align 4
  br label %78

37:                                               ; preds = %30
  %38 = load i8**, i8*** %3, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %38, align 8
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp slt i32 %45, 48
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sgt i32 %50, 57
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %37
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %2, align 4
  br label %78

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sge i32 %57, 50
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sge i32 %62, 53
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sge i32 %67, 53
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i8*, i8** %4, align 8
  %71 = load i8**, i8*** %3, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %78

73:                                               ; preds = %64, %59, %54
  %74 = load i8**, i8*** %3, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %74, align 8
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %69, %52, %35, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
