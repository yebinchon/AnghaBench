; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_StatLoop.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_StatLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }

@RD_OPT_BASIC = common dso_local global i32 0, align 4
@RD_OPT_NONE = common dso_local global i32 0, align 4
@DQ_LIMIT = common dso_local global i64 0, align 8
@PARTITION0_SIZE_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @StatLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StatLoop(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  store i32 20, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 20, %40
  %42 = load i32, i32* %7, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 20
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 3
  br i1 %49, label %53, label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %31
  %54 = load i32, i32* @RD_OPT_BASIC, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @RD_OPT_NONE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  store i32 %65, i32* %12, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = call i32 @InitPassStats(%struct.TYPE_13__* %66, %struct.TYPE_14__* %13)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = call i32 @ResetTokenStats(%struct.TYPE_13__* %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %57
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 200
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = ashr i32 %79, 1
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 100, %81 ]
  store i32 %83, i32* %12, align 4
  br label %93

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  %86 = icmp sgt i32 %85, 200
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = ashr i32 %88, 2
  br label %91

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %87
  %92 = phi i32 [ %89, %87 ], [ 50, %90 ]
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %91, %82
  br label %94

94:                                               ; preds = %93, %57
  br label %95

95:                                               ; preds = %156, %133, %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %7, align 4
  %98 = icmp sgt i32 %96, 0
  br i1 %98, label %99, label %157

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @fabs(i32 %101)
  %103 = load i64, i64* @DQ_LIMIT, align 8
  %104 = icmp sle i64 %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %108, %105, %99
  %114 = phi i1 [ true, %105 ], [ true, %99 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %14, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @OneStatPass(%struct.TYPE_13__* %116, i32 %117, i32 %118, i32 %119, %struct.TYPE_14__* %13)
  store i64 %120, i64* %15, align 8
  %121 = load i64, i64* %15, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %181

124:                                              ; preds = %113
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* @PARTITION0_SIZE_LIMIT, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %95

140:                                              ; preds = %129, %124
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %157

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = call i32 @ComputeNextQ(%struct.TYPE_14__* %13)
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @fabs(i32 %150)
  %152 = load i64, i64* @DQ_LIMIT, align 8
  %153 = icmp sle i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %157

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %144
  br label %95

157:                                              ; preds = %154, %143, %95
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %160, %157
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = call i32 @FinalizeSkipProba(%struct.TYPE_13__* %165)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 7
  %169 = call i32 @FinalizeTokenProbas(i32* %168)
  br label %170

170:                                              ; preds = %164, %160
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 7
  %173 = call i32 @VP8CalculateLevelCosts(i32* %172)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = call i32 @WebPReportProgress(i32 %176, i32 %177, i32* %179)
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %170, %123
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @InitPassStats(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ResetTokenStats(%struct.TYPE_13__*) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local i64 @OneStatPass(%struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ComputeNextQ(%struct.TYPE_14__*) #1

declare dso_local i32 @FinalizeSkipProba(%struct.TYPE_13__*) #1

declare dso_local i32 @FinalizeTokenProbas(i32*) #1

declare dso_local i32 @VP8CalculateLevelCosts(i32*) #1

declare dso_local i32 @WebPReportProgress(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
