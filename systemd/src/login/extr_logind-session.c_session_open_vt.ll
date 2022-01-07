; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-session.c_session_open_vt.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-session.c_session_open_vt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/dev/tty%u\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot open VT %s of session %s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @session_open_vt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_open_vt(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DECIMAL_STR_MAX(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = add i64 9, %11
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %65

32:                                               ; preds = %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @O_RDWR, align 4
  %38 = load i32, i32* @O_CLOEXEC, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @O_NONBLOCK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @O_NOCTTY, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @open_terminal(i8* %14, i32 %43)
  %45 = sext i32 %44 to i64
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %32
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @log_error_errno(i64 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %58)
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %65

60:                                               ; preds = %32
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %52, %27, %19
  %66 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @DECIMAL_STR_MAX(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open_terminal(i8*, i32) #1

declare dso_local i32 @log_error_errno(i64, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
