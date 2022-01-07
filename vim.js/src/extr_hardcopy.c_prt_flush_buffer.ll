; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_hardcopy.c_prt_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_hardcopy.c_prt_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@prt_ps_buffer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@prt_do_bgcol = common dso_local global i64 0, align 8
@prt_new_bgcol = common dso_local global i32 0, align 4
@PRCOLOR_WHITE = common dso_local global i32 0, align 4
@prt_do_moveto = common dso_local global i64 0, align 8
@prt_pos_x_moveto = common dso_local global i32 0, align 4
@prt_pos_y_moveto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"m\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@prt_text_run = common dso_local global i32 0, align 4
@prt_line_height = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bg\0A\00", align 1
@prt_do_underline = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ul\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ms\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"s\0A\00", align 1
@prt_bufsiz = common dso_local global i32 0, align 4
@prt_out_mbyte = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prt_flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prt_flush_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prt_ps_buffer, i32 0, i32 0), align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %90

6:                                                ; preds = %0
  %7 = load i64, i64* @prt_do_bgcol, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  %10 = load i32, i32* @prt_new_bgcol, align 4
  %11 = load i32, i32* @PRCOLOR_WHITE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load i64, i64* @prt_do_moveto, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* @prt_pos_x_moveto, align 4
  %18 = call i32 @prt_write_real(i32 %17, i32 2)
  %19 = load i32, i32* @prt_pos_y_moveto, align 4
  %20 = call i32 @prt_write_real(i32 %19, i32 2)
  %21 = call i32 @prt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* @prt_do_moveto, align 8
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* @prt_text_run, align 4
  %25 = call i32 @prt_write_real(i32 %24, i32 2)
  %26 = load i32, i32* @prt_line_height, align 4
  %27 = call i32 @prt_write_real(i32 %26, i32 2)
  %28 = load i32, i32* @prt_new_bgcol, align 4
  %29 = and i32 %28, 16711680
  %30 = lshr i32 %29, 16
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @prt_new_bgcol, align 4
  %32 = and i32 %31, 65280
  %33 = lshr i32 %32, 8
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* @prt_new_bgcol, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 2.550000e+02
  %39 = fptosi double %38 to i32
  %40 = call i32 @prt_write_real(i32 %39, i32 3)
  %41 = load i32, i32* %2, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 2.550000e+02
  %44 = fptosi double %43 to i32
  %45 = call i32 @prt_write_real(i32 %44, i32 3)
  %46 = load i32, i32* %3, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 2.550000e+02
  %49 = fptosi double %48 to i32
  %50 = call i32 @prt_write_real(i32 %49, i32 3)
  %51 = call i32 @prt_write_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %23, %9, %6
  %53 = load i64, i64* @prt_do_underline, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i64, i64* @prt_do_moveto, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* @prt_pos_x_moveto, align 4
  %60 = call i32 @prt_write_real(i32 %59, i32 2)
  %61 = load i32, i32* @prt_pos_y_moveto, align 4
  %62 = call i32 @prt_write_real(i32 %61, i32 2)
  %63 = call i32 @prt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* @prt_do_moveto, align 8
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32, i32* @prt_text_run, align 4
  %67 = call i32 @prt_write_real(i32 %66, i32 2)
  %68 = call i32 @prt_write_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %52
  %70 = call i32 @prt_write_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prt_ps_buffer, i32 0, i32 1), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prt_ps_buffer, i32 0, i32 0), align 8
  %73 = call i32 @prt_write_file_raw_len(i32 %71, i64 %72)
  %74 = call i32 @prt_write_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i64, i64* @prt_do_moveto, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load i32, i32* @prt_pos_x_moveto, align 4
  %79 = call i32 @prt_write_real(i32 %78, i32 2)
  %80 = load i32, i32* @prt_pos_y_moveto, align 4
  %81 = call i32 @prt_write_real(i32 %80, i32 2)
  %82 = call i32 @prt_write_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i64, i64* @FALSE, align 8
  store i64 %83, i64* @prt_do_moveto, align 8
  br label %86

84:                                               ; preds = %69
  %85 = call i32 @prt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = call i32 @ga_clear(%struct.TYPE_4__* @prt_ps_buffer)
  %88 = load i32, i32* @prt_bufsiz, align 4
  %89 = call i32 @ga_init2(%struct.TYPE_4__* @prt_ps_buffer, i32 1, i32 %88)
  br label %90

90:                                               ; preds = %86, %0
  ret void
}

declare dso_local i32 @prt_write_real(i32, i32) #1

declare dso_local i32 @prt_write_string(i8*) #1

declare dso_local i32 @prt_write_file_raw_len(i32, i64) #1

declare dso_local i32 @ga_clear(%struct.TYPE_4__*) #1

declare dso_local i32 @ga_init2(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
