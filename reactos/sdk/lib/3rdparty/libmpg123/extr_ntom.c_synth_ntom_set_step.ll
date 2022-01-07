; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_ntom.c_synth_ntom_set_step.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_ntom.c_synth_ntom_set_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VERBOSE2 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Init rate converter: %ld->%ld\0A\00", align 1
@NTOM_MAX_FREQ = common dso_local global i64 0, align 8
@NOQUIET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"NtoM converter: illegal rates\00", align 1
@MPG123_BAD_RATE = common dso_local global i8* null, align 8
@NTOM_MUL = common dso_local global i64 0, align 8
@NTOM_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"max. 1:%i conversion allowed (%lu vs %lu)!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @synth_ntom_set_step(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = call i64 @frame_freq(%struct.TYPE_7__* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @VERBOSE2, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @NTOM_MAX_FREQ, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @NTOM_MAX_FREQ, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30, %27, %23, %19
  %34 = load i64, i64* @NOQUIET, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i8*, i8** @MPG123_BAD_RATE, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  store i32 -1, i32* %2, align 4
  br label %87

42:                                               ; preds = %30
  %43 = load i64, i64* @NTOM_MUL, align 8
  %44 = load i64, i64* %5, align 8
  %45 = mul nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %4, align 8
  %48 = udiv i64 %46, %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NTOM_MAX, align 8
  %55 = load i64, i64* @NTOM_MUL, align 8
  %56 = mul i64 %54, %55
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %42
  %59 = load i64, i64* @NOQUIET, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i64, i64* @NTOM_MAX, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NTOM_MUL, align 8
  %67 = mul i64 8, %66
  %68 = call i32 @error3(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %62, i64 %65, i64 %67)
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i8*, i8** @MPG123_BAD_RATE, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  store i32 -1, i32* %2, align 4
  br label %87

73:                                               ; preds = %42
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ntom_val(%struct.TYPE_7__* %74, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %78, i32* %86, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %73, %69, %38
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @frame_freq(%struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @error3(i8*, i64, i64, i64) #1

declare dso_local i32 @ntom_val(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
