; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/wclickat/extr_wclickat.c_my_strstriW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/wclickat/extr_wclickat.c_my_strstriW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64*)* @my_strstriW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @my_strstriW(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8
  store i64* %13, i64** %3, align 8
  br label %73

14:                                               ; preds = %2
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @towlower(i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %19, i64** %5, align 8
  br label %20

20:                                               ; preds = %69, %14
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i64*, i64** %4, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @towlower(i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ false, %25 ], [ %34, %31 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %4, align 8
  br label %25

40:                                               ; preds = %35
  %41 = load i64*, i64** %4, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64* %42, i64** %6, align 8
  %43 = load i64*, i64** %5, align 8
  store i64* %43, i64** %7, align 8
  br label %44

44:                                               ; preds = %58, %40
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @towlower(i64 %46)
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @towlower(i64 %49)
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %52, %44
  %57 = phi i1 [ false, %44 ], [ %55, %52 ]
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %6, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %7, align 8
  br label %44

63:                                               ; preds = %56
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i64*, i64** %4, align 8
  store i64* %68, i64** %3, align 8
  br label %73

69:                                               ; preds = %63
  %70 = load i64*, i64** %4, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %4, align 8
  br label %20

72:                                               ; preds = %20
  store i64* null, i64** %3, align 8
  br label %73

73:                                               ; preds = %72, %67, %12
  %74 = load i64*, i64** %3, align 8
  ret i64* %74
}

declare dso_local i64 @towlower(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
