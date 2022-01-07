; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_common.c_aout_CheckChannelReorder.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_common.c_aout_CheckChannelReorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Missing bits\00", align 1
@pi_vlc_chan_order_wg4 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aout_CheckChannelReorder(i32* %0, i32* %1, i32 %2, i32* noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* @CHAR_BIT, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = icmp ule i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @static_assert(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %26, %4
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  store i32* %32, i32** %7, align 8
  br label %33

33:                                               ; preds = %31, %28
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %84, %33
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %84

52:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %54, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %62, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %61
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %53

77:                                               ; preds = %53
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %51
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %34

87:                                               ; preds = %34
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %103, %87
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %107

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %15, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %88

106:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %100
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @static_assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
