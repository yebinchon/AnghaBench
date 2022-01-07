; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_dispatch.c_cur_topslot.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_dispatch.c_cur_topslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@BC_UCLO = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*, i64)* @cur_topslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cur_topslot(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 -1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @bc_op(i32 %12)
  %14 = load i32, i32* @BC_UCLO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @bc_j(i32 %18)
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @bc_op(i32 %23)
  switch i32 %24, label %52 [
    i32 131, label %25
    i32 130, label %25
    i32 129, label %37
    i32 128, label %46
  ]

25:                                               ; preds = %22, %22
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @bc_a(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @bc_c(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %30, %31
  %33 = sub nsw i64 %32, 1
  %34 = add nsw i64 %33, 1
  %35 = load i64, i64* @LJ_FR2, align 8
  %36 = add nsw i64 %34, %35
  store i64 %36, i64* %4, align 8
  br label %56

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @bc_a(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @bc_d(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %42, %43
  %45 = sub nsw i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %56

46:                                               ; preds = %22
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @bc_a(i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %48, %49
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %56

52:                                               ; preds = %22
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %52, %46, %37, %25
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @bc_op(i32) #1

declare dso_local i64 @bc_j(i32) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i64 @bc_c(i32) #1

declare dso_local i64 @bc_d(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
