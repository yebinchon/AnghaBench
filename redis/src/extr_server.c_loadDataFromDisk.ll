; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_loadDataFromDisk.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_loadDataFromDisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_6__*, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@AOF_ON = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"DB loaded from append only file: %.3f seconds\00", align 1
@RDB_SAVE_INFO_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@RDBFLAGS_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"DB loaded from disk: %.3f seconds\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Fatal error loading the DB: %s. Exiting.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loadDataFromDisk() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = call i64 (...) @ustime()
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %5 = load i64, i64* @AOF_ON, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 8), align 4
  %9 = call i64 @loadAppendOnlyFile(i32 %8)
  %10 = load i64, i64* @C_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i32, i32* @LL_NOTICE, align 4
  %14 = call i64 (...) @ustime()
  %15 = load i64, i64* %1, align 8
  %16 = sub nsw i64 %14, %15
  %17 = sitofp i64 %16 to float
  %18 = fdiv float %17, 1.000000e+06
  %19 = call i32 @serverLog(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), float %18)
  br label %20

20:                                               ; preds = %12, %7
  br label %84

21:                                               ; preds = %0
  %22 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_7__* @RDB_SAVE_INFO_INIT to i8*), i64 24, i1 false)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 7), align 8
  %24 = load i32, i32* @RDBFLAGS_NONE, align 4
  %25 = call i64 @rdbLoad(i32 %23, %struct.TYPE_7__* %2, i32 %24)
  %26 = load i64, i64* @C_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %21
  %29 = load i32, i32* @LL_NOTICE, align 4
  %30 = call i64 (...) @ustime()
  %31 = load i64, i64* %1, align 8
  %32 = sub nsw i64 %30, %31
  %33 = sitofp i64 %32 to float
  %34 = fdiv float %33, 1.000000e+06
  %35 = call i32 @serverLog(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), float %34)
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 6), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 5), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 4), align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nodeIsSlave(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %41, %28
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 3), align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @memcpy(i32 %60, i32 %62, i32 4)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  %66 = call i32 (...) @replicationCacheMasterUsingMyself()
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @selectDb(i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %59, %55, %51, %47, %41, %38
  br label %83

72:                                               ; preds = %21
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @ENOENT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* @LL_WARNING, align 4
  %78 = load i64, i64* @errno, align 8
  %79 = call float @strerror(i64 %78)
  %80 = call i32 @serverLog(i32 %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), float %79)
  %81 = call i32 @exit(i32 1) #4
  unreachable

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %71
  br label %84

84:                                               ; preds = %83, %20
  ret void
}

declare dso_local i64 @ustime(...) #1

declare dso_local i64 @loadAppendOnlyFile(i32) #1

declare dso_local i32 @serverLog(i32, i8*, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @rdbLoad(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @nodeIsSlave(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @replicationCacheMasterUsingMyself(...) #1

declare dso_local i32 @selectDb(i32, i32) #1

declare dso_local float @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
