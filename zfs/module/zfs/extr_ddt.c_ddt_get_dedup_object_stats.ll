; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_get_dedup_object_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_get_dedup_object_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, i64, i64 }

@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4
@DDT_CLASSES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddt_get_dedup_object_stats(%struct.TYPE_6__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %71, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ZIO_CHECKSUM_FUNCTIONS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %17, i64 %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %67, %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DDT_TYPES, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @DDT_CLASSES, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %9, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %31
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %27

66:                                               ; preds = %27
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %22

70:                                               ; preds = %22
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %10

74:                                               ; preds = %10
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sdiv i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sdiv i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %79, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
