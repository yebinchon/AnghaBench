; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_set.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32, i32 }
%struct.in_ev = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"debug_verbosity\00", align 1
@TLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"log_level\00", align 1
@log_level = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"msg_num\00", align 1
@msg_num_mode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"alert\00", align 1
@alert_sound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_set(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %10 = load %struct.arg*, %struct.arg** %7, align 8
  %11 = getelementptr inbounds %struct.arg, %struct.arg* %10, i64 1
  %12 = getelementptr inbounds %struct.arg, %struct.arg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.arg*, %struct.arg** %7, align 8
  %15 = getelementptr inbounds %struct.arg, %struct.arg* %14, i64 0
  %16 = getelementptr inbounds %struct.arg, %struct.arg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcmp(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @TLS, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @tgl_set_verbosity(i32 %21, i32 %22)
  br label %54

24:                                               ; preds = %4
  %25 = load %struct.arg*, %struct.arg** %7, align 8
  %26 = getelementptr inbounds %struct.arg, %struct.arg* %25, i64 0
  %27 = getelementptr inbounds %struct.arg, %struct.arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* @log_level, align 4
  br label %53

33:                                               ; preds = %24
  %34 = load %struct.arg*, %struct.arg** %7, align 8
  %35 = getelementptr inbounds %struct.arg, %struct.arg* %34, i64 0
  %36 = getelementptr inbounds %struct.arg, %struct.arg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcmp(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* @msg_num_mode, align 4
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.arg*, %struct.arg** %7, align 8
  %44 = getelementptr inbounds %struct.arg, %struct.arg* %43, i64 0
  %45 = getelementptr inbounds %struct.arg, %struct.arg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcmp(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* @alert_sound, align 4
  br label %51

51:                                               ; preds = %49, %42
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %20
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @tgl_set_verbosity(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
