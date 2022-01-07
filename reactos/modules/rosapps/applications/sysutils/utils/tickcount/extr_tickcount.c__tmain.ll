; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/tickcount/extr_tickcount.c__tmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/tickcount/extr_tickcount.c__tmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tmain(i32 %0, i64** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [23 x i64], align 16
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64** %1, i64*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = call i64 (...) @GetTickCount()
  %14 = trunc i64 %13 to i32
  %15 = call i32 @print_uptime(i32 %14, i32 0, i32* null, i32 0)
  %16 = call i64 @_T(i8 signext 10)
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @_puttc(i64 %16, i32 %17)
  br label %79

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i64**, i64*** %5, align 8
  %24 = getelementptr inbounds i64*, i64** %23, i64 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @_T(i8 signext 45)
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %22
  %31 = load i64**, i64*** %5, align 8
  %32 = getelementptr inbounds i64*, i64** %31, i64 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* @stdin, align 4
  %40 = call i32 @feof(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = getelementptr inbounds [23 x i64], [23 x i64]* %7, i64 0, i64 0
  %45 = load i32, i32* @stdin, align 4
  %46 = call i64* @_fgetts(i64* %44, i32 22, i32 %45)
  store i64* %46, i64** %8, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = icmp eq i64* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %80

50:                                               ; preds = %43
  %51 = load i64*, i64** %8, align 8
  %52 = call i32 @parse_print(i64* %51)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %80

56:                                               ; preds = %50
  br label %38

57:                                               ; preds = %38
  br label %78

58:                                               ; preds = %30, %22, %19
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i64**, i64*** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64*, i64** %64, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = call i32 @parse_print(i64* %68)
  store i32 %69, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %80

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %59

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %57
  br label %79

79:                                               ; preds = %78, %12
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %71, %54, %49
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @print_uptime(i32, i32, i32*, i32) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @_puttc(i64, i32) #1

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i32 @feof(i32) #1

declare dso_local i64* @_fgetts(i64*, i32, i32) #1

declare dso_local i32 @parse_print(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
