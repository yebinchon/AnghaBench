; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_same_symbol.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_same_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i32, i64* }

@MULTITERMINAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @same_symbol(%struct.symbol* %0, %struct.symbol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  %7 = load %struct.symbol*, %struct.symbol** %4, align 8
  %8 = load %struct.symbol*, %struct.symbol** %5, align 8
  %9 = icmp eq %struct.symbol* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.symbol*, %struct.symbol** %4, align 8
  %13 = getelementptr inbounds %struct.symbol, %struct.symbol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MULTITERMINAL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %63

18:                                               ; preds = %11
  %19 = load %struct.symbol*, %struct.symbol** %5, align 8
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MULTITERMINAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %63

25:                                               ; preds = %18
  %26 = load %struct.symbol*, %struct.symbol** %4, align 8
  %27 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.symbol*, %struct.symbol** %5, align 8
  %30 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %63

34:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.symbol*, %struct.symbol** %4, align 8
  %38 = getelementptr inbounds %struct.symbol, %struct.symbol* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.symbol*, %struct.symbol** %4, align 8
  %43 = getelementptr inbounds %struct.symbol, %struct.symbol* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.symbol*, %struct.symbol** %5, align 8
  %50 = getelementptr inbounds %struct.symbol, %struct.symbol* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %63

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %35

62:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57, %33, %24, %17, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
