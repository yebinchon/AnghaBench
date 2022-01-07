; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_compare_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_compare_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_SS = common dso_local global i32 0, align 4
@COND_RHS = common dso_local global i32 0, align 4
@szEmpty = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid string operator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i64)* @compare_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_string(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @COND_SS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @COND_RHS, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @compare_substring(i64 %18, i32 %19, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %126

22:                                               ; preds = %13, %4
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @szEmpty, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @szEmpty, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @str_is_number(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @str_is_number(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @atoiW(i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @atoiW(i64 %47)
  %49 = call i32 @compare_int(i32 %45, i32 %46, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %126

50:                                               ; preds = %39, %35, %32
  %51 = load i32, i32* %7, align 4
  switch i32 %51, label %124 [
    i32 129, label %52
    i32 137, label %58
    i32 139, label %64
    i32 128, label %70
    i32 138, label %76
    i32 130, label %82
    i32 132, label %88
    i32 134, label %94
    i32 136, label %100
    i32 131, label %106
    i32 135, label %112
    i32 133, label %118
  ]

52:                                               ; preds = %50
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @strcmpW(i64 %53, i64 %54)
  %56 = icmp slt i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %126

58:                                               ; preds = %50
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @strcmpW(i64 %59, i64 %60)
  %62 = icmp sgt i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %126

64:                                               ; preds = %50
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @strcmpW(i64 %65, i64 %66)
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %126

70:                                               ; preds = %50
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @strcmpW(i64 %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %126

76:                                               ; preds = %50
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @strcmpW(i64 %77, i64 %78)
  %80 = icmp sge i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %126

82:                                               ; preds = %50
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @strcmpW(i64 %83, i64 %84)
  %86 = icmp sle i32 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %126

88:                                               ; preds = %50
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @strcmpiW(i64 %89, i64 %90)
  %92 = icmp slt i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %126

94:                                               ; preds = %50
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @strcmpiW(i64 %95, i64 %96)
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %126

100:                                              ; preds = %50
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @strcmpiW(i64 %101, i64 %102)
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %5, align 4
  br label %126

106:                                              ; preds = %50
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @strcmpiW(i64 %107, i64 %108)
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %126

112:                                              ; preds = %50
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @strcmpiW(i64 %113, i64 %114)
  %116 = icmp sge i32 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %5, align 4
  br label %126

118:                                              ; preds = %50
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @strcmpiW(i64 %119, i64 %120)
  %122 = icmp sle i32 %121, 0
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %126

124:                                              ; preds = %50
  %125 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %118, %112, %106, %100, %94, %88, %82, %76, %70, %64, %58, %52, %43, %17
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @compare_substring(i64, i32, i64) #1

declare dso_local i64 @str_is_number(i64) #1

declare dso_local i32 @compare_int(i32, i32, i32) #1

declare dso_local i32 @atoiW(i64) #1

declare dso_local i32 @strcmpW(i64, i64) #1

declare dso_local i32 @strcmpiW(i64, i64) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
