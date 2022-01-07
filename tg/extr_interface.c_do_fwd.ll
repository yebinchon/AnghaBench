; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_fwd.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32, i32 }
%struct.in_ev = type { i32 }

@do_fwd.list = internal global [1000 x i32*] zeroinitializer, align 16
@TLS = common dso_local global i32 0, align 4
@print_msg_list_success_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_fwd(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 2
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
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 1000
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %41, %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.arg*, %struct.arg** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.arg, %struct.arg* %32, i64 %35
  %37 = getelementptr inbounds %struct.arg, %struct.arg* %36, i32 0, i32 1
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1000 x i32*], [1000 x i32*]* @do_fwd.list, i64 0, i64 %39
  store i32* %37, i32** %40, align 8
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* @TLS, align 4
  %46 = load %struct.arg*, %struct.arg** %7, align 8
  %47 = getelementptr inbounds %struct.arg, %struct.arg* %46, i64 0
  %48 = getelementptr inbounds %struct.arg, %struct.arg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* @print_msg_list_success_gw, align 4
  %53 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %54 = call i32 @tgl_do_forward_messages(i32 %45, i32 %49, i32 %51, i8* bitcast ([1000 x i32*]* @do_fwd.list to i8*), i32 0, i32 %52, %struct.in_ev* %53)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tgl_do_forward_messages(i32, i32, i32, i8*, i32, i32, %struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
