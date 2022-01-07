; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_linux.c_dvb_set_isdbt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_linux.c_dvb_set_isdbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTV_DELIVERY_ISDB_T = common dso_local global i32 0, align 4
@DTV_CLEAR = common dso_local global i32 0, align 4
@DTV_DELIVERY_SYSTEM = common dso_local global i32 0, align 4
@SYS_ISDBT = common dso_local global i32 0, align 4
@DTV_FREQUENCY = common dso_local global i32 0, align 4
@DTV_BANDWIDTH_HZ = common dso_local global i32 0, align 4
@DTV_GUARD_INTERVAL = common dso_local global i32 0, align 4
@DTV_ISDBT_LAYER_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_set_isdbt(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @dvb_parse_bandwidth(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @dvb_parse_transmit_mode(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @dvb_parse_guard(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @DTV_DELIVERY_ISDB_T, align 4
  %23 = call i64 @dvb_find_frontend(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %60

26:                                               ; preds = %6
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @DTV_CLEAR, align 4
  %29 = load i32, i32* @DTV_DELIVERY_SYSTEM, align 4
  %30 = load i32, i32* @SYS_ISDBT, align 4
  %31 = load i32, i32* @DTV_FREQUENCY, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DTV_BANDWIDTH_HZ, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @DTV_GUARD_INTERVAL, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @DTV_ISDBT_LAYER_ENABLED, align 4
  %38 = call i64 @dvb_set_props(i32* %27, i32 6, i32 %28, i32 0, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %60

41:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i64 @dvb_set_isdbt_layer(i32* %46, i32 %47, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %7, align 4
  br label %60

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %14, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %42

59:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %54, %40, %25
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @dvb_parse_bandwidth(i32) #1

declare dso_local i32 @dvb_parse_transmit_mode(i32) #1

declare dso_local i32 @dvb_parse_guard(i32) #1

declare dso_local i64 @dvb_find_frontend(i32*, i32) #1

declare dso_local i64 @dvb_set_props(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @dvb_set_isdbt_layer(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
