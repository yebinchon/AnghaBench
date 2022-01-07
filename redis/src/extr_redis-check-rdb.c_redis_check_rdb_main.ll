; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-check-rdb.c_redis_check_rdb_main.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-check-rdb.c_redis_check_rdb_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }
%struct.TYPE_4__ = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: %s <rdb-file-name>\0A\00", align 1
@shared = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rdbCheckMode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Checking RDB file %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\\o/ RDB looks OK! \\o/\00", align 1
@C_OK = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_check_rdb_main(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %10, %3
  %21 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @createSharedObjects()
  br label %27

27:                                               ; preds = %25, %20
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  store i32 1, i32* @rdbCheckMode, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = call i32 (...) @rdbCheckSetupSignals()
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @redis_check_rdb(i8* %35, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = call i32 (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 (...) @rdbShowGenericInfo()
  br label %43

43:                                               ; preds = %40, %27
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @C_OK, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @C_ERR, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  ret i32 %54

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @exit(i32 %56) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @createSharedObjects(...) #1

declare dso_local i32 @rdbCheckInfo(i8*, ...) #1

declare dso_local i32 @rdbCheckSetupSignals(...) #1

declare dso_local i32 @redis_check_rdb(i8*, i32*) #1

declare dso_local i32 @rdbShowGenericInfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
