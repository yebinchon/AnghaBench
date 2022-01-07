; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_left.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@curwin = common dso_local global %struct.TYPE_5__* null, align 8
@OK = common dso_local global i64 0, align 8
@p_ww = common dso_local global i32 0, align 4
@MAXCOL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FDO_HOR = common dso_local global i32 0, align 4
@KeyTyped = common dso_local global i64 0, align 8
@fdo_flags = common dso_local global i32 0, align 4
@revins_chars = common dso_local global i32 0, align 4
@revins_legal = common dso_local global i32 0, align 4
@revins_scol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_left() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 (...) @undisplay_dollar()
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = bitcast %struct.TYPE_4__* %1 to i8*
  %6 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = call i64 (...) @oneleft()
  %8 = load i64, i64* @OK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @start_arrow(%struct.TYPE_4__* %1)
  br label %38

12:                                               ; preds = %0
  %13 = load i32, i32* @p_ww, align 4
  %14 = call i32* @vim_strchr(i32 %13, i8 signext 91)
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = call i32 @start_arrow(%struct.TYPE_4__* %1)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load i64, i64* @MAXCOL, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @coladvance(i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %37

35:                                               ; preds = %16, %12
  %36 = call i32 (...) @vim_beep()
  br label %37

37:                                               ; preds = %35, %22
  br label %38

38:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @undisplay_dollar(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @oneleft(...) #1

declare dso_local i32 @start_arrow(%struct.TYPE_4__*) #1

declare dso_local i32* @vim_strchr(i32, i8 signext) #1

declare dso_local i32 @coladvance(i32) #1

declare dso_local i32 @vim_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
