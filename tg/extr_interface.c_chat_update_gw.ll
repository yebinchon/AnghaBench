; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_chat_update_gw.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_chat_update_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.in_ev = type { i32 }
%struct.tgl_chat = type { i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8
@disable_output = common dso_local global i64 0, align 8
@notify_ev = common dso_local global %struct.in_ev* null, align 8
@binlog_read = common dso_local global i32 0, align 4
@TGL_UPDATE_CREATED = common dso_local global i32 0, align 4
@enable_json = common dso_local global i32 0, align 4
@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Chat \00", align 1
@TGL_UPDATE_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" updated\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" deleted\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chat_update_gw(%struct.tgl_state* %0, %struct.tgl_chat* %1, i32 %2) #0 {
  %4 = alloca %struct.tgl_state*, align 8
  %5 = alloca %struct.tgl_chat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_ev*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %4, align 8
  store %struct.tgl_chat* %1, %struct.tgl_chat** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tgl_state*, %struct.tgl_state** %4, align 8
  %9 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %10 = icmp eq %struct.tgl_state* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* @disable_output, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %17 = icmp ne %struct.in_ev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %74

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @binlog_read, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %74

23:                                               ; preds = %19
  %24 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  store %struct.in_ev* %24, %struct.in_ev** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TGL_UPDATE_CREATED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %74, label %29

29:                                               ; preds = %23
  %30 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %31 = call i32 @mprint_start(%struct.in_ev* %30)
  %32 = load i32, i32* @enable_json, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %29
  %35 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %36 = load i32, i32* @COLOR_YELLOW, align 4
  %37 = call i32 @mpush_color(%struct.in_ev* %35, i32 %36)
  %38 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %39 = call i32 @mprintf(%struct.in_ev* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %41 = load %struct.tgl_chat*, %struct.tgl_chat** %5, align 8
  %42 = getelementptr inbounds %struct.tgl_chat, %struct.tgl_chat* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tgl_chat*, %struct.tgl_chat** %5, align 8
  %45 = bitcast %struct.tgl_chat* %44 to i8*
  %46 = call i32 @print_chat_name(%struct.in_ev* %40, i32 %43, i8* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @TGL_UPDATE_DELETED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %34
  %52 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %53 = call i32 @mprintf(%struct.in_ev* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @print_peer_updates(%struct.in_ev* %54, i32 %55)
  br label %60

57:                                               ; preds = %34
  %58 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %59 = call i32 @mprintf(%struct.in_ev* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %62 = call i32 @mprintf(%struct.in_ev* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %64 = call i32 @mpop_color(%struct.in_ev* %63)
  br label %71

65:                                               ; preds = %29
  %66 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %67 = load %struct.tgl_chat*, %struct.tgl_chat** %5, align 8
  %68 = bitcast %struct.tgl_chat* %67 to i8*
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @json_peer_update(%struct.in_ev* %66, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %73 = call i32 @mprint_end(%struct.in_ev* %72)
  br label %74

74:                                               ; preds = %18, %22, %71, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

declare dso_local i32 @print_chat_name(%struct.in_ev*, i32, i8*) #1

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
