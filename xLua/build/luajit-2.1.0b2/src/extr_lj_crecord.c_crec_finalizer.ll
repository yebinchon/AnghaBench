; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_finalizer.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@IRCALL_lj_cdata_setfin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i64, i32*)* @crec_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_finalizer(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = call i64 @tvisgcv(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @gcval(i32* %17)
  %19 = call i64 @lj_ir_kptr(%struct.TYPE_7__* %16, i32* %18)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %15, %12
  br label %33

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @tvisnil(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = call i64 @lj_ir_kptr(%struct.TYPE_7__* %26, i32* null)
  store i64 %27, i64* %7, align 8
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %31 = call i32 @lj_trace_err(%struct.TYPE_7__* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %20
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i32, i32* @IRCALL_lj_cdata_setfin, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @itype(i32* %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @lj_ir_kint(%struct.TYPE_7__* %38, i32 %41)
  %43 = call i32 @lj_ir_call(%struct.TYPE_7__* %34, i32 %35, i64 %36, i64 %37, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  ret void
}

declare dso_local i64 @tvisgcv(i32*) #1

declare dso_local i64 @lj_ir_kptr(%struct.TYPE_7__*, i32*) #1

declare dso_local i32* @gcval(i32*) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @lj_ir_call(%struct.TYPE_7__*, i32, i64, i64, i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @itype(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
