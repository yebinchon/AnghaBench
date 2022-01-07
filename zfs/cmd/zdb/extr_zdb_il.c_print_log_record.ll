; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb_il.c_print_log_record.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb_il.c_print_log_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_10__*, i32, %struct.TYPE_11__*)*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }

@dump_opt = common dso_local global i32* null, align 8
@TX_MAX_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"\09\09%s%s len %6llu, txg %llu, seq %llu\0A\00", align 1
@TX_CI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"CI-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zil_rec_info = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"%s(encrypted)\0A\00", align 1
@tab_prefix = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i8*, i32)* @print_log_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_log_record(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** @dump_opt, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 100
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @dump_opt, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 105
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MAX(i32 %13, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @TX_MAX_TYPE, align 8
  %27 = icmp slt i64 %25, %26
  br label %28

28:                                               ; preds = %23, %4
  %29 = phi i1 [ false, %4 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TX_CI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @zil_rec_info, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %49, i32 %53, i32 %56, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %28
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @zil_rec_info, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32 (%struct.TYPE_10__*, i32, %struct.TYPE_11__*)*, i32 (%struct.TYPE_10__*, i32, %struct.TYPE_11__*)** %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = call i32 %80(%struct.TYPE_10__* %81, i32 %82, %struct.TYPE_11__* %83)
  br label %88

85:                                               ; preds = %67
  %86 = load i8*, i8** @tab_prefix, align 8
  %87 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %74
  br label %89

89:                                               ; preds = %88, %64, %28
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** @zil_rec_info, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** @zil_rec_info, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  ret i32 0
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
