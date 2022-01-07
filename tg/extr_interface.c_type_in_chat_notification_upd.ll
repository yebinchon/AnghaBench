; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_type_in_chat_notification_upd.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_type_in_chat_notification_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.in_ev = type { i32 }
%struct.tgl_user = type { i32 }
%struct.tgl_chat = type { i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8
@log_level = common dso_local global i32 0, align 4
@disable_output = common dso_local global i64 0, align 8
@notify_ev = common dso_local global %struct.in_ev* null, align 8
@enable_json = common dso_local global i64 0, align 8
@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"User \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" in chat \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @type_in_chat_notification_upd(%struct.tgl_state* %0, %struct.tgl_user* %1, %struct.tgl_chat* %2, i32 %3) #0 {
  %5 = alloca %struct.tgl_state*, align 8
  %6 = alloca %struct.tgl_user*, align 8
  %7 = alloca %struct.tgl_chat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in_ev*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %5, align 8
  store %struct.tgl_user* %1, %struct.tgl_user** %6, align 8
  store %struct.tgl_chat* %2, %struct.tgl_chat** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tgl_state*, %struct.tgl_state** %5, align 8
  %11 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %12 = icmp eq %struct.tgl_state* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @log_level, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @disable_output, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %22 = icmp ne %struct.in_ev* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  br label %64

24:                                               ; preds = %20, %17
  %25 = load i64, i64* @enable_json, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %64

28:                                               ; preds = %24
  %29 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  store %struct.in_ev* %29, %struct.in_ev** %9, align 8
  %30 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %31 = call i32 @mprint_start(%struct.in_ev* %30)
  %32 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %33 = load i32, i32* @COLOR_YELLOW, align 4
  %34 = call i32 @mpush_color(%struct.in_ev* %32, i32 %33)
  %35 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %36 = call i32 @mprintf(%struct.in_ev* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %38 = load %struct.tgl_user*, %struct.tgl_user** %6, align 8
  %39 = getelementptr inbounds %struct.tgl_user, %struct.tgl_user* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tgl_user*, %struct.tgl_user** %6, align 8
  %42 = bitcast %struct.tgl_user* %41 to i8*
  %43 = call i32 @print_user_name(%struct.in_ev* %37, i32 %40, i8* %42)
  %44 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %45 = call i32 @mprintf(%struct.in_ev* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @print_typing(%struct.in_ev* %46, i32 %47)
  %49 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %50 = call i32 @mprintf(%struct.in_ev* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %52 = load %struct.tgl_chat*, %struct.tgl_chat** %7, align 8
  %53 = getelementptr inbounds %struct.tgl_chat, %struct.tgl_chat* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tgl_chat*, %struct.tgl_chat** %7, align 8
  %56 = bitcast %struct.tgl_chat* %55 to i8*
  %57 = call i32 @print_chat_name(%struct.in_ev* %51, i32 %54, i8* %56)
  %58 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %59 = call i32 @mprintf(%struct.in_ev* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %61 = call i32 @mpop_color(%struct.in_ev* %60)
  %62 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %63 = call i32 @mprint_end(%struct.in_ev* %62)
  br label %64

64:                                               ; preds = %28, %27, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

declare dso_local i32 @print_user_name(%struct.in_ev*, i32, i8*) #1

declare dso_local i32 @print_typing(%struct.in_ev*, i32) #1

declare dso_local i32 @print_chat_name(%struct.in_ev*, i32, i8*) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
