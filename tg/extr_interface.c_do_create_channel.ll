; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_create_channel.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_create_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }

@do_create_channel.ids = internal global [1000 x i32] zeroinitializer, align 16
@TLS = common dso_local global i32 0, align 4
@print_success_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_create_channel(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
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
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 1000
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ false, %4 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %35, %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 2
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.arg*, %struct.arg** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.arg, %struct.arg* %25, i64 %28
  %30 = getelementptr inbounds %struct.arg, %struct.arg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [1000 x i32], [1000 x i32]* @do_create_channel.ids, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %40 = icmp ne %struct.in_ev* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %43 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* @TLS, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 2
  %50 = call i32 @ARG2STR(i32 0)
  %51 = call i32 @ARG2STR(i32 1)
  %52 = load i32, i32* @print_success_gw, align 4
  %53 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %54 = call i32 @tgl_do_create_channel(i32 %47, i32 %49, i32* getelementptr inbounds ([1000 x i32], [1000 x i32]* @do_create_channel.ids, i64 0, i64 0), i32 %50, i32 %51, i32 1, i32 %52, %struct.in_ev* %53)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tgl_do_create_channel(i32, i32, i32*, i32, i32, i32, i32, %struct.in_ev*) #1

declare dso_local i32 @ARG2STR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
