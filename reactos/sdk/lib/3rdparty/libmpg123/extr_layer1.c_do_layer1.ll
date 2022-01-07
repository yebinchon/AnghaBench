; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer1.c_do_layer1.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer1.c_do_layer1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i32, i64 (i32, i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SBLIMIT = common dso_local global i32 0, align 4
@fraction = common dso_local global i32* null, align 8
@MPG_MD_JOINT_STEREO = common dso_local global i64 0, align 8
@SINGLE_MIX = common dso_local global i32 0, align 4
@SINGLE_LEFT = common dso_local global i32 0, align 4
@NOQUIET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Aborting layer I decoding after step one.\0A\00", align 1
@SCALE_BLOCK = common dso_local global i32 0, align 4
@SINGLE_STEREO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_layer1(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @SBLIMIT, align 4
  %16 = mul nsw i32 2, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @SBLIMIT, align 4
  %21 = zext i32 %20 to i64
  %22 = mul nuw i64 2, %21
  %23 = alloca i32, i64 %22, align 16
  store i64 %21, i64* %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** @fraction, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @real(i32 %29)
  %31 = load i32, i32* @SBLIMIT, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MPG_MD_JOINT_STEREO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 2
  %47 = add nsw i32 %46, 4
  br label %49

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i32 [ %47, %42 ], [ 32, %48 ]
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @SINGLE_MIX, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %49
  %60 = load i32, i32* @SINGLE_LEFT, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = bitcast i32* %23 to i32**
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = call i64 @I_step_one(i32* %19, i32** %62, %struct.TYPE_9__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i64, i64* @NOQUIET, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

73:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %118, %73
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SCALE_BLOCK, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %121

78:                                               ; preds = %74
  %79 = load i32*, i32** @fraction, align 8
  %80 = bitcast i32* %23 to i32**
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = call i32 @I_step_two(i32* %79, i32* %19, i32** %80, %struct.TYPE_9__* %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @SINGLE_STEREO, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %78
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 6
  %89 = load i64 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)** %88, align 8
  %90 = load i32*, i32** @fraction, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = call i64 %89(i32 %94, %struct.TYPE_9__* %95)
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %117

101:                                              ; preds = %78
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 5
  %104 = load i64 (i32, i32, %struct.TYPE_9__*)*, i64 (i32, i32, %struct.TYPE_9__*)** %103, align 8
  %105 = load i32*, i32** @fraction, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** @fraction, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = call i64 %104(i32 %107, i32 %110, %struct.TYPE_9__* %111)
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %101, %86
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %74

121:                                              ; preds = %74
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

123:                                              ; preds = %121, %71
  %124 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @real(i32) #2

declare dso_local i64 @I_step_one(i32*, i32**, %struct.TYPE_9__*) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @I_step_two(i32*, i32*, i32**, %struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
