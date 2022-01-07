; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_ocw2.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_ocw2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32 }
%struct.atpic = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"atpic ocw2 0x%x\00", align 1
@OCW2_R = common dso_local global i32 0, align 4
@OCW2_EOI = common dso_local global i32 0, align 4
@OCW2_SL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpic*, %struct.atpic*, i32)* @vatpic_ocw2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vatpic_ocw2(%struct.vatpic* %0, %struct.atpic* %1, i32 %2) #0 {
  %4 = alloca %struct.vatpic*, align 8
  %5 = alloca %struct.atpic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vatpic* %0, %struct.vatpic** %4, align 8
  store %struct.atpic* %1, %struct.atpic** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @VATPIC_CTR1(%struct.vatpic* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @OCW2_R, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.atpic*, %struct.atpic** %5, align 8
  %17 = getelementptr inbounds %struct.atpic, %struct.atpic* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @OCW2_EOI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @OCW2_SL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 7
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.atpic*, %struct.atpic** %5, align 8
  %32 = call i32 @vatpic_get_highest_isrpin(%struct.atpic* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.atpic*, %struct.atpic** %5, align 8
  %41 = getelementptr inbounds %struct.atpic, %struct.atpic* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.atpic*, %struct.atpic** %5, align 8
  %45 = getelementptr inbounds %struct.atpic, %struct.atpic* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.atpic*, %struct.atpic** %5, align 8
  %51 = getelementptr inbounds %struct.atpic, %struct.atpic* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %36
  br label %53

53:                                               ; preds = %52, %33
  br label %70

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @OCW2_SL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.atpic*, %struct.atpic** %5, align 8
  %61 = getelementptr inbounds %struct.atpic, %struct.atpic* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 7
  %67 = load %struct.atpic*, %struct.atpic** %5, align 8
  %68 = getelementptr inbounds %struct.atpic, %struct.atpic* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %59, %54
  br label %70

70:                                               ; preds = %69, %53
  ret i32 0
}

declare dso_local i32 @VATPIC_CTR1(%struct.vatpic*, i8*, i32) #1

declare dso_local i32 @vatpic_get_highest_isrpin(%struct.atpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
