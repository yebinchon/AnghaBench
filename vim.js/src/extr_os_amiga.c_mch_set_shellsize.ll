; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_amiga.c_mch_set_shellsize.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_amiga.c_mch_set_shellsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@term_console = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@size_set = common dso_local global i32 0, align 4
@CSI = common dso_local global i8 0, align 1
@Rows = common dso_local global i64 0, align 8
@Columns = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_set_shellsize() #0 {
  %1 = load i64, i64* @term_console, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32, i32* @TRUE, align 4
  store i32 %4, i32* @size_set, align 4
  %5 = load i8, i8* @CSI, align 1
  %6 = call i32 @out_char(i8 zeroext %5)
  %7 = load i64, i64* @Rows, align 8
  %8 = call i32 @out_num(i64 %7)
  %9 = call i32 @out_char(i8 zeroext 116)
  %10 = load i8, i8* @CSI, align 1
  %11 = call i32 @out_char(i8 zeroext %10)
  %12 = load i64, i64* @Columns, align 8
  %13 = call i32 @out_num(i64 %12)
  %14 = call i32 @out_char(i8 zeroext 117)
  %15 = call i32 (...) @out_flush()
  br label %16

16:                                               ; preds = %3, %0
  ret void
}

declare dso_local i32 @out_char(i8 zeroext) #1

declare dso_local i32 @out_num(i64) #1

declare dso_local i32 @out_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
