; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_qsv_synchronize_block.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_qsv_synchronize_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__, %struct.TYPE_22__*, i32* }
%struct.TYPE_17__ = type { i64, i64, i32, i32 }

@QSV_SYNCPOINT_WAIT = common dso_local global i32 0, align 4
@MFX_WRN_IN_EXECUTION = common dso_local global i64 0, align 8
@MFX_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [131 x i8] c"SyncOperation failed (%d), outputting garbage data. Updating your drivers and/or changing the encoding settings might resolve this\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Empty encoded block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_20__*, %struct.TYPE_23__*)* @qsv_synchronize_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @qsv_synchronize_block(%struct.TYPE_20__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  br label %12

12:                                               ; preds = %22, %2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QSV_SYNCPOINT_WAIT, align 4
  %21 = call i64 @MFXVideoCORE_SyncOperation(i32 %15, i32 %19, i32 %20)
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MFX_WRN_IN_EXECUTION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %12, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @MFX_ERR_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @msg_Err(%struct.TYPE_20__* %31, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str, i64 0, i64 0), i64 %32)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %116

34:                                               ; preds = %26
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = call i32 @msg_Dbg(%struct.TYPE_20__* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %116

43:                                               ; preds = %34
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  store %struct.TYPE_22__* %46, %struct.TYPE_22__** %8, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = call i32 @qsv_set_block_ts(%struct.TYPE_20__* %63, %struct.TYPE_21__* %64, %struct.TYPE_22__* %65, %struct.TYPE_17__* %67)
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @qsv_set_block_flags(%struct.TYPE_22__* %69, i32 %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @vlc_tick_from_samples(i32 %79, i32 %84)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %91, -10000
  br i1 %92, label %93, label %103

93:                                               ; preds = %43
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %93, %43
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %115, %struct.TYPE_22__** %3, align 8
  br label %116

116:                                              ; preds = %103, %40, %30
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %117
}

declare dso_local i64 @MFXVideoCORE_SyncOperation(i32, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_20__*, i8*, i64) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @qsv_set_block_ts(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_17__*) #1

declare dso_local i32 @qsv_set_block_flags(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
