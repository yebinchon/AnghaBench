; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_optimize.c_find_dectype.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_optimize.c_find_dectype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i64** }

@nodec = common dso_local global i32 0, align 4
@synth_1to1_8bit_wrap = common dso_local global i64 0, align 8
@r_1to1 = common dso_local global i64 0, align 8
@f_16 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@synth_base = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@generic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"determined active decoder type %i (%s) of class %i\00", align 1
@decname = common dso_local global i32* null, align 8
@MPG123_OK = common dso_local global i32 0, align 4
@NOQUIET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"Unable to determine active decoder type -- this is SERIOUS b0rkage!\00", align 1
@MPG123_BAD_DECODER_SETUP = common dso_local global i32 0, align 4
@MPG123_ERR = common dso_local global i32 0, align 4
@altivec = common dso_local global i32 0, align 4
@arm = common dso_local global i32 0, align 4
@avx = common dso_local global i32 0, align 4
@dct36_3dnow = common dso_local global i64 0, align 8
@dct36_3dnowext = common dso_local global i64 0, align 8
@dreidnow = common dso_local global i32 0, align 4
@dreidnow_vintage = common dso_local global i32 0, align 4
@dreidnowext = common dso_local global i32 0, align 4
@dreidnowext_vintage = common dso_local global i32 0, align 4
@generic_dither = common dso_local global i32 0, align 4
@idrei = common dso_local global i32 0, align 4
@ifuenf = common dso_local global i32 0, align 4
@ifuenf_dither = common dso_local global i32 0, align 4
@ivier = common dso_local global i32 0, align 4
@mmx = common dso_local global i32 0, align 4
@neon = common dso_local global i32 0, align 4
@neon64 = common dso_local global i32 0, align 4
@plain_i386 = common dso_local global i32 0, align 4
@synth_1to1_3dnow = common dso_local global i64 0, align 8
@synth_1to1_3dnowext = common dso_local global i64 0, align 8
@synth_1to1_altivec = common dso_local global i64 0, align 8
@synth_1to1_arm = common dso_local global i64 0, align 8
@synth_1to1_avx = common dso_local global i64 0, align 8
@synth_1to1_dither = common dso_local global i64 0, align 8
@synth_1to1_i586 = common dso_local global i64 0, align 8
@synth_1to1_i586_dither = common dso_local global i64 0, align 8
@synth_1to1_mmx = common dso_local global i64 0, align 8
@synth_1to1_neon = common dso_local global i64 0, align 8
@synth_1to1_neon64 = common dso_local global i64 0, align 8
@synth_1to1_real_altivec = common dso_local global i64 0, align 8
@synth_1to1_real_avx = common dso_local global i64 0, align 8
@synth_1to1_real_neon = common dso_local global i64 0, align 8
@synth_1to1_real_neon64 = common dso_local global i64 0, align 8
@synth_1to1_real_sse = common dso_local global i64 0, align 8
@synth_1to1_real_x86_64 = common dso_local global i64 0, align 8
@synth_1to1_s32_altivec = common dso_local global i64 0, align 8
@synth_1to1_s32_avx = common dso_local global i64 0, align 8
@synth_1to1_s32_neon = common dso_local global i64 0, align 8
@synth_1to1_s32_neon64 = common dso_local global i64 0, align 8
@synth_1to1_s32_sse = common dso_local global i64 0, align 8
@synth_1to1_s32_x86_64 = common dso_local global i64 0, align 8
@synth_1to1_sse = common dso_local global i64 0, align 8
@synth_1to1_x86_64 = common dso_local global i64 0, align 8
@synth_2to1_dither = common dso_local global i64 0, align 8
@synth_4to1_dither = common dso_local global i64 0, align 8
@x86_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @find_dectype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dectype(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load i32, i32* @nodec, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @synth_1to1_8bit_wrap, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64**, i64*** %16, align 8
  %18 = load i64, i64* @r_1to1, align 8
  %19 = getelementptr inbounds i64*, i64** %17, i64 %18
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @f_16, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %13, %1
  %25 = load i64, i64* @FALSE, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %36

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @synth_base, i32 0, i32 0), align 4
  %31 = call i64 @find_synth(i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @generic, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @nodec, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @decclass(i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** @decname, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @debug3(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %55, i32 %59)
  %61 = load i32, i32* @MPG123_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %72

62:                                               ; preds = %36
  %63 = load i64, i64* @NOQUIET, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* @MPG123_BAD_DECODER_SETUP, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @MPG123_ERR, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %40
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @find_synth(i64, i32) #1

declare dso_local i32 @decclass(i32) #1

declare dso_local i32 @debug3(i8*, i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
