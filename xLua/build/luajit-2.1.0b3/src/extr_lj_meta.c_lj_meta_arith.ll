; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_arith.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MM_add = common dso_local global i64 0, align 8
@LJ_ERR_OPARITH = common dso_local global i32 0, align 4
@lj_cont_ra = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_meta_arith(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @bcmode_mm(i32 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @str2num(i32* %20, i32* %13)
  store i32* %21, i32** %15, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @str2num(i32* %24, i32* %14)
  store i32* %25, i32** %16, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = call i32 @numV(i32* %29)
  %31 = load i32*, i32** %16, align 8
  %32 = call i32 @numV(i32* %31)
  %33 = load i64, i64* %12, align 8
  %34 = trunc i64 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @MM_add, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @lj_vm_foldarith(i32 %30, i32 %32, i64 %37)
  %39 = call i32 @setnumV(i32* %28, i32 %38)
  store i32* null, i32** %6, align 8
  br label %75

40:                                               ; preds = %23, %5
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32* @lj_meta_lookup(i32* %41, i32* %42, i64 %43)
  store i32* %44, i32** %17, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = call i64 @tvisnil(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32* @lj_meta_lookup(i32* %49, i32* %50, i64 %51)
  store i32* %52, i32** %17, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = call i64 @tvisnil(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load i32*, i32** %9, align 8
  %58 = call i32* @str2num(i32* %57, i32* %13)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  store i32* %61, i32** %10, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* @LJ_ERR_OPARITH, align 4
  %66 = call i32 @lj_err_optype(i32* %63, i32* %64, i32 %65)
  store i32* null, i32** %6, align 8
  br label %75

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @lj_cont_ra, align 4
  %71 = load i32*, i32** %17, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32* @mmcall(i32* %69, i32 %70, i32* %71, i32* %72, i32* %73)
  store i32* %74, i32** %6, align 8
  br label %75

75:                                               ; preds = %68, %62, %27
  %76 = load i32*, i32** %6, align 8
  ret i32* %76
}

declare dso_local i64 @bcmode_mm(i32) #1

declare dso_local i32* @str2num(i32*, i32*) #1

declare dso_local i32 @setnumV(i32*, i32) #1

declare dso_local i32 @lj_vm_foldarith(i32, i32, i64) #1

declare dso_local i32 @numV(i32*) #1

declare dso_local i32* @lj_meta_lookup(i32*, i32*, i64) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i32 @lj_err_optype(i32*, i32*, i32) #1

declare dso_local i32* @mmcall(i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
