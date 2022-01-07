; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_GetPackedByteCount.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_GetPackedByteCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetPackedByteCount(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp sge i64 %10, 72057594037927936
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 8, i32* %3, align 4
  br label %113

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp sge i64 %15, 281474976710656
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 7, i32* %3, align 4
  br label %113

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp sge i64 %20, 1099511627776
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 6, i32* %3, align 4
  br label %113

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp sge i64 %25, 4294967296
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 5, i32* %3, align 4
  br label %113

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 16777216
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 4, i32* %3, align 4
  br label %113

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 65536
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 3, i32* %3, align 4
  br label %113

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 256
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 2, i32* %3, align 4
  br label %113

40:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %113

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp sge i64 %46, 36028797018963968
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 8, i32* %3, align 4
  br label %113

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp sge i64 %51, 140737488355328
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 7, i32* %3, align 4
  br label %113

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp sge i64 %56, 549755813888
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 6, i32* %3, align 4
  br label %113

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = icmp uge i32 %60, -2147483648
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 5, i32* %3, align 4
  br label %113

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %64, 8388608
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 4, i32* %3, align 4
  br label %113

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = icmp sge i32 %68, 32768
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 3, i32* %3, align 4
  br label %113

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %72, 128
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 2, i32* %3, align 4
  br label %113

75:                                               ; preds = %71
  br label %112

76:                                               ; preds = %41
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ule i64 %78, -36028797018963968
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 8, i32* %3, align 4
  br label %113

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ule i64 %83, -140737488355328
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 7, i32* %3, align 4
  br label %113

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ule i64 %88, -549755813888
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 6, i32* %3, align 4
  br label %113

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ule i64 %93, -2147483648
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 5, i32* %3, align 4
  br label %113

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ule i64 %98, -8388608
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 4, i32* %3, align 4
  br label %113

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ule i64 %103, -32768
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 3, i32* %3, align 4
  br label %113

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp ule i64 %108, -128
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 2, i32* %3, align 4
  br label %113

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %75
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %110, %105, %100, %95, %90, %85, %80, %74, %70, %66, %62, %58, %53, %48, %40, %39, %35, %31, %27, %22, %17, %12
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
