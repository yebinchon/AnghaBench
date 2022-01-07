; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_msg_list_history_gw.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_msg_list_history_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tgl_state = type { i32 }
%struct.tgl_message = type { i32, i32, i32 }

@TLS = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_msg_list_history_gw(%struct.tgl_state* %0, i8* %1, i32 %2, i32 %3, %struct.tgl_message** %4) #0 {
  %6 = alloca %struct.tgl_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tgl_message**, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.tgl_message** %4, %struct.tgl_message*** %10, align 8
  %11 = load %struct.tgl_state*, %struct.tgl_state** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.tgl_message**, %struct.tgl_message*** %10, align 8
  %16 = call i32 @print_msg_list_gw(%struct.tgl_state* %11, i8* %12, i32 %13, i32 %14, %struct.tgl_message** %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %5
  %20 = load %struct.tgl_message**, %struct.tgl_message*** %10, align 8
  %21 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %20, i64 0
  %22 = load %struct.tgl_message*, %struct.tgl_message** %21, align 8
  %23 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @tgl_cmp_peer_id(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %32 = load %struct.tgl_message**, %struct.tgl_message*** %10, align 8
  %33 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %32, i64 0
  %34 = load %struct.tgl_message*, %struct.tgl_message** %33, align 8
  %35 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tgl_message**, %struct.tgl_message*** %10, align 8
  %38 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %37, i64 0
  %39 = load %struct.tgl_message*, %struct.tgl_message** %38, align 8
  %40 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tgl_do_messages_mark_read(%struct.TYPE_3__* %31, i32 %36, i32 %41, i32 0, i32* null, i32* null)
  br label %56

43:                                               ; preds = %19
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %45 = load %struct.tgl_message**, %struct.tgl_message*** %10, align 8
  %46 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %45, i64 0
  %47 = load %struct.tgl_message*, %struct.tgl_message** %46, align 8
  %48 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tgl_message**, %struct.tgl_message*** %10, align 8
  %51 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %50, i64 0
  %52 = load %struct.tgl_message*, %struct.tgl_message** %51, align 8
  %53 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tgl_do_messages_mark_read(%struct.TYPE_3__* %44, i32 %49, i32 %54, i32 0, i32* null, i32* null)
  br label %56

56:                                               ; preds = %43, %30
  br label %57

57:                                               ; preds = %56, %5
  ret void
}

declare dso_local i32 @print_msg_list_gw(%struct.tgl_state*, i8*, i32, i32, %struct.tgl_message**) #1

declare dso_local i64 @tgl_cmp_peer_id(i32, i32) #1

declare dso_local i32 @tgl_do_messages_mark_read(%struct.TYPE_3__*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
