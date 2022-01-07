; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_head_root_base.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_head_root_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@REF_BASE = common dso_local global i32 0, align 4
@RID_INIT = common dso_local global i32 0, align 4
@RID_BASE = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@REX_GC64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @asm_head_root_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_head_root_base(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load i32, i32* @REF_BASE, align 4
  %6 = call %struct.TYPE_7__* @IR(i32 %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @ra_hasreg(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ra_free(%struct.TYPE_8__* %14, i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @rset_test(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @irt_ismarked(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %13
  %30 = load i32, i32* @RID_INIT, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RID_BASE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = load i32, i32* @XO_MOV, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @REX_GC64, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RID_BASE, align 4
  %44 = call i32 @emit_rr(%struct.TYPE_8__* %38, i32 %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %33
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

declare dso_local %struct.TYPE_7__* @IR(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_free(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @rset_test(i32, i32) #1

declare dso_local i64 @irt_ismarked(i32) #1

declare dso_local i32 @emit_rr(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
