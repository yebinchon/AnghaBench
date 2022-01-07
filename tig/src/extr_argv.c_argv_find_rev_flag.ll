; ModuleID = '/home/carl/AnghaBench/tig/src/extr_argv.c_argv_find_rev_flag.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_argv.c_argv_find_rev_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i8*, i64, i64*, i32*, i32*)* @argv_find_rev_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argv_find_rev_flag(i8** %0, i64 %1, i8* %2, i64 %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8** %0, i8*** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %73, %7
  %20 = load i32, i32* %16, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %19
  %25 = load i8**, i8*** %9, align 8
  %26 = load i32, i32* %16, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %17, align 8
  %30 = load i8*, i8** %17, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = load i64, i64* %18, align 8
  %39 = call i64 @strncmp(i8* %36, i8* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %24
  br label %73

42:                                               ; preds = %35
  %43 = load i64*, i64** %13, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* %18, align 8
  %47 = load i64*, i64** %13, align 8
  store i64 %46, i64* %47, align 8
  br label %62

48:                                               ; preds = %42
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i8*, i8** %17, align 8
  %54 = load i64, i64* %18, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 61
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %73

61:                                               ; preds = %52, %48
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32*, i32** %14, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32*, i32** %14, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32*, i32** %15, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32*, i32** %15, align 8
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %67
  store i32 1, i32* %8, align 4
  br label %77

73:                                               ; preds = %60, %41
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %19

76:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
