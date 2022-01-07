; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_init.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.REGS = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@orig_attr = common dso_local global i32 0, align 4
@cterm_normal_fg_color = common dso_local global i32 0, align 4
@cterm_normal_bg_color = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@term_console = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@_fmode = common dso_local global i32 0, align 4
@bioskey_read = common dso_local global i64 0, align 8
@bioskey_ready = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@mouse_avail = common dso_local global i32 0, align 4
@mouse_x_div = common dso_local global i32 0, align 4
@mouse_y_div = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_init() #0 {
  %1 = alloca %union.REGS, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %union.REGS* %1 to %struct.TYPE_6__*
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 8, i32* %4, align 4
  %5 = bitcast %union.REGS* %1 to %struct.TYPE_6__*
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = call i32 @int86(i32 16, %union.REGS* %1, %union.REGS* %1)
  %8 = bitcast %union.REGS* %1 to %struct.TYPE_6__*
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* @orig_attr, align 4
  %11 = call i32 (...) @mynormvideo()
  %12 = load i32, i32* @cterm_normal_fg_color, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @orig_attr, align 4
  %16 = and i32 %15, 15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @cterm_normal_fg_color, align 4
  br label %18

18:                                               ; preds = %14, %0
  %19 = load i32, i32* @cterm_normal_bg_color, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @orig_attr, align 4
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 15
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @cterm_normal_bg_color, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* @term_console, align 4
  %28 = load i32, i32* @O_BINARY, align 4
  store i32 %28, i32* @_fmode, align 4
  %29 = call i32 (...) @out_flush()
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @set_interrupts(i32 %30)
  %32 = bitcast %union.REGS* %1 to %struct.TYPE_7__*
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 4099, i32* %33, align 4
  %34 = bitcast %union.REGS* %1 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = bitcast %union.REGS* %1 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = call i32 @int86(i32 16, %union.REGS* %1, %union.REGS* %1)
  %39 = bitcast %union.REGS* %1 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 5, i32* %40, align 4
  %41 = bitcast %union.REGS* %1 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 65535, i32* %42, align 4
  %43 = call i32 @int86(i32 22, %union.REGS* %1, %union.REGS* %1)
  %44 = bitcast %union.REGS* %1 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %70

48:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i32, i32* %2, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = bitcast %union.REGS* %1 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 16, i32* %54, align 4
  %55 = call i32 @int86(i32 22, %union.REGS* %1, %union.REGS* %1)
  %56 = bitcast %union.REGS* %1 to %struct.TYPE_7__*
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 65535
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %65

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %49

65:                                               ; preds = %60, %49
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i64 0, i64* @bioskey_read, align 8
  store i32 1, i32* @bioskey_ready, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %70

70:                                               ; preds = %69, %26
  ret void
}

declare dso_local i32 @int86(i32, %union.REGS*, %union.REGS*) #1

declare dso_local i32 @mynormvideo(...) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @set_interrupts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
