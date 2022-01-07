; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1_porter.c_copy_stemmer.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1_porter.c_copy_stemmer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32*)* @copy_stemmer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_stemmer(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %54, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sge i32 %25, 65
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load i32, i32* %13, align 4
  %29 = icmp sle i32 %28, 90
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %31, 65
  %33 = add nsw i32 %32, 97
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 %34, i8* %38, align 1
  br label %53

39:                                               ; preds = %27, %18
  %40 = load i32, i32* %13, align 4
  %41 = icmp sge i32 %40, 48
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp sle i32 %43, 57
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %42, %39
  %47 = load i32, i32* %13, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  br label %53

53:                                               ; preds = %46, %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %14

57:                                               ; preds = %14
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 3, i32 10
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, 2
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %85, %66
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 %80, i8* %84, align 1
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %57
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
