; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlDowncaseUnicodeString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlDowncaseUnicodeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [102 x i8] c"RtlDowncaseUnicodeString works wrong: '%c'[=0x%x] is converted to '%c'[=0x%x], expected: '%c'[=0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlDowncaseUnicodeString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlDowncaseUnicodeString() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [1025 x i8], align 16
  %5 = alloca [1025 x i8], align 16
  %6 = alloca [1025 x i8], align 16
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %114, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 1024
  br i1 %12, label %13, label %117

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %2, align 1
  %16 = load i8, i8* %2, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 65
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i8, i8* %2, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 90
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i8, i8* %2, align 1
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 %25, 65
  %27 = add nsw i32 %26, 97
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %3, align 1
  br label %102

29:                                               ; preds = %19, %13
  %30 = load i8, i8* %2, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 192
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i8, i8* %2, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 222
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8, i8* %2, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 215
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8, i8* %2, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, 32
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %3, align 1
  br label %101

46:                                               ; preds = %37, %33, %29
  %47 = load i8, i8* %2, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 913
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i8, i8* %2, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 939
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i8, i8* %2, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 930
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8, i8* %2, align 1
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, 32
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %3, align 1
  br label %100

63:                                               ; preds = %54, %50, %46
  %64 = load i8, i8* %2, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %97 [
    i32 376, label %66
    i32 385, label %67
    i32 390, label %68
    i32 393, label %69
    i32 394, label %70
    i32 398, label %71
    i32 399, label %72
    i32 400, label %73
    i32 403, label %74
    i32 404, label %75
    i32 406, label %76
    i32 407, label %77
    i32 412, label %78
    i32 413, label %79
    i32 415, label %80
    i32 425, label %81
    i32 430, label %82
    i32 433, label %83
    i32 434, label %84
    i32 439, label %85
    i32 452, label %86
    i32 455, label %87
    i32 458, label %88
    i32 497, label %89
    i32 902, label %90
    i32 904, label %91
    i32 905, label %92
    i32 906, label %93
    i32 908, label %94
    i32 910, label %95
    i32 911, label %96
  ]

66:                                               ; preds = %63
  store i8 -1, i8* %3, align 1
  br label %99

67:                                               ; preds = %63
  store i8 83, i8* %3, align 1
  br label %99

68:                                               ; preds = %63
  store i8 84, i8* %3, align 1
  br label %99

69:                                               ; preds = %63
  store i8 86, i8* %3, align 1
  br label %99

70:                                               ; preds = %63
  store i8 87, i8* %3, align 1
  br label %99

71:                                               ; preds = %63
  store i8 -35, i8* %3, align 1
  br label %99

72:                                               ; preds = %63
  store i8 89, i8* %3, align 1
  br label %99

73:                                               ; preds = %63
  store i8 91, i8* %3, align 1
  br label %99

74:                                               ; preds = %63
  store i8 96, i8* %3, align 1
  br label %99

75:                                               ; preds = %63
  store i8 99, i8* %3, align 1
  br label %99

76:                                               ; preds = %63
  store i8 105, i8* %3, align 1
  br label %99

77:                                               ; preds = %63
  store i8 104, i8* %3, align 1
  br label %99

78:                                               ; preds = %63
  store i8 111, i8* %3, align 1
  br label %99

79:                                               ; preds = %63
  store i8 114, i8* %3, align 1
  br label %99

80:                                               ; preds = %63
  store i8 117, i8* %3, align 1
  br label %99

81:                                               ; preds = %63
  store i8 -125, i8* %3, align 1
  br label %99

82:                                               ; preds = %63
  store i8 -120, i8* %3, align 1
  br label %99

83:                                               ; preds = %63
  store i8 -118, i8* %3, align 1
  br label %99

84:                                               ; preds = %63
  store i8 -117, i8* %3, align 1
  br label %99

85:                                               ; preds = %63
  store i8 -110, i8* %3, align 1
  br label %99

86:                                               ; preds = %63
  store i8 -58, i8* %3, align 1
  br label %99

87:                                               ; preds = %63
  store i8 -55, i8* %3, align 1
  br label %99

88:                                               ; preds = %63
  store i8 -52, i8* %3, align 1
  br label %99

89:                                               ; preds = %63
  store i8 -13, i8* %3, align 1
  br label %99

90:                                               ; preds = %63
  store i8 -84, i8* %3, align 1
  br label %99

91:                                               ; preds = %63
  store i8 -83, i8* %3, align 1
  br label %99

92:                                               ; preds = %63
  store i8 -82, i8* %3, align 1
  br label %99

93:                                               ; preds = %63
  store i8 -81, i8* %3, align 1
  br label %99

94:                                               ; preds = %63
  store i8 -52, i8* %3, align 1
  br label %99

95:                                               ; preds = %63
  store i8 -51, i8* %3, align 1
  br label %99

96:                                               ; preds = %63
  store i8 -50, i8* %3, align 1
  br label %99

97:                                               ; preds = %63
  %98 = load i8, i8* %2, align 1
  store i8 %98, i8* %3, align 1
  br label %99

99:                                               ; preds = %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66
  br label %100

100:                                              ; preds = %99, %58
  br label %101

101:                                              ; preds = %100, %41
  br label %102

102:                                              ; preds = %101, %23
  %103 = load i8, i8* %2, align 1
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [1025 x i8], [1025 x i8]* %4, i64 0, i64 %105
  store i8 %103, i8* %106, align 1
  %107 = load i32, i32* %1, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [1025 x i8], [1025 x i8]* %5, i64 0, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i8, i8* %3, align 1
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [1025 x i8], [1025 x i8]* %6, i64 0, i64 %112
  store i8 %110, i8* %113, align 1
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %10

117:                                              ; preds = %10
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [1025 x i8], [1025 x i8]* %4, i64 0, i64 %119
  store i8 0, i8* %120, align 1
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [1025 x i8], [1025 x i8]* %5, i64 0, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i32, i32* %1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [1025 x i8], [1025 x i8]* %6, i64 0, i64 %125
  store i8 0, i8* %126, align 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 2048, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 2048, i32* %128, align 4
  %129 = getelementptr inbounds [1025 x i8], [1025 x i8]* %4, i64 0, i64 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i8* %129, i8** %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 2048, i32* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 2048, i32* %132, align 4
  %133 = getelementptr inbounds [1025 x i8], [1025 x i8]* %5, i64 0, i64 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i8* %133, i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 2048, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 2048, i32* %136, align 4
  %137 = getelementptr inbounds [1025 x i8], [1025 x i8]* %6, i64 0, i64 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i8* %137, i8** %138, align 8
  %139 = call i32 @pRtlDowncaseUnicodeString(%struct.TYPE_4__* %8, %struct.TYPE_4__* %7, i32 0)
  store i32 0, i32* %1, align 4
  br label %140

140:                                              ; preds = %222, %117
  %141 = load i32, i32* %1, align 4
  %142 = icmp sle i32 %141, 1024
  br i1 %142, label %143, label %225

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %150, %157
  br i1 %158, label %176, label %159

159:                                              ; preds = %143
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %1, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = add nsw i32 %173, 1
  %175 = icmp eq i32 %166, %174
  br label %176

176:                                              ; preds = %159, %143
  %177 = phi i1 [ true, %143 ], [ %175, %159 ]
  %178 = zext i1 %177 to i32
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %1, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %1, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* %1, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i64
  %221 = call i32 @ok(i32 %178, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i64 %185, i64 %192, i64 %199, i64 %206, i64 %213, i64 %220)
  br label %222

222:                                              ; preds = %176
  %223 = load i32, i32* %1, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %1, align 4
  br label %140

225:                                              ; preds = %140
  ret void
}

declare dso_local i32 @pRtlDowncaseUnicodeString(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
