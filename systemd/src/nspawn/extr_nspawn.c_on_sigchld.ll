; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_on_sigchld.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_on_sigchld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signalfd_siginfo = type { i32 }
%struct.TYPE_3__ = type { i64 }

@P_ALL = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to waitid(): %m\00", align 1
@P_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.signalfd_siginfo*, %struct.signalfd_siginfo*, i8*)* @on_sigchld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_sigchld(%struct.signalfd_siginfo* %0, %struct.signalfd_siginfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.signalfd_siginfo*, align 8
  %6 = alloca %struct.signalfd_siginfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store %struct.signalfd_siginfo* %0, %struct.signalfd_siginfo** %5, align 8
  store %struct.signalfd_siginfo* %1, %struct.signalfd_siginfo** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.signalfd_siginfo*, %struct.signalfd_siginfo** %5, align 8
  %11 = call i32 @assert(%struct.signalfd_siginfo* %10)
  %12 = load %struct.signalfd_siginfo*, %struct.signalfd_siginfo** %6, align 8
  %13 = call i32 @assert(%struct.signalfd_siginfo* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @PTR_TO_PID(i8* %14)
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %43, %3
  %17 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = load i32, i32* @P_ALL, align 4
  %19 = load i32, i32* @WNOHANG, align 4
  %20 = load i32, i32* @WNOWAIT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WEXITED, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @waitid(i32 %18, i64 0, %struct.TYPE_3__* %9, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @log_error_errno(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %51

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.signalfd_siginfo*, %struct.signalfd_siginfo** %5, align 8
  %41 = call i32 @sd_event_source_get_event(%struct.signalfd_siginfo* %40)
  %42 = call i32 @sd_event_exit(i32 %41, i32 0)
  br label %51

43:                                               ; preds = %34
  %44 = load i32, i32* @P_PID, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @WNOHANG, align 4
  %48 = load i32, i32* @WEXITED, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @waitid(i32 %44, i64 %46, %struct.TYPE_3__* %9, i32 %49)
  br label %16

51:                                               ; preds = %39, %33
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @assert(%struct.signalfd_siginfo*) #1

declare dso_local i64 @PTR_TO_PID(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @waitid(i32, i64, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

declare dso_local i32 @sd_event_source_get_event(%struct.signalfd_siginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
