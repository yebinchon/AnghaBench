; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_dvbt2_setup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_dvbt2_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"dvb-modulation\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dvb-fec\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"dvb-bandwidth\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dvb-plp-id\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dvb-transmission\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @dvbt2_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbt2_setup(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @var_InheritModulation(i32* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @var_InheritCodeRate(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %8, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @var_InheritGuardInterval(i32* %17)
  store i8* %18, i8** %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @var_InheritInteger(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %10, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @var_InheritInteger(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %22, i8** %11, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @var_InheritInteger(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @dvb_set_dvbt2(i32* %26, i32 %27, i8* %28, i8* %29, i8* %30, i32 %31, i8* %32, i8* %33)
  ret i32 %34
}

declare dso_local i8* @var_InheritModulation(i32*, i8*) #1

declare dso_local i8* @var_InheritCodeRate(i32*, i8*) #1

declare dso_local i8* @var_InheritGuardInterval(i32*) #1

declare dso_local i8* @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @dvb_set_dvbt2(i32*, i32, i8*, i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
