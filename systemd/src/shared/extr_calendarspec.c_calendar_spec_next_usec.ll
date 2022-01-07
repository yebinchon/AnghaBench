; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_calendar_spec_next_usec.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_calendar_spec_next_usec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"(sd-calendar)\00", align 1
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_CLOSE_ALL_FDS = common dso_local global i32 0, align 4
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calendar_spec_next_usec(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @isempty(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @calendar_spec_next_usec_impl(%struct.TYPE_10__* %20, i32 %21, i32* %22)
  store i32 %23, i32* %4, align 4
  br label %103

24:                                               ; preds = %3
  %25 = load i32, i32* @PROT_READ, align 4
  %26 = load i32, i32* @PROT_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAP_SHARED, align 4
  %29 = load i32, i32* @MAP_ANONYMOUS, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_9__* @mmap(i32* null, i32 8, i32 %27, i32 %30, i32 -1, i32 0)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MAP_FAILED, align 8
  %34 = icmp eq %struct.TYPE_9__* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 (...) @negative_errno()
  store i32 %36, i32* %4, align 4
  br label %103

37:                                               ; preds = %24
  %38 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %39 = load i32, i32* @FORK_CLOSE_ALL_FDS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FORK_DEATHSIG, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FORK_WAIT, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @safe_fork(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %44, i32* null)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = call i64 @munmap(%struct.TYPE_9__* %49, i32 8)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %103

52:                                               ; preds = %37
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @strjoina(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i64 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = call i32 (...) @negative_errno()
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  %68 = call i32 @_exit(i32 %67) #4
  unreachable

69:                                               ; preds = %55
  %70 = call i32 (...) @tzset()
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = call i32 @calendar_spec_next_usec_impl(%struct.TYPE_10__* %71, i32 %72, i32* %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @EXIT_SUCCESS, align 4
  %79 = call i32 @_exit(i32 %78) #4
  unreachable

80:                                               ; preds = %52
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = bitcast %struct.TYPE_9__* %9 to i8*
  %83 = bitcast %struct.TYPE_9__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = call i64 @munmap(%struct.TYPE_9__* %84, i32 8)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 (...) @negative_errno()
  store i32 %88, i32* %4, align 4
  br label %103

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32*, i32** %7, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %93, %89
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %87, %48, %35, %19
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i64 @isempty(i32) #1

declare dso_local i32 @calendar_spec_next_usec_impl(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @negative_errno(...) #1

declare dso_local i32 @safe_fork(i8*, i32, i32*) #1

declare dso_local i64 @munmap(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @strjoina(i8*, i32) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @tzset(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
