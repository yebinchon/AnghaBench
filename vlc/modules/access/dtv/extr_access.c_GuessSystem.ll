; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_GuessSystem.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_GuessSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTV_DELIVERY_NONE = common dso_local global i64 0, align 8
@DTV_DELGROUP_G2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cable\00", align 1
@DTV_DELGROUP_CABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"satellite\00", align 1
@DTV_DELGROUP_SAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"terrestrial\00", align 1
@DTV_DELGROUP_TERRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*)* @GuessSystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GuessSystem(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @GetDeliveryByScheme(i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @DTV_DELIVERY_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %3, align 8
  br label %56

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @dvb_enum_systems(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @DTV_DELGROUP_G2, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %15
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strcasecmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DTV_DELGROUP_CABLE, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @GetSingleDelivery(i32 %31)
  store i64 %32, i64* %3, align 8
  br label %56

33:                                               ; preds = %24
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DTV_DELGROUP_SAT, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @GetSingleDelivery(i32 %40)
  store i64 %41, i64* %3, align 8
  br label %56

42:                                               ; preds = %33
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcasecmp(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @DTV_DELGROUP_TERRES, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @GetSingleDelivery(i32 %49)
  store i64 %50, i64* %3, align 8
  br label %56

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @GetSingleDelivery(i32 %52)
  store i64 %53, i64* %3, align 8
  br label %56

54:                                               ; preds = %15
  %55 = load i64, i64* @DTV_DELIVERY_NONE, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %51, %46, %37, %28, %13
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @GetDeliveryByScheme(i8*) #1

declare dso_local i32 @dvb_enum_systems(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @GetSingleDelivery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
