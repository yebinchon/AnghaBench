; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_encr_chat_name.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_encr_chat_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TGL_PEER_ENCR_CHAT = common dso_local global i64 0, align 8
@COLOR_MAGENTA = common dso_local global i32 0, align 4
@permanent_peer_id_mode = common dso_local global i64 0, align 8
@use_ids = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"encr_chat#%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_encr_chat_name(%struct.in_ev* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.in_ev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.in_ev* %0, %struct.in_ev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @tgl_get_peer_type(i32 %7)
  %9 = load i64, i64* @TGL_PEER_ENCR_CHAT, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %14 = load i32, i32* @COLOR_MAGENTA, align 4
  %15 = call i32 @mpush_color(%struct.in_ev* %13, i32 %14)
  %16 = load i64, i64* @permanent_peer_id_mode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @print_peer_permanent_name(%struct.in_ev* %19, i32 %20)
  %22 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %23 = call i32 @mpop_color(%struct.in_ev* %22)
  br label %44

24:                                               ; preds = %3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @use_ids, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @tgl_get_peer_id(i32 %32)
  %34 = call i32 @mprintf(%struct.in_ev* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %41

35:                                               ; preds = %27
  %36 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mprintf(%struct.in_ev* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %43 = call i32 @mpop_color(%struct.in_ev* %42)
  br label %44

44:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tgl_get_peer_type(i32) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @print_peer_permanent_name(%struct.in_ev*, i32) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, i32) #1

declare dso_local i32 @tgl_get_peer_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
