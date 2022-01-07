; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpSeek.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_HDR_NUMELE_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lpSeek(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @lpGetNumElements(i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @LP_HDR_NUMELE_UNKNOWN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %87

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %87

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sdiv i64 %33, 2
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %36, %31
  br label %46

41:                                               ; preds = %2
  %42 = load i64, i64* %5, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %41
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = call i8* @lpFirst(i8* %50)
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %60, %49
  %53 = load i64, i64* %5, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i1 [ false, %52 ], [ %57, %55 ]
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @lpNext(i8* %61, i8* %62)
  store i8* %63, i8** %8, align 8
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %5, align 8
  br label %52

66:                                               ; preds = %58
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %3, align 8
  br label %87

68:                                               ; preds = %46
  %69 = load i8*, i8** %4, align 8
  %70 = call i8* @lpLast(i8* %69)
  store i8* %70, i8** %9, align 8
  br label %71

71:                                               ; preds = %79, %68
  %72 = load i64, i64* %5, align 8
  %73 = icmp slt i64 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  br i1 %78, label %79, label %85

79:                                               ; preds = %77
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i8* @lpPrev(i8* %80, i8* %81)
  store i8* %82, i8** %9, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %71

85:                                               ; preds = %77
  %86 = load i8*, i8** %9, align 8
  store i8* %86, i8** %3, align 8
  br label %87

87:                                               ; preds = %85, %66, %30, %25
  %88 = load i8*, i8** %3, align 8
  ret i8* %88
}

declare dso_local i64 @lpGetNumElements(i8*) #1

declare dso_local i8* @lpFirst(i8*) #1

declare dso_local i8* @lpNext(i8*, i8*) #1

declare dso_local i8* @lpLast(i8*) #1

declare dso_local i8* @lpPrev(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
