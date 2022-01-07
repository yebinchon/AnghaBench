; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_is_namestartchar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_is_namestartchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @is_namestartchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_namestartchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 58
  br i1 %5, label %132, label %6

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sge i32 %8, 65
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sle i32 %12, 90
  br i1 %13, label %132, label %14

14:                                               ; preds = %10, %6
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 95
  br i1 %17, label %132, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* %2, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 97
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8, i8* %2, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 122
  br i1 %25, label %132, label %26

26:                                               ; preds = %22, %18
  %27 = load i8, i8* %2, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sge i32 %28, 192
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8, i8* %2, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sle i32 %32, 214
  br i1 %33, label %132, label %34

34:                                               ; preds = %30, %26
  %35 = load i8, i8* %2, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 216
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 246
  br i1 %41, label %132, label %42

42:                                               ; preds = %38, %34
  %43 = load i8, i8* %2, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 248
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8, i8* %2, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 767
  br i1 %49, label %132, label %50

50:                                               ; preds = %46, %42
  %51 = load i8, i8* %2, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 880
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8, i8* %2, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 893
  br i1 %57, label %132, label %58

58:                                               ; preds = %54, %50
  %59 = load i8, i8* %2, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %60, 895
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8, i8* %2, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sle i32 %64, 8191
  br i1 %65, label %132, label %66

66:                                               ; preds = %62, %58
  %67 = load i8, i8* %2, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 8204
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8, i8* %2, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %72, 8205
  br i1 %73, label %132, label %74

74:                                               ; preds = %70, %66
  %75 = load i8, i8* %2, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sge i32 %76, 8304
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* %2, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 8591
  br i1 %81, label %132, label %82

82:                                               ; preds = %78, %74
  %83 = load i8, i8* %2, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sge i32 %84, 11264
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i8, i8* %2, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 12271
  br i1 %89, label %132, label %90

90:                                               ; preds = %86, %82
  %91 = load i8, i8* %2, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sge i32 %92, 12289
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i8, i8* %2, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 %96, 55295
  br i1 %97, label %132, label %98

98:                                               ; preds = %94, %90
  %99 = load i8, i8* %2, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sge i32 %100, 55296
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i8, i8* %2, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 56319
  br i1 %105, label %132, label %106

106:                                              ; preds = %102, %98
  %107 = load i8, i8* %2, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sge i32 %108, 56320
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i8, i8* %2, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sle i32 %112, 57343
  br i1 %113, label %132, label %114

114:                                              ; preds = %110, %106
  %115 = load i8, i8* %2, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sge i32 %116, 63744
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i8, i8* %2, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp sle i32 %120, 64975
  br i1 %121, label %132, label %122

122:                                              ; preds = %118, %114
  %123 = load i8, i8* %2, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sge i32 %124, 65008
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i8, i8* %2, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sle i32 %128, 65533
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ false, %122 ], [ %129, %126 ]
  br label %132

132:                                              ; preds = %130, %118, %110, %102, %94, %86, %78, %70, %62, %54, %46, %38, %30, %22, %14, %10, %1
  %133 = phi i1 [ true, %118 ], [ true, %110 ], [ true, %102 ], [ true, %94 ], [ true, %86 ], [ true, %78 ], [ true, %70 ], [ true, %62 ], [ true, %54 ], [ true, %46 ], [ true, %38 ], [ true, %30 ], [ true, %22 ], [ true, %14 ], [ true, %10 ], [ true, %1 ], [ %131, %130 ]
  %134 = zext i1 %133 to i32
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
