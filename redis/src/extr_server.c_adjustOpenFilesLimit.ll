; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_adjustOpenFilesLimit.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_adjustOpenFilesLimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rlimit = type { i64, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CONFIG_MIN_RESERVED_FDS = common dso_local global i64 0, align 8
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"Unable to obtain the current NOFILE limit (%s), assuming 1024 and setting the max clients configuration accordingly.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [136 x i8] c"Your current 'ulimit -n' of %llu is not enough for the server to start. Please increase your open file limit to at least %llu. Exiting.\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"You requested maxclients of %d requiring at least %llu max file descriptors.\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Server can't set maximum open files to %llu because of OS error: %s.\00", align 1
@.str.4 = private unnamed_addr constant [152 x i8] c"Current maximum open files is %llu. maxclients has been reduced to %d to compensate for low ulimit. If you need higher maxclients increase 'ulimit -n'.\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [80 x i8] c"Increased maximum number of open files to %llu (it was originally set to %llu).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjustOpenFilesLimit() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rlimit, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %9 = zext i32 %8 to i64
  %10 = load i64, i64* @CONFIG_MIN_RESERVED_FDS, align 8
  %11 = add nsw i64 %9, %10
  store i64 %11, i64* %1, align 8
  %12 = load i32, i32* @RLIMIT_NOFILE, align 4
  %13 = call i32 @getrlimit(i32 %12, %struct.rlimit* %2)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %0
  %16 = load i32, i32* @LL_WARNING, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = call i64 @strerror(i32 %17)
  %19 = call i32 (i32, i8*, i64, ...) @serverLog(i32 %16, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* @CONFIG_MIN_RESERVED_FDS, align 8
  %21 = sub nsw i64 1024, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  br label %101

23:                                               ; preds = %0
  %24 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %1, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %100

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  %30 = load i64, i64* %1, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %50, %29
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  store i64 16, i64* %6, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @RLIMIT_NOFILE, align 4
  %41 = call i32 @setrlimit(i32 %40, %struct.rlimit* %2)
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %54

44:                                               ; preds = %35
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %4, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %4, align 8
  br label %31

54:                                               ; preds = %49, %43, %31
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %3, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* %3, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %1, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  store i32 %65, i32* %7, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @CONFIG_MIN_RESERVED_FDS, align 8
  %68 = sub nsw i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @CONFIG_MIN_RESERVED_FDS, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32, i32* @LL_WARNING, align 4
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* %1, align 8
  %77 = call i32 (i32, i8*, i64, ...) @serverLog(i32 %74, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.1, i64 0, i64 0), i64 %75, i64 %76)
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %64
  %80 = load i32, i32* @LL_WARNING, align 4
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %1, align 8
  %84 = call i32 (i32, i8*, i64, ...) @serverLog(i32 %80, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load i32, i32* @LL_WARNING, align 4
  %86 = load i64, i64* %1, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @strerror(i32 %87)
  %89 = call i32 (i32, i8*, i64, ...) @serverLog(i32 %85, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %86, i64 %88)
  %90 = load i32, i32* @LL_WARNING, align 4
  %91 = load i64, i64* %4, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %93 = call i32 (i32, i8*, i64, ...) @serverLog(i32 %90, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.4, i64 0, i64 0), i64 %91, i32 %92)
  br label %99

94:                                               ; preds = %60
  %95 = load i32, i32* @LL_NOTICE, align 4
  %96 = load i64, i64* %1, align 8
  %97 = load i64, i64* %3, align 8
  %98 = call i32 (i32, i8*, i64, ...) @serverLog(i32 %95, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i64 %96, i64 %97)
  br label %99

99:                                               ; preds = %94, %79
  br label %100

100:                                              ; preds = %99, %23
  br label %101

101:                                              ; preds = %100, %15
  ret void
}

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @serverLog(i32, i8*, i64, ...) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
