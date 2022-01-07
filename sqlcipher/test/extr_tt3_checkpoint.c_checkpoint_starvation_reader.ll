; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_checkpoint.c_checkpoint_starvation_reader.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_checkpoint.c_checkpoint_starvation_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"SELECT count(x) FROM t1\00", align 1
@CHECKPOINT_STARVATION_READMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Isolation failure - %lld %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @checkpoint_starvation_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @checkpoint_starvation_reader(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = bitcast %struct.TYPE_15__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = call i32 @opendb(%struct.TYPE_15__* %5, %struct.TYPE_14__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %12

12:                                               ; preds = %31, %2
  %13 = call i32 @timetostop(%struct.TYPE_15__* %5)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = call i32 @sql_script(%struct.TYPE_15__* %5, %struct.TYPE_14__* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i64 @execsql_i64(%struct.TYPE_15__* %5, %struct.TYPE_14__* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @CHECKPOINT_STARVATION_READMS, align 4
  %20 = mul nsw i32 %19, 1000
  %21 = call i32 @usleep(i32 %20)
  %22 = call i64 @execsql_i64(%struct.TYPE_15__* %5, %struct.TYPE_14__* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i64 %22, i64* %8, align 8
  %23 = call i32 @sql_script(%struct.TYPE_15__* %5, %struct.TYPE_14__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @test_error(%struct.TYPE_15__* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %16
  br label %12

32:                                               ; preds = %12
  %33 = call i32 @closedb(%struct.TYPE_15__* %5, %struct.TYPE_14__* %6)
  %34 = call i32 @print_and_free_err(%struct.TYPE_15__* %5)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i32) #2

declare dso_local i32 @timetostop(%struct.TYPE_15__*) #2

declare dso_local i32 @sql_script(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*) #2

declare dso_local i64 @execsql_i64(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @test_error(%struct.TYPE_15__*, i8*, i64, i64) #2

declare dso_local i32 @closedb(%struct.TYPE_15__*, %struct.TYPE_14__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
