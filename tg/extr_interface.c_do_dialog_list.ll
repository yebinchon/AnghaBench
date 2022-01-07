; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_dialog_list.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_dialog_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i64 }
%struct.in_ev = type { i32 }

@TLS = common dso_local global i32 0, align 4
@NOT_FOUND = common dso_local global i64 0, align 8
@print_dialog_list_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_dialog_list(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 2
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
  %24 = getelementptr inbounds %struct.arg, %struct.arg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NOT_FOUND, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.arg*, %struct.arg** %7, align 8
  %30 = getelementptr inbounds %struct.arg, %struct.arg* %29, i64 0
  %31 = getelementptr inbounds %struct.arg, %struct.arg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %34

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i64 [ %32, %28 ], [ 100, %33 ]
  %36 = trunc i64 %35 to i32
  %37 = load %struct.arg*, %struct.arg** %7, align 8
  %38 = getelementptr inbounds %struct.arg, %struct.arg* %37, i64 1
  %39 = getelementptr inbounds %struct.arg, %struct.arg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NOT_FOUND, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.arg*, %struct.arg** %7, align 8
  %45 = getelementptr inbounds %struct.arg, %struct.arg* %44, i64 1
  %46 = getelementptr inbounds %struct.arg, %struct.arg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %49

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i64 [ %47, %43 ], [ 0, %48 ]
  %51 = load i32, i32* @print_dialog_list_gw, align 4
  %52 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %53 = call i32 @tgl_do_get_dialog_list(i32 %21, i32 %36, i64 %50, i32 %51, %struct.in_ev* %52)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tgl_do_get_dialog_list(i32, i32, i64, i32, %struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
