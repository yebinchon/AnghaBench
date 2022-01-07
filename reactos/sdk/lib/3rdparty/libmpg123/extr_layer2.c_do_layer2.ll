; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer2.c_do_layer2.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer2.c_do_layer2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, i32, i64 (i32, i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_10__*)*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@fraction = common dso_local global i32** null, align 8
@SBLIMIT = common dso_local global i64 0, align 8
@MPG_MD_JOINT_STEREO = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Truncating stereo boundary to sideband limit.\0A\00", align 1
@SINGLE_MIX = common dso_local global i32 0, align 4
@SINGLE_LEFT = common dso_local global i32 0, align 4
@SCALE_BLOCK = common dso_local global i32 0, align 4
@SINGLE_STEREO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_layer2(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i32], align 16
  %8 = alloca [192 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32**, i32*** @fraction, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32** @real(i32* %18)
  %20 = getelementptr inbounds i32*, i32** %19, i64 4
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @SBLIMIT, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %16, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = call i32 @II_select_table(%struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MPG_MD_JOINT_STEREO, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 2
  %39 = add nsw i32 %38, 4
  br label %44

40:                                               ; preds = %1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i32 [ %39, %34 ], [ %43, %40 ]
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %55, %44
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @SINGLE_MIX, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %63
  %71 = load i32, i32* @SINGLE_LEFT, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %74 = getelementptr inbounds [192 x i32], [192 x i32]* %8, i64 0, i64 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = call i32 @II_step_one(i32* %73, i32* %74, %struct.TYPE_10__* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %144, %72
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @SCALE_BLOCK, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %147

81:                                               ; preds = %77
  %82 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %83 = load i32**, i32*** @fraction, align 8
  %84 = getelementptr inbounds [192 x i32], [192 x i32]* %8, i64 0, i64 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = load i32, i32* %4, align 4
  %87 = ashr i32 %86, 2
  %88 = call i32 @II_step_two(i32* %82, i32** %83, i32* %84, %struct.TYPE_10__* %85, i32 %87)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %140, %81
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %143

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @SINGLE_STEREO, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 7
  %99 = load i64 (i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_10__*)** %98, align 8
  %100 = load i32**, i32*** @fraction, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = call i64 %99(i32 %108, %struct.TYPE_10__* %109)
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %3, align 4
  br label %139

115:                                              ; preds = %92
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  %118 = load i64 (i32, i32, %struct.TYPE_10__*)*, i64 (i32, i32, %struct.TYPE_10__*)** %117, align 8
  %119 = load i32**, i32*** @fraction, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32**, i32*** @fraction, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %134 = call i64 %118(i32 %125, i32 %132, %struct.TYPE_10__* %133)
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %115, %96
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %89

143:                                              ; preds = %89
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %77

147:                                              ; preds = %77
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32** @real(i32*) #1

declare dso_local i32 @II_select_table(%struct.TYPE_10__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @II_step_one(i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @II_step_two(i32*, i32**, i32*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
