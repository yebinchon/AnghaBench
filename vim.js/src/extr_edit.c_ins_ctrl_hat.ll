; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_ctrl_hat.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_ctrl_hat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LANGMAP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@State = common dso_local global i32 0, align 4
@B_IMODE_NONE = common dso_local global i8* null, align 8
@curbuf = common dso_local global %struct.TYPE_4__* null, align 8
@B_IMODE_LMAP = common dso_local global i8* null, align 8
@B_IMODE_IM = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_ctrl_hat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_ctrl_hat() #0 {
  %1 = load i32, i32* @LANGMAP, align 4
  %2 = load i32, i32* @FALSE, align 4
  %3 = call i64 @map_to_exists_mode(i32* bitcast ([1 x i8]* @.str to i32*), i32 %1, i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %0
  %6 = load i32, i32* @State, align 4
  %7 = load i32, i32* @LANGMAP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load i8*, i8** @B_IMODE_NONE, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @LANGMAP, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @State, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* @State, align 4
  br label %25

18:                                               ; preds = %5
  %19 = load i8*, i8** @B_IMODE_LMAP, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @LANGMAP, align 4
  %23 = load i32, i32* @State, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @State, align 4
  br label %25

25:                                               ; preds = %18, %10
  br label %26

26:                                               ; preds = %25, %0
  %27 = call i32 (...) @set_iminsert_global()
  %28 = call i32 (...) @showmode()
  ret void
}

declare dso_local i64 @map_to_exists_mode(i32*, i32, i32) #1

declare dso_local i32 @set_iminsert_global(...) #1

declare dso_local i32 @showmode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
