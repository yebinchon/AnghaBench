; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_case_close.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_case_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_21__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (i32*, %struct.TYPE_21__*)* }

@.str = private unnamed_addr constant [17 x i8] c"case closed (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmd_case_close(i32* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %8, %struct.TYPE_19__** %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @fmd_hdl_debug(i32* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32 (i32*, %struct.TYPE_21__*)*, i32 (i32*, %struct.TYPE_21__*)** %20, align 8
  %22 = icmp ne i32 (i32*, %struct.TYPE_21__*)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32 (i32*, %struct.TYPE_21__*)*, i32 (i32*, %struct.TYPE_21__*)** %25, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = call i32 %26(i32* %27, %struct.TYPE_21__* %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = icmp ne %struct.TYPE_21__* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %30
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @fmd_hdl_free(i32* %55, %struct.TYPE_21__* %58, i32 %62)
  br label %64

64:                                               ; preds = %54, %49, %30
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = call i32 @fmd_hdl_free(i32* %65, %struct.TYPE_21__* %66, i32 24)
  ret void
}

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, i32) #1

declare dso_local i32 @fmd_hdl_free(i32*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
