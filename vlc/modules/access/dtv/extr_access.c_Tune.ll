; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_Tune.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_Tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"dvb-inversion\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64 (i32*, i32*, i32)*, i32)* @Tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Tune(i32* %0, i32* %1, i64 (i32*, i32*, i32)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64 (i32*, i32*, i32)*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 (i32*, i32*, i32)* %2, i64 (i32*, i32*, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64 (i32*, i32*, i32)*, i64 (i32*, i32*, i32)** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i64 %10(i32* %11, i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @var_InheritInteger(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = call i64 @dvb_set_inversion(i32* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @dvb_tune(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %16, %4
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @dvb_set_inversion(i32*, i32) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i64 @dvb_tune(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
