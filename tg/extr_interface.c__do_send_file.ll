; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c__do_send_file.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c__do_send_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32*, i32 }
%struct.in_ev = type { i32 }

@TLS = common dso_local global i32 0, align 4
@reply_id = common dso_local global i32 0, align 4
@print_msg_success_gw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, i32, %struct.arg*, %struct.in_ev*, i64)* @_do_send_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_do_send_file(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3, i64 %4) #0 {
  %6 = alloca %struct.command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arg*, align 8
  %9 = alloca %struct.in_ev*, align 8
  %10 = alloca i64, align 8
  store %struct.command* %0, %struct.command** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.arg* %2, %struct.arg** %8, align 8
  store %struct.in_ev* %3, %struct.in_ev** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 2
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %16 = icmp ne %struct.in_ev* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %19 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %17, %5
  %23 = load i32, i32* @TLS, align 4
  %24 = load %struct.arg*, %struct.arg** %8, align 8
  %25 = getelementptr inbounds %struct.arg, %struct.arg* %24, i64 0
  %26 = getelementptr inbounds %struct.arg, %struct.arg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.arg*, %struct.arg** %8, align 8
  %29 = getelementptr inbounds %struct.arg, %struct.arg* %28, i64 1
  %30 = getelementptr inbounds %struct.arg, %struct.arg* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.arg*, %struct.arg** %8, align 8
  %37 = getelementptr inbounds %struct.arg, %struct.arg* %36, i64 2
  %38 = getelementptr inbounds %struct.arg, %struct.arg* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i32* [ null, %34 ], [ %39, %35 ]
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %51

45:                                               ; preds = %40
  %46 = load %struct.arg*, %struct.arg** %8, align 8
  %47 = getelementptr inbounds %struct.arg, %struct.arg* %46, i64 2
  %48 = getelementptr inbounds %struct.arg, %struct.arg* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @strlen(i32* %49)
  br label %51

51:                                               ; preds = %45, %44
  %52 = phi i32 [ 0, %44 ], [ %50, %45 ]
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* @reply_id, align 4
  %55 = call i64 @TGL_SEND_MSG_FLAG_REPLY(i32 %54)
  %56 = or i64 %53, %55
  %57 = load i32, i32* @print_msg_success_gw, align 4
  %58 = load %struct.in_ev*, %struct.in_ev** %9, align 8
  %59 = call i32 @tgl_do_send_document(i32 %23, i32 %27, i32* %31, i32* %41, i32 %52, i64 %56, i32 %57, %struct.in_ev* %58)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tgl_do_send_document(i32, i32, i32*, i32*, i32, i64, i32, %struct.in_ev*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @TGL_SEND_MSG_FLAG_REPLY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
