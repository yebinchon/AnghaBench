; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_profile.c_profile_trigger.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_profile.c_profile_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@HOOK_PROFILE = common dso_local global i32 0, align 4
@HOOK_VMEVENT = common dso_local global i32 0, align 4
@LJ_VMST_INTERP = common dso_local global i32 0, align 4
@LJ_VMST_C = common dso_local global i32 0, align 4
@LJ_VMST_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @profile_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_trigger(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @profile_lock(%struct.TYPE_8__* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HOOK_PROFILE, align 4
  %20 = load i32, i32* @HOOK_VMEVENT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %54

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @LJ_VMST_INTERP, align 4
  %34 = xor i32 %33, -1
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %52

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @LJ_VMST_C, align 4
  %40 = xor i32 %39, -1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @LJ_VMST_GC, align 4
  %46 = xor i32 %45, -1
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 71, i32 74
  br label %50

50:                                               ; preds = %43, %42
  %51 = phi i32 [ 67, %42 ], [ %49, %43 ]
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi i32 [ 73, %36 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %30
  %55 = phi i32 [ 78, %30 ], [ %53, %52 ]
  %56 = trunc i32 %55 to i8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i8 %56, i8* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @HOOK_PROFILE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = call i32 @lj_dispatch_update(%struct.TYPE_7__* %64)
  br label %66

66:                                               ; preds = %54, %1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = call i32 @profile_unlock(%struct.TYPE_8__* %67)
  ret void
}

declare dso_local i32 @profile_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @lj_dispatch_update(%struct.TYPE_7__*) #1

declare dso_local i32 @profile_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
