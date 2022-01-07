; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_icw4.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_icw4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32 }
%struct.atpic = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"atpic icw4 0x%x\00", align 1
@ICW4_8086 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"vatpic microprocessor mode required\00", align 1
@ICW4_AEOI = common dso_local global i32 0, align 4
@ICW4_SFNM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Ignoring special fully nested mode on slave atpic: %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpic*, %struct.atpic*, i32)* @vatpic_icw4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vatpic_icw4(%struct.vatpic* %0, %struct.atpic* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vatpic*, align 8
  %6 = alloca %struct.atpic*, align 8
  %7 = alloca i32, align 4
  store %struct.vatpic* %0, %struct.vatpic** %5, align 8
  store %struct.atpic* %1, %struct.atpic** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @VATPIC_CTR1(%struct.vatpic* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ICW4_8086, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %17 = call i32 @VATPIC_CTR0(%struct.vatpic* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ICW4_AEOI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.atpic*, %struct.atpic** %6, align 8
  %25 = getelementptr inbounds %struct.atpic, %struct.atpic* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ICW4_SFNM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %33 = load %struct.atpic*, %struct.atpic** %6, align 8
  %34 = call i64 @master_atpic(%struct.vatpic* %32, %struct.atpic* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.atpic*, %struct.atpic** %6, align 8
  %38 = getelementptr inbounds %struct.atpic, %struct.atpic* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @VATPIC_CTR1(%struct.vatpic* %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.atpic*, %struct.atpic** %6, align 8
  %46 = getelementptr inbounds %struct.atpic, %struct.atpic* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.atpic*, %struct.atpic** %6, align 8
  %48 = getelementptr inbounds %struct.atpic, %struct.atpic* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @VATPIC_CTR1(%struct.vatpic*, i8*, i32) #1

declare dso_local i32 @VATPIC_CTR0(%struct.vatpic*, i8*) #1

declare dso_local i64 @master_atpic(%struct.vatpic*, %struct.atpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
