; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_is_ncnamechar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_is_ncnamechar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @is_ncnamechar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ncnamechar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp sge i32 %4, 65
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sle i32 %8, 90
  br i1 %9, label %164, label %10

10:                                               ; preds = %6, %1
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 95
  br i1 %13, label %164, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sge i32 %16, 97
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8, i8* %2, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %20, 122
  br i1 %21, label %164, label %22

22:                                               ; preds = %18, %14
  %23 = load i8, i8* %2, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %164, label %26

26:                                               ; preds = %22
  %27 = load i8, i8* %2, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 46
  br i1 %29, label %164, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* %2, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8, i8* %2, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 57
  br i1 %37, label %164, label %38

38:                                               ; preds = %34, %30
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 183
  br i1 %41, label %164, label %42

42:                                               ; preds = %38
  %43 = load i8, i8* %2, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 192
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8, i8* %2, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 214
  br i1 %49, label %164, label %50

50:                                               ; preds = %46, %42
  %51 = load i8, i8* %2, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 216
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8, i8* %2, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 246
  br i1 %57, label %164, label %58

58:                                               ; preds = %54, %50
  %59 = load i8, i8* %2, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %60, 248
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8, i8* %2, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sle i32 %64, 767
  br i1 %65, label %164, label %66

66:                                               ; preds = %62, %58
  %67 = load i8, i8* %2, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 768
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8, i8* %2, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %72, 879
  br i1 %73, label %164, label %74

74:                                               ; preds = %70, %66
  %75 = load i8, i8* %2, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sge i32 %76, 880
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* %2, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 893
  br i1 %81, label %164, label %82

82:                                               ; preds = %78, %74
  %83 = load i8, i8* %2, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sge i32 %84, 895
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i8, i8* %2, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 8191
  br i1 %89, label %164, label %90

90:                                               ; preds = %86, %82
  %91 = load i8, i8* %2, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sge i32 %92, 8204
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i8, i8* %2, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 %96, 8205
  br i1 %97, label %164, label %98

98:                                               ; preds = %94, %90
  %99 = load i8, i8* %2, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sge i32 %100, 8255
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i8, i8* %2, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 8256
  br i1 %105, label %164, label %106

106:                                              ; preds = %102, %98
  %107 = load i8, i8* %2, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sge i32 %108, 8304
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i8, i8* %2, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sle i32 %112, 8591
  br i1 %113, label %164, label %114

114:                                              ; preds = %110, %106
  %115 = load i8, i8* %2, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sge i32 %116, 11264
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i8, i8* %2, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp sle i32 %120, 12271
  br i1 %121, label %164, label %122

122:                                              ; preds = %118, %114
  %123 = load i8, i8* %2, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sge i32 %124, 12289
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i8, i8* %2, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sle i32 %128, 55295
  br i1 %129, label %164, label %130

130:                                              ; preds = %126, %122
  %131 = load i8, i8* %2, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sge i32 %132, 55296
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i8, i8* %2, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 56319
  br i1 %137, label %164, label %138

138:                                              ; preds = %134, %130
  %139 = load i8, i8* %2, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp sge i32 %140, 56320
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8, i8* %2, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sle i32 %144, 57343
  br i1 %145, label %164, label %146

146:                                              ; preds = %142, %138
  %147 = load i8, i8* %2, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp sge i32 %148, 63744
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i8, i8* %2, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sle i32 %152, 64975
  br i1 %153, label %164, label %154

154:                                              ; preds = %150, %146
  %155 = load i8, i8* %2, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp sge i32 %156, 65008
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i8, i8* %2, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp sle i32 %160, 65533
  br label %162

162:                                              ; preds = %158, %154
  %163 = phi i1 [ false, %154 ], [ %161, %158 ]
  br label %164

164:                                              ; preds = %162, %150, %142, %134, %126, %118, %110, %102, %94, %86, %78, %70, %62, %54, %46, %38, %34, %26, %22, %18, %10, %6
  %165 = phi i1 [ true, %150 ], [ true, %142 ], [ true, %134 ], [ true, %126 ], [ true, %118 ], [ true, %110 ], [ true, %102 ], [ true, %94 ], [ true, %86 ], [ true, %78 ], [ true, %70 ], [ true, %62 ], [ true, %54 ], [ true, %46 ], [ true, %38 ], [ true, %34 ], [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %10 ], [ true, %6 ], [ %163, %162 ]
  %166 = zext i1 %165 to i32
  ret i32 %166
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
