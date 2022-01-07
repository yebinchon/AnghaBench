; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_tsetm.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_tsetm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_18__ = type { i8*, i32, i32, i32, i64, i8*, i32 }
%struct.TYPE_19__ = type { i32 }

@JIT_F_OPT_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, i32, i32)* @rec_tsetm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_tsetm(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = call %struct.TYPE_19__* @tabV(i32* %21)
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %11, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %28 = call i32 @settabV(%struct.TYPE_20__* %25, i32* %26, %struct.TYPE_19__* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i8* @getslot(%struct.TYPE_17__* %29, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %62, %4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @setintV(i32* %40, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @lj_ir_kint(%struct.TYPE_17__* %43, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @copyTV(%struct.TYPE_20__* %49, i32* %50, i32* %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @getslot(%struct.TYPE_17__* %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = call i32 @lj_record_idx(%struct.TYPE_17__* %60, %struct.TYPE_18__* %9)
  br label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %35

67:                                               ; preds = %35
  ret void
}

declare dso_local %struct.TYPE_19__* @tabV(i32*) #1

declare dso_local i32 @settabV(%struct.TYPE_20__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i8* @getslot(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @setintV(i32*, i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @copyTV(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @lj_record_idx(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
