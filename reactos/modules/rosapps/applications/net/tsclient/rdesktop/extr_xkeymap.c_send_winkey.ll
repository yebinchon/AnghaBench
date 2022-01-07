; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_send_winkey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_send_winkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SCANCODE_CHAR_LWIN = common dso_local global i32 0, align 4
@SCANCODE_CHAR_RWIN = common dso_local global i32 0, align 4
@RDP_KEYPRESS = common dso_local global i32 0, align 4
@SCANCODE_CHAR_LCTRL = common dso_local global i32 0, align 4
@SCANCODE_CHAR_ESC = common dso_local global i32 0, align 4
@RDP_KEYRELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64, i64)* @send_winkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_winkey(%struct.TYPE_4__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @SCANCODE_CHAR_LWIN, align 4
  store i32 %13, i32* %9, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @SCANCODE_CHAR_RWIN, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RDP_KEYPRESS, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @rdp_send_scancode(%struct.TYPE_4__* %25, i32 %26, i32 %27, i32 %28)
  br label %41

30:                                               ; preds = %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RDP_KEYPRESS, align 4
  %34 = load i32, i32* @SCANCODE_CHAR_LCTRL, align 4
  %35 = call i32 @rdp_send_scancode(%struct.TYPE_4__* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @RDP_KEYPRESS, align 4
  %39 = load i32, i32* @SCANCODE_CHAR_ESC, align 4
  %40 = call i32 @rdp_send_scancode(%struct.TYPE_4__* %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %24
  br label %65

42:                                               ; preds = %16
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RDP_KEYRELEASE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rdp_send_scancode(%struct.TYPE_4__* %48, i32 %49, i32 %50, i32 %51)
  br label %64

53:                                               ; preds = %42
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @RDP_KEYRELEASE, align 4
  %57 = load i32, i32* @SCANCODE_CHAR_ESC, align 4
  %58 = call i32 @rdp_send_scancode(%struct.TYPE_4__* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @RDP_KEYRELEASE, align 4
  %62 = load i32, i32* @SCANCODE_CHAR_LCTRL, align 4
  %63 = call i32 @rdp_send_scancode(%struct.TYPE_4__* %59, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %53, %47
  br label %65

65:                                               ; preds = %64, %41
  ret void
}

declare dso_local i32 @rdp_send_scancode(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
