; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-seat.c_seat_read_active_vt.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-seat.c_seat_read_active_vt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"lseek on console_active_fd failed: %m\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read current console: %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Hm, /sys/class/tty/tty0/active is badly formatted: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seat_read_active_vt(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call i32 @seat_has_vts(%struct.TYPE_8__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i64 @lseek(i32 %18, i32 %19, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @log_error_errno(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %73

25:                                               ; preds = %13
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %32 = call i64 @read(i32 %30, i8* %31, i32 63)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ule i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %25
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @errno, align 4
  %40 = call i8* @strerror_safe(i32 %39)
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i8* [ %40, %38 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %41 ]
  %44 = call i32 @log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i64, i64* %5, align 8
  %46 = icmp ult i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @errno, align 4
  %49 = sub nsw i32 0, %48
  br label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  store i32 %54, i32* %2, align 4
  br label %73

55:                                               ; preds = %25
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %59 = call i32 @truncate_nl(i8* %58)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %61 = call i32 @vtnr_from_tty(i8* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @log_error_errno(i32 %65, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %55
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @seat_active_vt_changed(%struct.TYPE_8__* %70, i32 %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %64, %53, %22, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @seat_has_vts(%struct.TYPE_8__*) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @log_error(i8*, i8*) #1

declare dso_local i8* @strerror_safe(i32) #1

declare dso_local i32 @truncate_nl(i8*) #1

declare dso_local i32 @vtnr_from_tty(i8*) #1

declare dso_local i32 @seat_active_vt_changed(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
