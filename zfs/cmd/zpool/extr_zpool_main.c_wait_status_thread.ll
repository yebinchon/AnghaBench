; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_wait_status_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_wait_status_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.timespec = type { i64, i64 }

@g_zfs = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"sem_timedwait failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wait_status_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = load i32, i32* @g_zfs, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @zpool_open(i32 %12, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* inttoptr (i64 1 to i8*), i8** %2, align 8
  br label %107

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %101, %19
  %21 = load i32, i32* @CLOCK_REALTIME, align 4
  %22 = call i32 @clock_gettime(i32 %21, %struct.timespec* %8)
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @zpool_refresh_stats(i32* %23, i64* %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @zpool_props_refresh(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29, %26, %20
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @zpool_close(i32* %34)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 1
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %2, align 8
  br label %107

42:                                               ; preds = %29
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @print_wait_status_row(%struct.TYPE_3__* %43, i32* %44, i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @floor(i64 %49)
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %50
  store i64 %53, i64* %51, align 8
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @floor(i64 %61)
  %63 = sub nsw i64 %58, %62
  %64 = load i64, i64* @NANOSEC, align 8
  %65 = mul nsw i64 %63, %64
  %66 = add nsw i64 %55, %65
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @NANOSEC, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %42
  %71 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @NANOSEC, align 8
  %76 = sub nsw i64 %74, %75
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  br label %81

78:                                               ; preds = %42
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = call i64 @sem_timedwait(i32* %83, %struct.timespec* %8)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %104

87:                                               ; preds = %81
  %88 = load i64, i64* @errno, align 8
  %89 = load i64, i64* @ETIMEDOUT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32, i32* @stderr, align 4
  %93 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %94 = load i64, i64* @errno, align 8
  %95 = call i8* @strerror(i64 %94)
  %96 = call i32 @fprintf(i32 %92, i8* %93, i8* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @zpool_close(i32* %97)
  store i8* inttoptr (i64 1 to i8*), i8** %2, align 8
  br label %107

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %20

104:                                              ; preds = %86
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @zpool_close(i32* %105)
  store i8* null, i8** %2, align 8
  br label %107

107:                                              ; preds = %104, %91, %33, %18
  %108 = load i8*, i8** %2, align 8
  ret i8* %108
}

declare dso_local i32* @zpool_open(i32, i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @zpool_refresh_stats(i32*, i64*) #1

declare dso_local i64 @zpool_props_refresh(i32*) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i32 @print_wait_status_row(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i64 @floor(i64) #1

declare dso_local i64 @sem_timedwait(i32*, %struct.timespec*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
