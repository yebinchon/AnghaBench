; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshrec.c_ps_hint_table_alloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshrec.c_ps_hint_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, %struct.TYPE_7__**)* @ps_hint_table_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ps_hint_table_alloc(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_7__** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %6, align 8
  %10 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %10, i64* %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @ps_hint_table_ensure(%struct.TYPE_6__* %22, i64 %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %47

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %33, %34
  %36 = sub nsw i64 %35, 1
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %9, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %30, %28
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %49, align 8
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local i64 @ps_hint_table_ensure(%struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
