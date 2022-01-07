; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_list.c_ME_DITypesEqual.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_list.c_ME_DITypesEqual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@diRun = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i32 0, align 4
@diStartRow = common dso_local global i32 0, align 4
@diTextEnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ME_DITypesEqual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_DITypesEqual(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %81 [
    i32 132, label %7
    i32 130, label %18
    i32 133, label %29
    i32 129, label %40
    i32 128, label %51
    i32 131, label %66
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @diRun, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @diParagraph, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %86

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @diRun, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @diStartRow, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @diTextEnd, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @diParagraph, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ true, %29 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %86

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @diStartRow, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @diParagraph, align 4
  %47 = icmp eq i32 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ true, %40 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %86

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @diStartRow, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @diParagraph, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @diTextEnd, align 4
  %62 = icmp eq i32 %60, %61
  br label %63

63:                                               ; preds = %59, %55, %51
  %64 = phi i1 [ true, %55 ], [ true, %51 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %86

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @diRun, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @diParagraph, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @diTextEnd, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

78:                                               ; preds = %74, %70, %66
  %79 = phi i1 [ true, %70 ], [ true, %66 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %86

81:                                               ; preds = %2
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %78, %63, %48, %37, %26, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
