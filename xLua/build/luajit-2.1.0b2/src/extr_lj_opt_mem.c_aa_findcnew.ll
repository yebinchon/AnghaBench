; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_mem.c_aa_findcnew.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_mem.c_aa_findcnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@IR_ADD = common dso_local global i64 0, align 8
@IR_CNEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, %struct.TYPE_5__*)* @aa_findcnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @aa_findcnew(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  br label %7

7:                                                ; preds = %38, %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IR_ADD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %7
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @irref_isk(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_5__* @IR(i32 %23)
  %25 = call %struct.TYPE_5__* @aa_findcnew(i32* %20, %struct.TYPE_5__* %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %3, align 8
  br label %54

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %13
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @irref_isk(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %54

38:                                               ; preds = %31
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_5__* @IR(i32 %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %5, align 8
  br label %7

43:                                               ; preds = %7
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IR_CNEW, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi %struct.TYPE_5__* [ %50, %49 ], [ null, %51 ]
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %3, align 8
  br label %54

54:                                               ; preds = %52, %37, %28
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %55
}

declare dso_local i64 @irref_isk(i32) #1

declare dso_local %struct.TYPE_5__* @IR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
