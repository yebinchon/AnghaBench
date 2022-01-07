; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/parttest/extr_parttest.c_CheckAgainstNTFS.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/parttest/extr_parttest.c_CheckAgainstNTFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"NTFS    \00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckAgainstNTFS(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @RtlCompareMemory(i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %10 = icmp ne i32 %9, 8
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 7
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %86

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %14

32:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %86

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 512
  br i1 %60, label %61, label %84

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 1024
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 2048
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 4096
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 8192
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 16384
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 32768
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 65536
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %51
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %82, %45, %26, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @RtlCompareMemory(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
