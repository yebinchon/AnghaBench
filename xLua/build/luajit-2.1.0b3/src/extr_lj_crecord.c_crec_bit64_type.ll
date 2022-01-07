; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_bit64_type.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_bit64_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@CTMASK_NUM = common dso_local global i32 0, align 4
@CTF_BOOL = common dso_local global i32 0, align 4
@CTF_FP = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@CT_NUM = common dso_local global i32 0, align 4
@CTID_UINT64 = common dso_local global i32 0, align 4
@CTID_INT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @crec_bit64_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crec_bit64_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @tviscdata(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_7__* @cdataV(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_6__* @lj_ctype_rawref(i32* %11, i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ctype_isenum(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = call %struct.TYPE_6__* @ctype_child(i32* %23, %struct.TYPE_6__* %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %6, align 8
  br label %26

26:                                               ; preds = %22, %10
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CTMASK_NUM, align 4
  %31 = load i32, i32* @CTF_BOOL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CTF_FP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CTF_UNSIGNED, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %29, %36
  %38 = load i32, i32* @CT_NUM, align 4
  %39 = load i32, i32* @CTF_UNSIGNED, align 4
  %40 = call i32 @CTINFO(i32 %38, i32 %39)
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %26
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @CTID_UINT64, align 4
  store i32 %48, i32* %3, align 4
  br label %52

49:                                               ; preds = %42, %26
  %50 = load i32, i32* @CTID_INT64, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %49, %47
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local %struct.TYPE_6__* @lj_ctype_rawref(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @cdataV(i32*) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local %struct.TYPE_6__* @ctype_child(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @CTINFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
