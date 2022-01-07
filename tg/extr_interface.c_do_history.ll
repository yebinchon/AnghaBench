; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_history.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i64, i32 }
%struct.in_ev = type { i32 }

@TLS = common dso_local global i32 0, align 4
@NOT_FOUND = common dso_local global i64 0, align 8
@offline_mode = common dso_local global i32 0, align 4
@print_msg_list_history_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_history(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 3
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %14 = icmp ne %struct.in_ev* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %17 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @TLS, align 4
  %22 = load %struct.arg*, %struct.arg** %7, align 8
  %23 = getelementptr inbounds %struct.arg, %struct.arg* %22, i64 0
  %24 = getelementptr inbounds %struct.arg, %struct.arg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.arg*, %struct.arg** %7, align 8
  %27 = getelementptr inbounds %struct.arg, %struct.arg* %26, i64 2
  %28 = getelementptr inbounds %struct.arg, %struct.arg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NOT_FOUND, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.arg*, %struct.arg** %7, align 8
  %34 = getelementptr inbounds %struct.arg, %struct.arg* %33, i64 2
  %35 = getelementptr inbounds %struct.arg, %struct.arg* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %38

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i64 [ %36, %32 ], [ 0, %37 ]
  %40 = load %struct.arg*, %struct.arg** %7, align 8
  %41 = getelementptr inbounds %struct.arg, %struct.arg* %40, i64 1
  %42 = getelementptr inbounds %struct.arg, %struct.arg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NOT_FOUND, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.arg*, %struct.arg** %7, align 8
  %48 = getelementptr inbounds %struct.arg, %struct.arg* %47, i64 1
  %49 = getelementptr inbounds %struct.arg, %struct.arg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi i64 [ %50, %46 ], [ 40, %51 ]
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @offline_mode, align 4
  %56 = load i32, i32* @print_msg_list_history_gw, align 4
  %57 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %58 = call i32 @tgl_do_get_history(i32 %21, i32 %25, i64 %39, i32 %54, i32 %55, i32 %56, %struct.in_ev* %57)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tgl_do_get_history(i32, i32, i64, i32, i32, i32, %struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
