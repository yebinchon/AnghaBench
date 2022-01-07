; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_setled.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_setled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@O_NOCTTY = common dso_local global i32 0, align 4
@KDGETLED = common dso_local global i32 0, align 4
@KDSETLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @setled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setled(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @O_NOCTTY, align 4
  %8 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @KDGETLED, align 4
  %13 = call i32 (i32, i32, ...) @ioctl(i32 %11, i32 %12, i64* %6)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 7
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %31

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @KDSETLED, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 (i32, i32, ...) @ioctl(i32 %32, i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %31, %10
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %36, %2
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
