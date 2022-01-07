; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbbtype.c__mbbtype.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbbtype.c__mbbtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MBC_TRAIL = common dso_local global i32 0, align 4
@_MBC_ILLEGAL = common dso_local global i32 0, align 4
@_MBC_SINGLE = common dso_local global i32 0, align 4
@_MBC_LEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mbbtype(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %61

8:                                                ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sge i32 %10, 64
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sle i32 %14, 126
  br i1 %15, label %24, label %16

16:                                               ; preds = %12, %8
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 128
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 %22, 252
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %12
  %25 = load i32, i32* @_MBC_TRAIL, align 4
  store i32 %25, i32* %3, align 4
  br label %132

26:                                               ; preds = %20, %16
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 32
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 126
  br i1 %33, label %58, label %34

34:                                               ; preds = %30, %26
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sge i32 %36, 161
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sle i32 %40, 223
  br i1 %41, label %58, label %42

42:                                               ; preds = %38, %34
  %43 = load i8, i8* %4, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 129
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sle i32 %48, 159
  br i1 %49, label %58, label %50

50:                                               ; preds = %46, %42
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sge i32 %52, 224
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i8, i8* %4, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sle i32 %56, 252
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %46, %38, %30
  %59 = load i32, i32* @_MBC_ILLEGAL, align 4
  store i32 %59, i32* %3, align 4
  br label %132

60:                                               ; preds = %54, %50
  store i32 0, i32* %3, align 4
  br label %132

61:                                               ; preds = %2
  %62 = load i8, i8* %4, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp sge i32 %63, 32
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sle i32 %67, 126
  br i1 %68, label %77, label %69

69:                                               ; preds = %65, %61
  %70 = load i8, i8* %4, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sge i32 %71, 161
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8, i8* %4, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sle i32 %75, 223
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %65
  %78 = load i32, i32* @_MBC_SINGLE, align 4
  store i32 %78, i32* %3, align 4
  br label %132

79:                                               ; preds = %73, %69
  %80 = load i8, i8* %4, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sge i32 %81, 129
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i8, i8* %4, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sle i32 %85, 159
  br i1 %86, label %95, label %87

87:                                               ; preds = %83, %79
  %88 = load i8, i8* %4, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sge i32 %89, 224
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i8, i8* %4, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sle i32 %93, 252
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %83
  %96 = load i32, i32* @_MBC_LEAD, align 4
  store i32 %96, i32* %3, align 4
  br label %132

97:                                               ; preds = %91, %87
  %98 = load i8, i8* %4, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp sge i32 %99, 32
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i8, i8* %4, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sle i32 %103, 126
  br i1 %104, label %129, label %105

105:                                              ; preds = %101, %97
  %106 = load i8, i8* %4, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sge i32 %107, 161
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i8, i8* %4, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp sle i32 %111, 223
  br i1 %112, label %129, label %113

113:                                              ; preds = %109, %105
  %114 = load i8, i8* %4, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp sge i32 %115, 129
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8, i8* %4, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp sle i32 %119, 159
  br i1 %120, label %129, label %121

121:                                              ; preds = %117, %113
  %122 = load i8, i8* %4, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp sge i32 %123, 224
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i8, i8* %4, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp sle i32 %127, 252
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %117, %109, %101
  %130 = load i32, i32* @_MBC_ILLEGAL, align 4
  store i32 %130, i32* %3, align 4
  br label %132

131:                                              ; preds = %125, %121
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %129, %95, %77, %60, %58, %24
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
