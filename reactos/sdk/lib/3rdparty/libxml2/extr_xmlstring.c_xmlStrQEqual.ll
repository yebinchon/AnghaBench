; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlstring.c_xmlStrQEqual.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlstring.c_xmlStrQEqual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrQEqual(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i64*, i64** %6, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = call i32 @xmlStrEqual(i64* %11, i64* %12)
  store i32 %13, i32* %4, align 4
  br label %65

14:                                               ; preds = %3
  %15 = load i64*, i64** %6, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %65

18:                                               ; preds = %14
  %19 = load i64*, i64** %7, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %65

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i64*, i64** %5, align 8
  %25 = getelementptr inbounds i64, i64* %24, i32 1
  store i64* %25, i64** %5, align 8
  %26 = load i64, i64* %24, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %65

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %7, align 8
  %35 = load i64, i64* %33, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  br i1 %42, label %23, label %43

43:                                               ; preds = %41
  %44 = load i64*, i64** %7, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %7, align 8
  %46 = load i64, i64* %44, align 8
  %47 = icmp ne i64 %46, 58
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %65

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i64*, i64** %6, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %6, align 8
  %53 = load i64, i64* %51, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %65

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58
  %60 = load i64*, i64** %7, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %7, align 8
  %62 = load i64, i64* %60, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %50, label %64

64:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %57, %48, %30, %21, %17, %10
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @xmlStrEqual(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
