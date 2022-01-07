; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_zstdcli.c_readU32FromCharChecked.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_zstdcli.c_readU32FromCharChecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @readU32FromCharChecked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readU32FromCharChecked(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp sge i32 %13, 48
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sle i32 %19, 57
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ false, %9 ], [ %20, %15 ]
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  store i32 429496728, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %24, 429496728
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %98

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = mul i32 %28, 10
  store i32 %29, i32* %6, align 4
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  br label %9

40:                                               ; preds = %21
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 75
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8**, i8*** %4, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 77
  br i1 %51, label %52, label %95

52:                                               ; preds = %46, %40
  store i32 4194303, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ugt i32 %53, 4194303
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %98

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 10
  store i32 %58, i32* %6, align 4
  %59 = load i8**, i8*** %4, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 77
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  %66 = icmp ugt i32 %65, 4194303
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %98

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 10
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %56
  %72 = load i8**, i8*** %4, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  %75 = load i8**, i8*** %4, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 105
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i8**, i8*** %4, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %81, align 8
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i8**, i8*** %4, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 66
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i8**, i8*** %4, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  br label %94

94:                                               ; preds = %90, %84
  br label %95

95:                                               ; preds = %94, %46
  %96 = load i32, i32* %6, align 4
  %97 = load i32*, i32** %5, align 8
  store i32 %96, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %67, %55, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
