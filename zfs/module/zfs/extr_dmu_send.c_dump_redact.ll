; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_redact.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_redact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drr_redact }
%struct.drr_redact = type { i64, i64, i64, i32 }

@PENDING_NONE = common dso_local global i64 0, align 8
@PENDING_REDACT = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@DRR_REDACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64, i64)* @dump_redact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_redact(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drr_redact*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.drr_redact* %15, %struct.drr_redact** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PENDING_NONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PENDING_REDACT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = call i64 @dump_record(%struct.TYPE_7__* %28, i32* null, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINTR, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %105

34:                                               ; preds = %27
  %35 = load i64, i64* @PENDING_NONE, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %21, %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PENDING_REDACT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %38
  %45 = load %struct.drr_redact*, %struct.drr_redact** %10, align 8
  %46 = getelementptr inbounds %struct.drr_redact, %struct.drr_redact* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.drr_redact*, %struct.drr_redact** %10, align 8
  %52 = getelementptr inbounds %struct.drr_redact, %struct.drr_redact* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drr_redact*, %struct.drr_redact** %10, align 8
  %55 = getelementptr inbounds %struct.drr_redact, %struct.drr_redact* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.drr_redact*, %struct.drr_redact** %10, align 8
  %63 = getelementptr inbounds %struct.drr_redact, %struct.drr_redact* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  store i32 0, i32* %5, align 4
  br label %105

66:                                               ; preds = %50, %44
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = call i64 @dump_record(%struct.TYPE_7__* %67, i32* null, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EINTR, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %5, align 4
  br label %105

73:                                               ; preds = %66
  %74 = load i64, i64* @PENDING_NONE, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %38
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = call i32 @bzero(%struct.TYPE_8__* %81, i32 4)
  %83 = load i32, i32* @DRR_REDACT, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.drr_redact*, %struct.drr_redact** %10, align 8
  %90 = getelementptr inbounds %struct.drr_redact, %struct.drr_redact* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.drr_redact*, %struct.drr_redact** %10, align 8
  %93 = getelementptr inbounds %struct.drr_redact, %struct.drr_redact* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.drr_redact*, %struct.drr_redact** %10, align 8
  %96 = getelementptr inbounds %struct.drr_redact, %struct.drr_redact* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.drr_redact*, %struct.drr_redact** %10, align 8
  %101 = getelementptr inbounds %struct.drr_redact, %struct.drr_redact* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load i64, i64* @PENDING_REDACT, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %78, %70, %60, %31
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @dump_record(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
