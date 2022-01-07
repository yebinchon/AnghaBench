; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_icb_ptr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_icb_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }

@adns_s_nxdomain = common dso_local global i64 0, align 8
@adns_s_nodata = common dso_local global i64 0, align 8
@adns_s_inconsistent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_20__*)* @icb_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icb_ptr(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @adns_s_nxdomain, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @adns_s_nodata, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = load i64, i64* @adns_s_inconsistent, align 8
  %30 = call i32 @adns__query_fail(%struct.TYPE_20__* %28, i64 %29)
  br label %101

31:                                               ; preds = %21
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @adns__query_fail(%struct.TYPE_20__* %37, i64 %40)
  br label %101

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %6, align 8
  store i32 0, i32* %9, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %7, align 8
  br label %52

52:                                               ; preds = %92, %43
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %52
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %58
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memcmp(i32* %68, i32* %70, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %84 = call i32 @adns__query_done(%struct.TYPE_20__* %83)
  br label %101

85:                                               ; preds = %76
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = call i32 @LIST_LINK_TAIL(i32 %88, %struct.TYPE_20__* %89)
  br label %101

91:                                               ; preds = %66, %58
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 1
  store %struct.TYPE_19__* %96, %struct.TYPE_19__** %7, align 8
  br label %52

97:                                               ; preds = %52
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = load i64, i64* @adns_s_inconsistent, align 8
  %100 = call i32 @adns__query_fail(%struct.TYPE_20__* %98, i64 %99)
  br label %101

101:                                              ; preds = %97, %85, %82, %36, %27
  ret void
}

declare dso_local i32 @adns__query_fail(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @adns__query_done(%struct.TYPE_20__*) #1

declare dso_local i32 @LIST_LINK_TAIL(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
