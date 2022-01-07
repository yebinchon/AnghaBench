; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_ReduceOrder.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_ReduceOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, i64, i32 }

@MAX_FREQ = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@PPMD8_MAX_ORDER = common dso_local global i32 0, align 4
@PPMD8_RESTORE_METHOD_FREEZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*)* @ReduceOrder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ReduceOrder(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %9, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = call i64 @REF(%struct.TYPE_21__* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @SetSuccessor(%struct.TYPE_22__* %20, i64 %21)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %109, %3
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = icmp ne %struct.TYPE_22__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = call %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__* %31)
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %7, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  br label %104

34:                                               ; preds = %27
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %4, align 8
  br label %178

41:                                               ; preds = %34
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = call %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__* %42)
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %7, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = call %struct.TYPE_22__* @STATS(%struct.TYPE_21__* %49)
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %63, %59
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 1
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %8, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %66, %71
  br i1 %72, label %60, label %73

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MAX_FREQ, align 4
  %79 = sub nsw i32 %78, 9
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %81, %74
  br label %103

91:                                               ; preds = %41
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = call %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__* %92)
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** %8, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 32
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %91, %90
  br label %104

104:                                              ; preds = %103, %30
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %106 = call i64 @SUCCESSOR(%struct.TYPE_22__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %117

109:                                              ; preds = %104
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @SetSuccessor(%struct.TYPE_22__* %110, i64 %111)
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %27

117:                                              ; preds = %108
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %119 = call i64 @SUCCESSOR(%struct.TYPE_22__* %118)
  %120 = load i64, i64* %10, align 8
  %121 = icmp sle i64 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %117
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  store %struct.TYPE_22__* %125, %struct.TYPE_22__** %12, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 3
  store %struct.TYPE_22__* %126, %struct.TYPE_22__** %128, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = load i32, i32* @False, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %132 = call %struct.TYPE_21__* @CreateSuccessors(%struct.TYPE_23__* %129, i32 %130, i32* null, %struct.TYPE_21__* %131)
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** %11, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %134 = icmp eq %struct.TYPE_21__* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %137 = call i32 @SetSuccessor(%struct.TYPE_22__* %136, i64 0)
  br label %143

138:                                              ; preds = %122
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %141 = call i64 @REF(%struct.TYPE_21__* %140)
  %142 = call i32 @SetSuccessor(%struct.TYPE_22__* %139, i64 %141)
  br label %143

143:                                              ; preds = %138, %135
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  store %struct.TYPE_22__* %144, %struct.TYPE_22__** %146, align 8
  br label %147

147:                                              ; preds = %143, %117
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %169

152:                                              ; preds = %147
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = icmp eq %struct.TYPE_21__* %153, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %163 = call i64 @SUCCESSOR(%struct.TYPE_22__* %162)
  %164 = call i32 @SetSuccessor(%struct.TYPE_22__* %161, i64 %163)
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 -1
  store %struct.TYPE_21__* %168, %struct.TYPE_21__** %166, align 8
  br label %169

169:                                              ; preds = %158, %152, %147
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %171 = call i64 @SUCCESSOR(%struct.TYPE_22__* %170)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  br label %178

174:                                              ; preds = %169
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %176 = call i64 @SUCCESSOR(%struct.TYPE_22__* %175)
  %177 = call %struct.TYPE_21__* @CTX(i64 %176)
  store %struct.TYPE_21__* %177, %struct.TYPE_21__** %4, align 8
  br label %178

178:                                              ; preds = %174, %173, %39
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %179
}

declare dso_local i64 @REF(%struct.TYPE_21__*) #1

declare dso_local i32 @SetSuccessor(%struct.TYPE_22__*, i64) #1

declare dso_local %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @STATS(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__*) #1

declare dso_local i64 @SUCCESSOR(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @CreateSuccessors(%struct.TYPE_23__*, i32, i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @CTX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
