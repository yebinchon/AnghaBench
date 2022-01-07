; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_jmp_novalue.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_jmp_novalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@NO_JMP = common dso_local global i32 0, align 4
@BC_ISTC = common dso_local global i64 0, align 8
@BC_ISFC = common dso_local global i64 0, align 8
@NO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @jmp_novalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmp_novalue(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %44, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NO_JMP, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  br label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @bc_op(i32 %28)
  %30 = load i64, i64* @BC_ISTC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @bc_op(i32 %33)
  %35 = load i64, i64* @BC_ISFC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @bc_a(i32 %38)
  %40 = load i64, i64* @NO_REG, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %49

43:                                               ; preds = %37, %32, %22
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @jmp_next(%struct.TYPE_6__* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %7

48:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @bc_op(i32) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i32 @jmp_next(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
