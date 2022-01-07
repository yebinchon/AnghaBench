; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_doLsmWork.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_doLsmWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @doLsmWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doLsmWork(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @LSM_OK, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %65, %21
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 2147483647, %29 ]
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @doLsmSingleWork(i32* %32, i32 0, i32 %33, i32 %34, i32* %12, i32* %11)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @LSM_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @lsm_checkpoint(i32* %46, i32 0)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %42, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @LSM_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i1 [ true, %56 ], [ %62, %60 ]
  br label %65

65:                                               ; preds = %63, %53, %49
  %66 = phi i1 [ false, %53 ], [ false, %49 ], [ %64, %63 ]
  br i1 %66, label %22, label %67

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %4
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @LSM_OK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32*, i32** %8, align 8
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %75
  br label %81

81:                                               ; preds = %80, %68
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @doLsmSingleWork(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lsm_checkpoint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
