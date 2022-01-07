; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_ldexp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_ldexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@XO_MOVSD = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@XO_FSTPq = common dso_local global i32 0, align 4
@XOg_FSTPq = common dso_local global i32 0, align 4
@XI_FPOP1 = common dso_local global i32 0, align 4
@XI_FSCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @asm_ldexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_ldexp(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sps_scale(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @ra_hasreg(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ra_free(i32* %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ra_modified(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @XO_MOVSD, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RID_ESP, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @emit_rmro(i32* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %17, %2
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @XO_FSTPq, align 4
  %33 = load i32, i32* @XOg_FSTPq, align 4
  %34 = load i32, i32* @RID_ESP, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @emit_rmro(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @XI_FPOP1, align 4
  %39 = call i32 @emit_x87op(i32* %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @XI_FSCALE, align 4
  %42 = call i32 @emit_x87op(i32* %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @asm_x87load(i32* %43, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @asm_x87load(i32* %48, i32 %51)
  ret void
}

declare dso_local i32 @sps_scale(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_free(i32*, i32) #1

declare dso_local i32 @ra_modified(i32*, i32) #1

declare dso_local i32 @emit_rmro(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @emit_x87op(i32*, i32) #1

declare dso_local i32 @asm_x87load(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
