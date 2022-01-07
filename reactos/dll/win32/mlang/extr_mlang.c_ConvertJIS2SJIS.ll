; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_ConvertJIS2SJIS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_ConvertJIS2SJIS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @ConvertJIS2SJIS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertJIS2SJIS(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %12, align 8
  br label %14

14:                                               ; preds = %97, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %100

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %11, align 1
  %23 = load i8, i8* %11, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 27
  br i1 %25, label %26, label %61

26:                                               ; preds = %18
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %102

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %10, align 1
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 36
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 40
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %33
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 75
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8, i8* %10, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 36
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %48
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %12, align 8
  br label %60

58:                                               ; preds = %52
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %58, %56
  br label %97

61:                                               ; preds = %18
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %102

71:                                               ; preds = %64
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %10, align 1
  %76 = call i32 @jis2sjis(i8* %11, i8* %10)
  %77 = load i8, i8* %11, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 %77, i8* %82, align 1
  %83 = load i8, i8* %10, align 1
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 %83, i8* %88, align 1
  br label %96

89:                                               ; preds = %61
  %90 = load i8, i8* %11, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 %90, i8* %95, align 1
  br label %96

96:                                               ; preds = %89, %71
  br label %97

97:                                               ; preds = %96, %60
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  br label %14

100:                                              ; preds = %14
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %70, %32
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @jis2sjis(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
