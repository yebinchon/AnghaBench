; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_broadcast.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32, i32 }
%struct.in_ev = type { i32 }

@do_broadcast.ids = internal global [1000 x i32] zeroinitializer, align 16
@TLS = common dso_local global i32 0, align 4
@disable_msg_preview = common dso_local global i32 0, align 4
@do_html = common dso_local global i32 0, align 4
@print_msg_list_success_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_broadcast(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
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
  %11 = icmp sge i32 %10, 1
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

19:                                               ; preds = %34, %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.arg*, %struct.arg** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.arg, %struct.arg* %25, i64 %27
  %29 = getelementptr inbounds %struct.arg, %struct.arg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [1000 x i32], [1000 x i32]* @do_broadcast.ids, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %39 = icmp ne %struct.in_ev* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %42 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @TLS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.arg*, %struct.arg** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.arg, %struct.arg* %49, i64 %52
  %54 = getelementptr inbounds %struct.arg, %struct.arg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.arg*, %struct.arg** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.arg, %struct.arg* %56, i64 %59
  %61 = getelementptr inbounds %struct.arg, %struct.arg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strlen(i32 %62)
  %64 = load i32, i32* @disable_msg_preview, align 4
  %65 = load i32, i32* @do_html, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @print_msg_list_success_gw, align 4
  %68 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %69 = call i32 @tgl_do_send_broadcast(i32 %46, i32 %48, i32* getelementptr inbounds ([1000 x i32], [1000 x i32]* @do_broadcast.ids, i64 0, i64 0), i32 %55, i32 %63, i32 %66, i32 %67, %struct.in_ev* %68)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tgl_do_send_broadcast(i32, i32, i32*, i32, i32, i32, i32, %struct.in_ev*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
