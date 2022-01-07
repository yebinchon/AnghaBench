; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_secret_chat_update_gw.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_secret_chat_update_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.in_ev = type { i32 }
%struct.tgl_secret_chat = type { i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8
@TGL_UPDATE_WORKING = common dso_local global i32 0, align 4
@TGL_UPDATE_DELETED = common dso_local global i32 0, align 4
@binlog_read = common dso_local global i32 0, align 4
@TGL_UPDATE_REQUESTED = common dso_local global i32 0, align 4
@disable_auto_accept = common dso_local global i32 0, align 4
@print_encr_chat_success_gw = common dso_local global i32 0, align 4
@disable_output = common dso_local global i64 0, align 8
@notify_ev = common dso_local global %struct.in_ev* null, align 8
@TGL_UPDATE_CREATED = common dso_local global i32 0, align 4
@enable_json = common dso_local global i32 0, align 4
@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Secret chat \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" updated\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" deleted\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @secret_chat_update_gw(%struct.tgl_state* %0, %struct.tgl_secret_chat* %1, i32 %2) #0 {
  %4 = alloca %struct.tgl_state*, align 8
  %5 = alloca %struct.tgl_secret_chat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_ev*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %4, align 8
  store %struct.tgl_secret_chat* %1, %struct.tgl_secret_chat** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tgl_state*, %struct.tgl_state** %4, align 8
  %9 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %10 = icmp eq %struct.tgl_state* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TGL_UPDATE_WORKING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TGL_UPDATE_DELETED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %3
  %23 = call i32 (...) @write_secret_chat_file()
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* @binlog_read, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %99

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TGL_UPDATE_REQUESTED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* @disable_auto_accept, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %38 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %39 = load i32, i32* @print_encr_chat_success_gw, align 4
  %40 = call i32 @tgl_do_accept_encr_chat_request(%struct.tgl_state* %37, %struct.tgl_secret_chat* %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %36, %33, %28
  %42 = load i64, i64* @disable_output, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %46 = icmp ne %struct.in_ev* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %99

48:                                               ; preds = %44, %41
  %49 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  store %struct.in_ev* %49, %struct.in_ev** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TGL_UPDATE_CREATED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %99, label %54

54:                                               ; preds = %48
  %55 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %56 = call i32 @mprint_start(%struct.in_ev* %55)
  %57 = load i32, i32* @enable_json, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %54
  %60 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %61 = load i32, i32* @COLOR_YELLOW, align 4
  %62 = call i32 @mpush_color(%struct.in_ev* %60, i32 %61)
  %63 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %64 = call i32 @mprintf(%struct.in_ev* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %66 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %67 = getelementptr inbounds %struct.tgl_secret_chat, %struct.tgl_secret_chat* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %70 = bitcast %struct.tgl_secret_chat* %69 to i8*
  %71 = call i32 @print_encr_chat_name(%struct.in_ev* %65, i32 %68, i8* %70)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @TGL_UPDATE_DELETED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %59
  %77 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %78 = call i32 @mprintf(%struct.in_ev* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @print_peer_updates(%struct.in_ev* %79, i32 %80)
  br label %85

82:                                               ; preds = %59
  %83 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %84 = call i32 @mprintf(%struct.in_ev* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %76
  %86 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %87 = call i32 @mprintf(%struct.in_ev* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %89 = call i32 @mpop_color(%struct.in_ev* %88)
  br label %96

90:                                               ; preds = %54
  %91 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %92 = load %struct.tgl_secret_chat*, %struct.tgl_secret_chat** %5, align 8
  %93 = bitcast %struct.tgl_secret_chat* %92 to i8*
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @json_peer_update(%struct.in_ev* %91, i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %98 = call i32 @mprint_end(%struct.in_ev* %97)
  br label %99

99:                                               ; preds = %27, %47, %96, %48
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_secret_chat_file(...) #1

declare dso_local i32 @tgl_do_accept_encr_chat_request(%struct.tgl_state*, %struct.tgl_secret_chat*, i32, i32) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

declare dso_local i32 @print_encr_chat_name(%struct.in_ev*, i32, i8*) #1

declare dso_local i32 @print_peer_updates(%struct.in_ev*, i32) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @json_peer_update(%struct.in_ev*, i8*, i32) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
