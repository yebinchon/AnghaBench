; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/bios32/extr_kbdbios32.c_BiosKbdBufferPush.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/bios32/extr_kbdbios32.c_BiosKbdBufferPush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@Bda = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"BIOS keyboard buffer full.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @BiosKbdBufferPush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BiosKbdBufferPush(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %18
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %30 = ptrtoint %struct.TYPE_2__* %29 to i64
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = inttoptr i64 %34 to i64*
  store i64 %28, i64* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %24
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @DPRINT1(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
