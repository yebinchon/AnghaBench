; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_vmevent.c_lj_vmevent_call.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_vmevent.c_lj_vmevent_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"VM handler failed: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@VMEVENT_NOCACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_vmevent_call(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call %struct.TYPE_12__* @G(%struct.TYPE_11__* %9)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = call i64 @hook_save(%struct.TYPE_12__* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i32 @hook_vmevent(%struct.TYPE_12__* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @restorestack(%struct.TYPE_11__* %21, i32 %22)
  %24 = call i32 @lj_vm_pcall(%struct.TYPE_11__* %20, i32 %23, i64 1, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @LJ_UNLIKELY(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @tvisstr(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @strVdata(i32 %43)
  br label %46

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i8* [ %44, %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %45 ]
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fputs(i8* %47, i32 %48)
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 @fputc(i8 signext 10, i32 %50)
  br label %52

52:                                               ; preds = %46, %2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @hook_restore(%struct.TYPE_12__* %53, i64 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VMEVENT_NOCACHE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %52
  ret void
}

declare dso_local %struct.TYPE_12__* @G(%struct.TYPE_11__*) #1

declare dso_local i64 @hook_save(%struct.TYPE_12__*) #1

declare dso_local i32 @hook_vmevent(%struct.TYPE_12__*) #1

declare dso_local i32 @lj_vm_pcall(%struct.TYPE_11__*, i32, i64, i32) #1

declare dso_local i32 @restorestack(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i64 @tvisstr(i32) #1

declare dso_local i8* @strVdata(i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @hook_restore(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
