; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_accept_secret_chat.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_accept_secret_chat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TLS = common dso_local global i32 0, align 4
@print_encr_chat_success_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_accept_secret_chat(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 1
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
  %22 = load i32, i32* @TLS, align 4
  %23 = load %struct.arg*, %struct.arg** %7, align 8
  %24 = getelementptr inbounds %struct.arg, %struct.arg* %23, i64 0
  %25 = getelementptr inbounds %struct.arg, %struct.arg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_3__* @tgl_peer_get(i32 %22, i32 %26)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %9, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @TLS, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* @print_encr_chat_success_gw, align 4
  %35 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %36 = call i32 @tgl_do_accept_encr_chat_request(i32 %31, i32* %33, i32 %34, %struct.in_ev* %35)
  br label %41

37:                                               ; preds = %21
  %38 = load i32, i32* @TLS, align 4
  %39 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %40 = call i32 @print_success_gw(i32 %38, %struct.in_ev* %39, i32 0)
  br label %41

41:                                               ; preds = %37, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @tgl_peer_get(i32, i32) #1

declare dso_local i32 @tgl_do_accept_encr_chat_request(i32, i32*, i32, %struct.in_ev*) #1

declare dso_local i32 @print_success_gw(i32, %struct.in_ev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
