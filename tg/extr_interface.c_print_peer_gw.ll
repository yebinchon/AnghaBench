; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_peer_gw.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_peer_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_peer_gw(%struct.tgl_state* %0, i8* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca %struct.tgl_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = load %struct.tgl_state*, %struct.tgl_state** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = bitcast %struct.TYPE_3__* %15 to i8*
  %17 = call i32 @print_user_gw(%struct.tgl_state* %12, i8* %13, i32 %14, i8* %16)
  br label %46

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tgl_get_peer_type(i32 %21)
  switch i32 %22, label %44 [
    i32 128, label %23
    i32 129, label %30
    i32 130, label %37
  ]

23:                                               ; preds = %18
  %24 = load %struct.tgl_state*, %struct.tgl_state** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = bitcast %struct.TYPE_3__* %27 to i8*
  %29 = call i32 @print_user_gw(%struct.tgl_state* %24, i8* %25, i32 %26, i8* %28)
  br label %46

30:                                               ; preds = %18
  %31 = load %struct.tgl_state*, %struct.tgl_state** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = bitcast %struct.TYPE_3__* %34 to i8*
  %36 = call i32 @print_chat_gw(%struct.tgl_state* %31, i8* %32, i32 %33, i8* %35)
  br label %46

37:                                               ; preds = %18
  %38 = load %struct.tgl_state*, %struct.tgl_state** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = bitcast %struct.TYPE_3__* %41 to i8*
  %43 = call i32 @print_channel_gw(%struct.tgl_state* %38, i8* %39, i32 %40, i8* %42)
  br label %46

44:                                               ; preds = %18
  %45 = call i32 @assert(i32 0)
  br label %46

46:                                               ; preds = %11, %44, %37, %30, %23
  ret void
}

declare dso_local i32 @print_user_gw(%struct.tgl_state*, i8*, i32, i8*) #1

declare dso_local i32 @tgl_get_peer_type(i32) #1

declare dso_local i32 @print_chat_gw(%struct.tgl_state*, i8*, i32, i8*) #1

declare dso_local i32 @print_channel_gw(%struct.tgl_state*, i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
