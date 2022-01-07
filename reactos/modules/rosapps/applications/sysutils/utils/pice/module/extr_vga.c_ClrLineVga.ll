; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_ClrLineVga.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_ClrLineVga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pScreenBufferVga = common dso_local global i32 0, align 4
@GLOBAL_SCREEN_HEIGHT = common dso_local global i64 0, align 8
@GLOBAL_SCREEN_WIDTH = common dso_local global i64 0, align 8
@attr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClrLineVga(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @pScreenBufferVga, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i64*
  store i64* %7, i64** %4, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @GLOBAL_SCREEN_HEIGHT, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @attr, i32 0, i32 0, i32 0), align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %18, 32
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %24 = mul i64 %22, %23
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %24, %25
  %27 = getelementptr inbounds i64, i64* %21, i64 %26
  store i64 %20, i64* %27, align 8
  br label %28

28:                                               ; preds = %16
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %12

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
