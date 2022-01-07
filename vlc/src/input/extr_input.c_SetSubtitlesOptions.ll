; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_SetSubtitlesOptions.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_SetSubtitlesOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { float }

@.str = private unnamed_addr constant [17 x i8] c"sub-original-fps\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sub-fps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @SetSubtitlesOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetSubtitlesOptions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca float, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_4__* @input_priv(i32* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  store float %9, float* %3, align 4
  %10 = load float, float* %3, align 4
  %11 = fcmp ogt float %10, 1.000000e+00
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = load float, float* %3, align 4
  %15 = call i32 @var_SetFloat(i32* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), float %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @var_InheritFloat(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @RequestSubRate(i32* %16, i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.TYPE_4__* @input_priv(i32*) #1

declare dso_local i32 @var_SetFloat(i32*, i8*, float) #1

declare dso_local i32 @RequestSubRate(i32*, i32) #1

declare dso_local i32 @var_InheritFloat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
