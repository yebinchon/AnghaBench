; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608ParseData.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608ParseData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@EIA608_STATUS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\1B[0;33m%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@EIA608_MODE_POPUP = common dso_local global i64 0, align 8
@EIA608_STATUS_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32)* @Eia608ParseData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Eia608ParseData(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EIA608_STATUS_DEFAULT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 24
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 31
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %96 [
    i32 17, label %19
    i32 18, label %44
    i32 19, label %44
    i32 20, label %58
    i32 21, label %58
    i32 23, label %71
  ]

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 47
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @Eia608ParseTextAttribute(%struct.TYPE_10__* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %23, %20
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 48
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 63
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @Eia608ParseDouble(%struct.TYPE_10__* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %35, %32
  br label %43

43:                                               ; preds = %42
  br label %96

44:                                               ; preds = %17, %17
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 32
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %49, 63
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @Eia608ParseExtended(%struct.TYPE_10__* %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %48, %45
  br label %57

57:                                               ; preds = %56
  br label %96

58:                                               ; preds = %17, %17
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp sge i32 %60, 32
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp sle i32 %63, 47
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @Eia608ParseCommand0x14(%struct.TYPE_10__* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %62, %59
  br label %70

70:                                               ; preds = %69
  br label %96

71:                                               ; preds = %17
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 33
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, 35
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @Eia608ParseCommand0x17(%struct.TYPE_10__* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %75, %72
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = icmp sge i32 %85, 46
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp sle i32 %88, 47
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @Eia608ParseTextAttribute(%struct.TYPE_10__* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %90, %87, %84
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %17, %95, %70, %57, %43
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = icmp sge i32 %101, 64
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp sle i32 %104, 95
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @Eia608ParsePac(%struct.TYPE_10__* %107, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %106, %103, %100
  br label %112

112:                                              ; preds = %111
  br label %134

113:                                              ; preds = %96
  %114 = load i32, i32* %5, align 4
  %115 = icmp sge i32 %114, 17
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = icmp sle i32 %117, 23
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = icmp sge i32 %121, 64
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = icmp sle i32 %124, 127
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @Eia608ParsePac(%struct.TYPE_10__* %127, i32 %128, i32 %129)
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %126, %123, %120
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %116, %113
  br label %134

134:                                              ; preds = %133, %112
  %135 = load i32, i32* %5, align 4
  %136 = icmp sge i32 %135, 32
  br i1 %136, label %137, label %158

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = call i32 @Debug(i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @Eia608ParseSingle(%struct.TYPE_10__* %141, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp sge i32 %144, 32
  br i1 %145, label %146, label %155

146:                                              ; preds = %137
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = call i32 @Debug(i32 %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @Eia608ParseSingle(%struct.TYPE_10__* %150, i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %146, %137
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %157 = call i32 @Debug(i32 %156)
  br label %158

158:                                              ; preds = %155, %134
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @EIA608_MODE_POPUP, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @EIA608_STATUS_CHANGED, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @EIA608_STATUS_DEFAULT, align 4
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %168, %164, %158
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local i32 @Eia608ParseTextAttribute(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Eia608ParseDouble(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Eia608ParseExtended(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @Eia608ParseCommand0x14(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Eia608ParseCommand0x17(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Eia608ParsePac(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @Debug(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @Eia608ParseSingle(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
