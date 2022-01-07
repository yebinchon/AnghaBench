; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_vms.c_mch_set_shellsize.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_vms.c_mch_set_shellsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Rows = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\1B[?3h\1B>\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[?3l\1B>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_set_shellsize() #0 {
  %1 = load i32, i32* @Rows, align 4
  %2 = load i32, i32* @Columns, align 4
  %3 = call i32 @set_tty(i32 %1, i32 %2)
  %4 = load i32, i32* @Columns, align 4
  switch i32 %4, label %9 [
    i32 132, label %5
    i32 80, label %7
  ]

5:                                                ; preds = %0
  %6 = call i32 @OUT_STR_NF(i32* bitcast ([8 x i8]* @.str to i32*))
  br label %10

7:                                                ; preds = %0
  %8 = call i32 @OUT_STR_NF(i32* bitcast ([8 x i8]* @.str.1 to i32*))
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %7, %5
  %11 = call i32 (...) @out_flush()
  %12 = call i32 (...) @screen_start()
  ret void
}

declare dso_local i32 @set_tty(i32, i32) #1

declare dso_local i32 @OUT_STR_NF(i32*) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @screen_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
