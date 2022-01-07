; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_WrapEndParagraph.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_WrapEndParagraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_13__, %struct.TYPE_17__*, i64, %struct.TYPE_20__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@PFM_TABLE = common dso_local global i32 0, align 4
@PFE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ME_WrapEndParagraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_WrapEndParagraph(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %6, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = call i32 @ME_InsertRowStart(%struct.TYPE_19__* %19, %struct.TYPE_20__* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PFM_TABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PFE_TABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %38, %31, %22
  ret void
}

declare dso_local i32 @ME_InsertRowStart(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
