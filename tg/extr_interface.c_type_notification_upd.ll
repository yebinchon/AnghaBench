; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_type_notification_upd.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_type_notification_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.in_ev = type { i32 }
%struct.tgl_user = type { i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8
@log_level = common dso_local global i32 0, align 4
@disable_output = common dso_local global i64 0, align 8
@notify_ev = common dso_local global %struct.in_ev* null, align 8
@enable_json = common dso_local global i64 0, align 8
@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"User \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @type_notification_upd(%struct.tgl_state* %0, %struct.tgl_user* %1, i32 %2) #0 {
  %4 = alloca %struct.tgl_state*, align 8
  %5 = alloca %struct.tgl_user*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_ev*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %4, align 8
  store %struct.tgl_user* %1, %struct.tgl_user** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tgl_state*, %struct.tgl_state** %4, align 8
  %9 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %10 = icmp eq %struct.tgl_state* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @log_level, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @disable_output, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %20 = icmp ne %struct.in_ev* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  br label %53

22:                                               ; preds = %18, %15
  %23 = load i64, i64* @enable_json, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %53

26:                                               ; preds = %22
  %27 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  store %struct.in_ev* %27, %struct.in_ev** %7, align 8
  %28 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %29 = call i32 @mprint_start(%struct.in_ev* %28)
  %30 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %31 = load i32, i32* @COLOR_YELLOW, align 4
  %32 = call i32 @mpush_color(%struct.in_ev* %30, i32 %31)
  %33 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %34 = call i32 @mprintf(%struct.in_ev* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %36 = load %struct.tgl_user*, %struct.tgl_user** %5, align 8
  %37 = getelementptr inbounds %struct.tgl_user, %struct.tgl_user* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tgl_user*, %struct.tgl_user** %5, align 8
  %40 = bitcast %struct.tgl_user* %39 to i8*
  %41 = call i32 @print_user_name(%struct.in_ev* %35, i32 %38, i8* %40)
  %42 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %43 = call i32 @mprintf(%struct.in_ev* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @print_typing(%struct.in_ev* %44, i32 %45)
  %47 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %48 = call i32 @mprintf(%struct.in_ev* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %50 = call i32 @mpop_color(%struct.in_ev* %49)
  %51 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %52 = call i32 @mprint_end(%struct.in_ev* %51)
  br label %53

53:                                               ; preds = %26, %25, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

declare dso_local i32 @print_user_name(%struct.in_ev*, i32, i8*) #1

declare dso_local i32 @print_typing(%struct.in_ev*, i32) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
