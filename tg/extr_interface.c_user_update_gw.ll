; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_user_update_gw.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_user_update_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.in_ev = type { i32 }
%struct.tgl_user = type { i32, i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8
@disable_output = common dso_local global i64 0, align 8
@notify_ev = common dso_local global %struct.in_ev* null, align 8
@binlog_read = common dso_local global i32 0, align 4
@TGL_UPDATE_CREATED = common dso_local global i32 0, align 4
@enable_json = common dso_local global i32 0, align 4
@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"User \00", align 1
@TGL_UPDATE_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" updated\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" deleted\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_update_gw(%struct.tgl_state* %0, %struct.tgl_user* %1, i32 %2) #0 {
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
  %13 = load %struct.tgl_user*, %struct.tgl_user** %5, align 8
  %14 = bitcast %struct.tgl_user* %13 to i8*
  %15 = load %struct.tgl_user*, %struct.tgl_user** %5, align 8
  %16 = getelementptr inbounds %struct.tgl_user, %struct.tgl_user* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @peer_update_username(i8* %14, i32 %17)
  %19 = load i64, i64* @disable_output, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %23 = icmp ne %struct.in_ev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %80

25:                                               ; preds = %21, %3
  %26 = load i32, i32* @binlog_read, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %80

29:                                               ; preds = %25
  %30 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  store %struct.in_ev* %30, %struct.in_ev** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @TGL_UPDATE_CREATED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %80, label %35

35:                                               ; preds = %29
  %36 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %37 = call i32 @mprint_start(%struct.in_ev* %36)
  %38 = load i32, i32* @enable_json, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %35
  %41 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %42 = load i32, i32* @COLOR_YELLOW, align 4
  %43 = call i32 @mpush_color(%struct.in_ev* %41, i32 %42)
  %44 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %45 = call i32 @mprintf(%struct.in_ev* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %47 = load %struct.tgl_user*, %struct.tgl_user** %5, align 8
  %48 = getelementptr inbounds %struct.tgl_user, %struct.tgl_user* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tgl_user*, %struct.tgl_user** %5, align 8
  %51 = bitcast %struct.tgl_user* %50 to i8*
  %52 = call i32 @print_user_name(%struct.in_ev* %46, i32 %49, i8* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @TGL_UPDATE_DELETED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %40
  %58 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %59 = call i32 @mprintf(%struct.in_ev* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @print_peer_updates(%struct.in_ev* %60, i32 %61)
  br label %66

63:                                               ; preds = %40
  %64 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %65 = call i32 @mprintf(%struct.in_ev* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %68 = call i32 @mprintf(%struct.in_ev* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %70 = call i32 @mpop_color(%struct.in_ev* %69)
  br label %77

71:                                               ; preds = %35
  %72 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %73 = load %struct.tgl_user*, %struct.tgl_user** %5, align 8
  %74 = bitcast %struct.tgl_user* %73 to i8*
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @json_peer_update(%struct.in_ev* %72, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %79 = call i32 @mprint_end(%struct.in_ev* %78)
  br label %80

80:                                               ; preds = %24, %28, %77, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @peer_update_username(i8*, i32) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

declare dso_local i32 @print_user_name(%struct.in_ev*, i32, i8*) #1

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
