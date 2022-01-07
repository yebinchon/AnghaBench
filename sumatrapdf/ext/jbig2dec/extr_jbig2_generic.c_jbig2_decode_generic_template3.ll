; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_generic.c_jbig2_decode_generic_template3.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_generic.c_jbig2_decode_generic_template3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"failed to decode arithmetic code when handling generic template3 optimized\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i32*, %struct.TYPE_6__*, i32*)* @jbig2_decode_generic_template3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_generic_template3(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, %struct.TYPE_6__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %12, align 8
  store i32* %5, i32** %13, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %18, align 8
  %42 = load i32, i32* %14, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %165

45:                                               ; preds = %6
  store i32 0, i32* %20, align 4
  br label %46

46:                                               ; preds = %161, %45
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %164

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 7
  %53 = and i32 %52, -8
  store i32 %53, i32* %24, align 4
  %54 = load i32*, i32** %17, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %17, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 0, %60 ]
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %23, align 4
  %64 = ashr i32 %63, 1
  %65 = and i32 %64, 1008
  store i32 %65, i32* %22, align 4
  store i32 0, i32* %19, align 4
  br label %66

66:                                               ; preds = %152, %61
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %24, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %155

70:                                               ; preds = %66
  store i32 0, i32* %25, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %19, align 4
  %73 = sub nsw i32 %71, %72
  %74 = icmp sgt i32 %73, 8
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %19, align 4
  %79 = sub nsw i32 %77, %78
  br label %80

80:                                               ; preds = %76, %75
  %81 = phi i32 [ 8, %75 ], [ %79, %76 ]
  store i32 %81, i32* %27, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32, i32* %23, align 4
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 8
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %19, align 4
  %94 = ashr i32 %93, 3
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  br label %100

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %91
  %101 = phi i32 [ %98, %91 ], [ 0, %99 ]
  %102 = or i32 %86, %101
  store i32 %102, i32* %23, align 4
  br label %103

103:                                              ; preds = %100, %80
  store i32 0, i32* %26, align 4
  br label %104

104:                                              ; preds = %142, %103
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* %27, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %145

108:                                              ; preds = %104
  %109 = load i32*, i32** %11, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %22, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @jbig2_arith_decode(i32* %109, i32* %113, i32* %21)
  store i32 %114, i32* %28, align 4
  %115 = load i32, i32* %21, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @jbig2_error(i32* %118, i32 %119, i32 %122, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  store i32 %123, i32* %7, align 4
  br label %165

124:                                              ; preds = %108
  %125 = load i32, i32* %28, align 4
  %126 = load i32, i32* %26, align 4
  %127 = sub nsw i32 7, %126
  %128 = shl i32 %125, %127
  %129 = load i32, i32* %25, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* %22, align 4
  %132 = and i32 %131, 503
  %133 = shl i32 %132, 1
  %134 = load i32, i32* %28, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %26, align 4
  %138 = sub nsw i32 8, %137
  %139 = ashr i32 %136, %138
  %140 = and i32 %139, 16
  %141 = or i32 %135, %140
  store i32 %141, i32* %22, align 4
  br label %142

142:                                              ; preds = %124
  %143 = load i32, i32* %26, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %26, align 4
  br label %104

145:                                              ; preds = %104
  %146 = load i32, i32* %25, align 4
  %147 = load i32*, i32** %18, align 8
  %148 = load i32, i32* %19, align 4
  %149 = ashr i32 %148, 3
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  br label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 8
  store i32 %154, i32* %19, align 4
  br label %66

155:                                              ; preds = %66
  %156 = load i32*, i32** %18, align 8
  store i32* %156, i32** %17, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32*, i32** %18, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %18, align 8
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %20, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %20, align 4
  br label %46

164:                                              ; preds = %46
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %164, %117, %44
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local i32 @jbig2_arith_decode(i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
