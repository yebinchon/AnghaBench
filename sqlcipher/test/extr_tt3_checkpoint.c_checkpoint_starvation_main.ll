; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_checkpoint.c_checkpoint_starvation_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_checkpoint.c_checkpoint_starvation_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"PRAGMA page_size = 1024;PRAGMA journal_mode = WAL;CREATE TABLE t1(x);\00", align 1
@checkpoint_starvation_reader = common dso_local global i32 0, align 4
@CHECKPOINT_STARVATION_READMS = common dso_local global i32 0, align 4
@checkpoint_starvation_walhook = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"INSERT INTO t1 VALUES(randomblob(1200))\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" Checkpoint mode  : %s\0A\00", align 1
@SQLITE_CHECKPOINT_PASSIVE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"PASSIVE\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"RESTART\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c" Peak WAL         : %d frames\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c" Transaction count: %d transactions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_22__*)* @checkpoint_starvation_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkpoint_starvation_main(i32 %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__, align 4
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %10 = bitcast %struct.TYPE_21__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.TYPE_20__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %13 = call i32 @opendb(%struct.TYPE_21__* %5, %struct.TYPE_20__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  %14 = call i32 @sql_script(%struct.TYPE_21__* %5, %struct.TYPE_20__* %6, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @setstoptime(%struct.TYPE_21__* %5, i32 %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %27, %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* @checkpoint_starvation_reader, align 4
  %22 = call i32 @launch_thread(%struct.TYPE_21__* %5, %struct.TYPE_19__* %7, i32 %21, i32 0)
  %23 = load i32, i32* @CHECKPOINT_STARVATION_READMS, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = sdiv i32 %24, 4
  %26 = call i32 @usleep(i32 %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %17

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @checkpoint_starvation_walhook, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = bitcast %struct.TYPE_22__* %34 to i8*
  %36 = call i32 @sqlite3_wal_hook(i32 %32, i32 %33, i8* %35)
  br label %37

37:                                               ; preds = %41, %30
  %38 = call i32 @timetostop(%struct.TYPE_21__* %5)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call i32 @sql_script(%struct.TYPE_21__* %5, %struct.TYPE_20__* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %37

45:                                               ; preds = %37
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SQLITE_CHECKPOINT_PASSIVE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = call i32 @join_all_threads(%struct.TYPE_21__* %5, %struct.TYPE_19__* %7)
  %61 = call i32 @closedb(%struct.TYPE_21__* %5, %struct.TYPE_20__* %6)
  %62 = call i32 @print_and_free_err(%struct.TYPE_21__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_21__*, %struct.TYPE_20__*, i8*, i32) #2

declare dso_local i32 @sql_script(%struct.TYPE_21__*, %struct.TYPE_20__*, i8*) #2

declare dso_local i32 @setstoptime(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @launch_thread(%struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @sqlite3_wal_hook(i32, i32, i8*) #2

declare dso_local i32 @timetostop(%struct.TYPE_21__*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @join_all_threads(%struct.TYPE_21__*, %struct.TYPE_19__*) #2

declare dso_local i32 @closedb(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
