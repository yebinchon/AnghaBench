; ModuleID = '/home/carl/AnghaBench/systemd/src/activate/extr_activate.c_sigchld_hdl.c'
source_filename = "/home/carl/AnghaBench/systemd/src/activate/extr_activate.c_sigchld_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@PROTECT_ERRNO = common dso_local global i32 0, align 4
@P_ALL = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECHILD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to reap children: %m\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Child %d died with code %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sigchld_hdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigchld_hdl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PROTECT_ERRNO, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @P_ALL, align 4
  %9 = load i32, i32* @WEXITED, align 4
  %10 = load i32, i32* @WNOHANG, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @waitid(i32 %8, i32 0, %struct.TYPE_3__* %3, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %6
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ECHILD, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @log_error_errno(i64 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15
  br label %34

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %30, i32 %32)
  br label %6

34:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @waitid(i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @log_error_errno(i64, i8*) #1

declare dso_local i32 @log_info(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
