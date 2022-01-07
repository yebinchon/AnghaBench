; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_user_status_upd.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_user_status_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.tgl_state = type { i32 }
%struct.tgl_user = type { i32, i32 }

@disable_output = common dso_local global i64 0, align 8
@notify_ev = common dso_local global %struct.in_ev* null, align 8
@binlog_read = common dso_local global i32 0, align 4
@log_level = common dso_local global i32 0, align 4
@enable_json = common dso_local global i32 0, align 4
@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"User \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_status_upd(%struct.tgl_state* %0, %struct.tgl_user* %1) #0 {
  %3 = alloca %struct.tgl_state*, align 8
  %4 = alloca %struct.tgl_user*, align 8
  %5 = alloca %struct.in_ev*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %3, align 8
  store %struct.tgl_user* %1, %struct.tgl_user** %4, align 8
  %6 = load i64, i64* @disable_output, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %10 = icmp ne %struct.in_ev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %53

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @binlog_read, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %53

16:                                               ; preds = %12
  %17 = load i32, i32* @log_level, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %53

20:                                               ; preds = %16
  %21 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  store %struct.in_ev* %21, %struct.in_ev** %5, align 8
  %22 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %23 = call i32 @mprint_start(%struct.in_ev* %22)
  %24 = load i32, i32* @enable_json, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %20
  %27 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %28 = load i32, i32* @COLOR_YELLOW, align 4
  %29 = call i32 @mpush_color(%struct.in_ev* %27, i32 %28)
  %30 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %31 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %33 = load %struct.tgl_user*, %struct.tgl_user** %4, align 8
  %34 = getelementptr inbounds %struct.tgl_user, %struct.tgl_user* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tgl_user*, %struct.tgl_user** %4, align 8
  %37 = bitcast %struct.tgl_user* %36 to i8*
  %38 = call i32 @print_user_name(%struct.in_ev* %32, i32 %35, i8* %37)
  %39 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %40 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.tgl_user*, %struct.tgl_user** %4, align 8
  %42 = getelementptr inbounds %struct.tgl_user, %struct.tgl_user* %41, i32 0, i32 0
  %43 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %44 = call i32 @print_user_status(i32* %42, %struct.in_ev* %43)
  %45 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %46 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %48 = call i32 @mpop_color(%struct.in_ev* %47)
  br label %50

49:                                               ; preds = %20
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %52 = call i32 @mprint_end(%struct.in_ev* %51)
  br label %53

53:                                               ; preds = %50, %19, %15, %11
  ret void
}

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, ...) #1

declare dso_local i32 @print_user_name(%struct.in_ev*, i32, i8*) #1

declare dso_local i32 @print_user_status(i32*, %struct.in_ev*) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
