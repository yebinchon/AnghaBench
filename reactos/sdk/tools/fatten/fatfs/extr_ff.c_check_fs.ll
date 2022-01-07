; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_check_fs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_check_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64 }

@FR_OK = common dso_local global i64 0, align 8
@BS_55AA = common dso_local global i64 0, align 8
@BS_FilSysType = common dso_local global i64 0, align 8
@BS_FilSysType32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @check_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fs(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @move_window(%struct.TYPE_4__* %10, i32 %11)
  %13 = load i64, i64* @FR_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 3, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @BS_55AA, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @LD_WORD(i32* %21)
  %23 = icmp ne i32 %22, 43605
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 2, i32* %3, align 4
  br label %46

25:                                               ; preds = %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @BS_FilSysType, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @LD_DWORD(i32* %30)
  %32 = and i32 %31, 16777215
  %33 = icmp eq i32 %32, 5521734
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %46

35:                                               ; preds = %25
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @BS_FilSysType32, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @LD_DWORD(i32* %40)
  %42 = and i32 %41, 16777215
  %43 = icmp eq i32 %42, 5521734
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %34, %24, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @move_window(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @LD_WORD(i32*) #1

declare dso_local i32 @LD_DWORD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
