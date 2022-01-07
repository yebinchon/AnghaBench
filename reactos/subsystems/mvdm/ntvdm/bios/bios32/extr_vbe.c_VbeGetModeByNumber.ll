; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/bios32/extr_vbe.c_VbeGetModeByNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/bios32/extr_vbe.c_VbeGetModeByNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@VBE_MODE_COUNT = common dso_local global i64 0, align 8
@Modes = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @VbeGetModeByNumber(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 511
  store i32 %6, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @VBE_MODE_COUNT, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 256
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Modes, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %15, %11
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 256
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Modes, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27, %15
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Modes, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %2, align 8
  br label %44

39:                                               ; preds = %27, %23
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %7

43:                                               ; preds = %7
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
