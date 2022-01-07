; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fppowi.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fppowi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@RID_XMM0 = common dso_local global i32 0, align 4
@RID_XMM1 = common dso_local global i64 0, align 8
@RID_EAX = common dso_local global i32 0, align 4
@lj_vm_powi_sse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @asm_fppowi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fppowi(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load i32, i32* @RID_XMM0, align 4
  %7 = load i64, i64* @RID_XMM1, align 8
  %8 = add nsw i64 %7, 1
  %9 = call i32 @RSET_RANGE(i32 %6, i64 %8)
  %10 = load i32, i32* @RID_EAX, align 4
  %11 = call i32 @RID2RSET(i32 %10)
  %12 = or i32 %9, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ra_hasreg(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rset_clear(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ra_evictset(i32* %25, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i32, i32* @RID_XMM0, align 4
  %31 = call i32 @ra_destreg(i32* %28, %struct.TYPE_4__* %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @lj_vm_powi_sse, align 4
  %34 = call i32 @emit_call(i32* %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @RID_XMM0, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ra_left(i32* %35, i32 %36, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @RID_EAX, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ra_left(i32* %41, i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @RSET_RANGE(i32, i64) #1

declare dso_local i32 @RID2RSET(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @rset_clear(i32, i32) #1

declare dso_local i32 @ra_evictset(i32*, i32) #1

declare dso_local i32 @ra_destreg(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @emit_call(i32*, i32) #1

declare dso_local i32 @ra_left(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
