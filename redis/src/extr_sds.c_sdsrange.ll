; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sds.c_sdsrange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sds.c_sdsrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdsrange(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = call i64 @sdslen(i64* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %96

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %42, %43
  %45 = add i64 %44, 1
  br label %46

46:                                               ; preds = %41, %40
  %47 = phi i64 [ 0, %40 ], [ %45, %41 ]
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i64 0, i64* %7, align 8
  br label %74

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %60, 1
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %71

66:                                               ; preds = %59
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %5, align 8
  %69 = sub i64 %67, %68
  %70 = add i64 %69, 1
  br label %71

71:                                               ; preds = %66, %65
  %72 = phi i64 [ 0, %65 ], [ %70, %66 ]
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %71, %55
  br label %74

74:                                               ; preds = %73, %54
  br label %76

75:                                               ; preds = %46
  store i64 0, i64* %5, align 8
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i64*, i64** %4, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @memmove(i64* %83, i64* %86, i64 %87)
  br label %89

89:                                               ; preds = %82, %79, %76
  %90 = load i64*, i64** %4, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  store i64 0, i64* %92, align 8
  %93 = load i64*, i64** %4, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @sdssetlen(i64* %93, i64 %94)
  br label %96

96:                                               ; preds = %89, %13
  ret void
}

declare dso_local i64 @sdslen(i64*) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

declare dso_local i32 @sdssetlen(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
