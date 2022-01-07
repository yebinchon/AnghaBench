; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveInfoAuxFields.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveInfoAuxFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RDBFLAGS_AOF_PREAMBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"redis-ver\00", align 1
@REDIS_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"redis-bits\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"used-mem\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"repl-stream-db\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"repl-id\00", align 1
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"repl-offset\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"aof-preamble\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveInfoAuxFields(i32* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 64, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RDBFLAGS_AOF_PREAMBLE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @REDIS_VERSION, align 4
  %17 = call i32 @rdbSaveAuxFieldStrStr(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rdbSaveAuxFieldStrInt(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %69

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @time(i32* null)
  %29 = call i32 @rdbSaveAuxFieldStrInt(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %69

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 (...) @zmalloc_used_memory()
  %35 = call i32 @rdbSaveAuxFieldStrInt(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %69

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rdbSaveAuxFieldStrInt(i32* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %69

49:                                               ; preds = %41
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 4
  %52 = call i32 @rdbSaveAuxFieldStrStr(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %69

55:                                               ; preds = %49
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %58 = call i32 @rdbSaveAuxFieldStrInt(i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %69

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @rdbSaveAuxFieldStrInt(i32* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %69

68:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %67, %60, %54, %48, %37, %31, %25, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @rdbSaveAuxFieldStrStr(i32*, i8*, i32) #1

declare dso_local i32 @rdbSaveAuxFieldStrInt(i32*, i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @zmalloc_used_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
