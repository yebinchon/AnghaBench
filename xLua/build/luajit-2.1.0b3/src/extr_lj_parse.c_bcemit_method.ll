; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_method.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@BC_MOV = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i64 0, align 8
@BCMAX_C = common dso_local global i64 0, align 8
@BC_TGETS = common dso_local global i32 0, align 4
@BC_KSTR = common dso_local global i32 0, align 4
@BC_TGETV = common dso_local global i32 0, align 4
@VNONRELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__*)* @bcemit_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcemit_method(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %12 = call i64 @expr_toanyreg(%struct.TYPE_20__* %10, %struct.TYPE_21__* %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = call i32 @expr_free(%struct.TYPE_20__* %13, %struct.TYPE_21__* %14)
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = load i32, i32* @BC_MOV, align 4
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i64, i64* @LJ_FR2, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @bcemit_AD(%struct.TYPE_20__* %19, i32 %20, i64 %24, i64 %25)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = call i32 @expr_isstrk(%struct.TYPE_21__* %27)
  %29 = call i32 @lua_assert(i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = call i64 @const_str(%struct.TYPE_20__* %30, %struct.TYPE_21__* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @BCMAX_C, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %3
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = load i64, i64* @LJ_FR2, align 8
  %39 = add nsw i64 2, %38
  %40 = call i32 @bcreg_reserve(%struct.TYPE_20__* %37, i64 %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = load i32, i32* @BC_TGETS, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @bcemit_ABC(%struct.TYPE_20__* %41, i32 %42, i64 %43, i64 %44, i64 %45)
  br label %73

47:                                               ; preds = %3
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = load i64, i64* @LJ_FR2, align 8
  %50 = add nsw i64 3, %49
  %51 = call i32 @bcreg_reserve(%struct.TYPE_20__* %48, i64 %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = load i32, i32* @BC_KSTR, align 4
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 2
  %56 = load i64, i64* @LJ_FR2, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @bcemit_AD(%struct.TYPE_20__* %52, i32 %53, i64 %57, i64 %58)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = load i32, i32* @BC_TGETV, align 4
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, 2
  %66 = load i64, i64* @LJ_FR2, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @bcemit_ABC(%struct.TYPE_20__* %60, i32 %61, i64 %62, i64 %63, i64 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %47, %36
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  store i64 %74, i64* %78, align 8
  %79 = load i32, i32* @VNONRELOC, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  ret void
}

declare dso_local i64 @expr_toanyreg(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @expr_free(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @bcemit_AD(%struct.TYPE_20__*, i32, i64, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @expr_isstrk(%struct.TYPE_21__*) #1

declare dso_local i64 @const_str(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @bcreg_reserve(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @bcemit_ABC(%struct.TYPE_20__*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
