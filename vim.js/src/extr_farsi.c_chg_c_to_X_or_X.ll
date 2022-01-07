; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_farsi.c_chg_c_to_X_or_X.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_farsi.c_chg_c_to_X_or_X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@F_HE = common dso_local global i32 0, align 4
@SRC_EDT = common dso_local global i32 0, align 4
@AT_CURSOR = common dso_local global i32 0, align 4
@_HE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @chg_c_to_X_or_X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chg_c_to_X_or_X() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @gchar_cursor()
  store i32 %2, i32* %1, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  %8 = call i32 (...) @ml_get_curline()
  %9 = call i64 @STRLEN(i32 %8)
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %0
  %12 = call i32 (...) @inc_cursor()
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @F_HE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32, i32* @SRC_EDT, align 4
  %18 = load i32, i32* @AT_CURSOR, align 4
  %19 = call i64 @F_is_TyB_TyC_TyD(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @_HE_, align 4
  store i32 %22, i32* %1, align 4
  %23 = call i32 (...) @dec_cursor()
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @put_and_redo(i32 %24)
  br label %35

26:                                               ; preds = %16, %11
  %27 = call i32 (...) @dec_cursor()
  br label %28

28:                                               ; preds = %26, %0
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @toF_Xor_X_(i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @put_and_redo(i32 %33)
  br label %35

35:                                               ; preds = %21, %32, %28
  ret void
}

declare dso_local i32 @gchar_cursor(...) #1

declare dso_local i64 @STRLEN(i32) #1

declare dso_local i32 @ml_get_curline(...) #1

declare dso_local i32 @inc_cursor(...) #1

declare dso_local i64 @F_is_TyB_TyC_TyD(i32, i32) #1

declare dso_local i32 @dec_cursor(...) #1

declare dso_local i32 @put_and_redo(i32) #1

declare dso_local i32 @toF_Xor_X_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
