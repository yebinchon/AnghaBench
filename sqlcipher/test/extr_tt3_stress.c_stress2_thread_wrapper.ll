; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress2_thread_wrapper.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress2_thread_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)*, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@STRESS2_TABCNT = common dso_local global i32 0, align 4
@SQLITE_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ok %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @stress2_thread_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stress2_thread_wrapper(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca %struct.TYPE_14__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = bitcast %struct.TYPE_15__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %55, %2
  %16 = call i32 @timetostop(%struct.TYPE_15__* %6)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @opendb(%struct.TYPE_15__* %6, %struct.TYPE_14__* %7, i32 %22, i32 0)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %52, %19
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SQLITE_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @STRESS2_TABCNT, align 4
  %32 = icmp slt i32 %30, %31
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %35, label %55

35:                                               ; preds = %33
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 %38(%struct.TYPE_15__* %6, %struct.TYPE_14__* %7, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SQLITE_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @SQLITE_LOCKED, align 4
  %49 = call i32 @clear_error(%struct.TYPE_15__* %6, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %24

55:                                               ; preds = %33
  %56 = call i32 @closedb(%struct.TYPE_15__* %6, %struct.TYPE_14__* %7)
  br label %15

57:                                               ; preds = %15
  %58 = call i32 @print_and_free_err(%struct.TYPE_15__* %6)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  ret i8* %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @timetostop(%struct.TYPE_15__*) #2

declare dso_local i32 @opendb(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @clear_error(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @closedb(%struct.TYPE_15__*, %struct.TYPE_14__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_15__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
