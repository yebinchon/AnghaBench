; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_msg_kbd.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_msg_kbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }
%struct.tl_ds_reply_markup = type { i32 }

@TLS = common dso_local global i32 0, align 4
@reply_markup = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can not parse reply markup\00", align 1
@packet_buffer = common dso_local global i32 0, align 4
@in_ptr = common dso_local global i32 0, align 4
@packet_ptr = common dso_local global i32 0, align 4
@in_end = common dso_local global i32 0, align 4
@reply_id = common dso_local global i32 0, align 4
@disable_msg_preview = common dso_local global i32 0, align 4
@do_html = common dso_local global i32 0, align 4
@print_msg_success_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_msg_kbd(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca %struct.tl_ds_reply_markup*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 3
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %15 = icmp ne %struct.in_ev* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %18 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %4
  %22 = call i32 (...) @clear_packet()
  %23 = load i32, i32* @TLS, align 4
  %24 = call i32 @ARG2STR(i32 1)
  %25 = load i32, i32* @reply_markup, align 4
  %26 = call i32 @TYPE_TO_PARAM(i32 %25)
  %27 = call i64 @tglf_store_type(i32 %23, i32 %24, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @TLS, align 4
  %31 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = call i32 @fail_interface(i32 %30, %struct.in_ev* %31, i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %63

34:                                               ; preds = %21
  %35 = load i32, i32* @packet_buffer, align 4
  store i32 %35, i32* @in_ptr, align 4
  %36 = load i32, i32* @packet_ptr, align 4
  store i32 %36, i32* @in_end, align 4
  %37 = load i32, i32* @reply_markup, align 4
  %38 = call i32 @TYPE_TO_PARAM(i32 %37)
  %39 = call %struct.tl_ds_reply_markup* @fetch_ds_type_reply_markup(i32 %38)
  store %struct.tl_ds_reply_markup* %39, %struct.tl_ds_reply_markup** %9, align 8
  %40 = load %struct.tl_ds_reply_markup*, %struct.tl_ds_reply_markup** %9, align 8
  %41 = ptrtoint %struct.tl_ds_reply_markup* %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* @TLS, align 4
  %44 = load %struct.arg*, %struct.arg** %7, align 8
  %45 = getelementptr inbounds %struct.arg, %struct.arg* %44, i64 0
  %46 = getelementptr inbounds %struct.arg, %struct.arg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ARG2STR(i32 2)
  %49 = load i32, i32* @reply_id, align 4
  %50 = call i32 @TGL_SEND_MSG_FLAG_REPLY(i32 %49)
  %51 = load i32, i32* @disable_msg_preview, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @do_html, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.tl_ds_reply_markup*, %struct.tl_ds_reply_markup** %9, align 8
  %56 = load i32, i32* @print_msg_success_gw, align 4
  %57 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %58 = call i32 @tgl_do_send_message(i32 %43, i32 %47, i32 %48, i32 %54, %struct.tl_ds_reply_markup* %55, i32 %56, %struct.in_ev* %57)
  %59 = load %struct.tl_ds_reply_markup*, %struct.tl_ds_reply_markup** %9, align 8
  %60 = load i32, i32* @reply_markup, align 4
  %61 = call i32 @TYPE_TO_PARAM(i32 %60)
  %62 = call i32 @free_ds_type_reply_markup(%struct.tl_ds_reply_markup* %59, i32 %61)
  br label %63

63:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_packet(...) #1

declare dso_local i64 @tglf_store_type(i32, i32, i32) #1

declare dso_local i32 @ARG2STR(i32) #1

declare dso_local i32 @TYPE_TO_PARAM(i32) #1

declare dso_local i32 @fail_interface(i32, %struct.in_ev*, i32, i8*) #1

declare dso_local %struct.tl_ds_reply_markup* @fetch_ds_type_reply_markup(i32) #1

declare dso_local i32 @tgl_do_send_message(i32, i32, i32, i32, %struct.tl_ds_reply_markup*, i32, %struct.in_ev*) #1

declare dso_local i32 @TGL_SEND_MSG_FLAG_REPLY(i32) #1

declare dso_local i32 @free_ds_type_reply_markup(%struct.tl_ds_reply_markup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
