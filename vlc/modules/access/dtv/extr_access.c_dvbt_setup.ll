; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_dvbt_setup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_dvbt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"dvb-modulation\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dvb-code-rate-hp\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"dvb-code-rate-lp\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dvb-bandwidth\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dvb-transmission\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dvb-hierarchy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @dvbt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbt_setup(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @var_InheritModulation(i32* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @var_InheritCodeRate(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @var_InheritCodeRate(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %9, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @var_InheritGuardInterval(i32* %20)
  store i8* %21, i8** %10, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @var_InheritInteger(i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %23, i8** %11, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @var_InheritInteger(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @var_InheritInteger(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @dvb_set_dvbt(i32* %30, i32 %31, i8* %32, i8* %33, i8* %34, i8* %35, i32 %36, i8* %37, i32 %38)
  ret i32 %39
}

declare dso_local i8* @var_InheritModulation(i32*, i8*) #1

declare dso_local i8* @var_InheritCodeRate(i32*, i8*) #1

declare dso_local i8* @var_InheritGuardInterval(i32*) #1

declare dso_local i8* @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @dvb_set_dvbt(i32*, i32, i8*, i8*, i8*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
