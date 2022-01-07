; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snap_pref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snap_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@IR_PVAL = common dso_local global i32 0, align 4
@REF_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*, i32*, i32, i32, i64)* @snap_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snap_pref(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i64, i64* %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %13, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i64 @irref_isk(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %26 = call i64 @snap_replay_const(i32* %24, %struct.TYPE_5__* %25)
  store i64 %26, i64* %14, align 8
  br label %59

27:                                               ; preds = %6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regsp_used(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i64 0, i64* %14, align 8
  br label %58

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @bloomtest(i32 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @snap_dedup(i32* %40, i32* %41, i32 %42, i64 %43)
  store i64 %44, i64* %14, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39, %34
  %47 = load i32, i32* @IR_PVAL, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @irt_type(i32 %50)
  %52 = call i32 @IRT(i32 %47, i32 %51)
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @REF_BIAS, align 8
  %55 = sub i64 %53, %54
  %56 = call i64 @emitir(i32 %52, i64 %55, i32 0)
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %46, %39
  br label %58

58:                                               ; preds = %57, %33
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i64, i64* %14, align 8
  ret i64 %60
}

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i64 @snap_replay_const(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @regsp_used(i32) #1

declare dso_local i32 @bloomtest(i32, i64) #1

declare dso_local i64 @snap_dedup(i32*, i32*, i32, i64) #1

declare dso_local i64 @emitir(i32, i64, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @irt_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
