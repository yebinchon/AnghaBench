; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_send_typing.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_send_typing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32, i32 }
%struct.in_ev = type { i32 }

@tgl_typing_typing = common dso_local global i32 0, align 4
@NOT_FOUND = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"illegal typing status\00", align 1
@print_success_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_send_typing(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
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
  %11 = icmp eq i32 %10, 2
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @tgl_typing_typing, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.arg*, %struct.arg** %7, align 8
  %16 = getelementptr inbounds %struct.arg, %struct.arg* %15, i64 1
  %17 = getelementptr inbounds %struct.arg, %struct.arg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NOT_FOUND, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load %struct.arg*, %struct.arg** %7, align 8
  %23 = getelementptr inbounds %struct.arg, %struct.arg* %22, i64 1
  %24 = getelementptr inbounds %struct.arg, %struct.arg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.arg*, %struct.arg** %7, align 8
  %29 = getelementptr inbounds %struct.arg, %struct.arg* %28, i64 1
  %30 = getelementptr inbounds %struct.arg, %struct.arg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @TLS, align 4
  %35 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %36 = load i32, i32* @ENOSYS, align 4
  %37 = call i32 @fail_interface(i32 %34, %struct.in_ev* %35, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %61

38:                                               ; preds = %27, %21
  %39 = load %struct.arg*, %struct.arg** %7, align 8
  %40 = getelementptr inbounds %struct.arg, %struct.arg* %39, i64 1
  %41 = getelementptr inbounds %struct.arg, %struct.arg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %38, %4
  %44 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %45 = icmp ne %struct.in_ev* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %48 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* @TLS, align 4
  %53 = load %struct.arg*, %struct.arg** %7, align 8
  %54 = getelementptr inbounds %struct.arg, %struct.arg* %53, i64 0
  %55 = getelementptr inbounds %struct.arg, %struct.arg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @print_success_gw, align 4
  %59 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %60 = call i32 @tgl_do_send_typing(i32 %52, i32 %56, i32 %57, i32 %58, %struct.in_ev* %59)
  br label %61

61:                                               ; preds = %51, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fail_interface(i32, %struct.in_ev*, i32, i8*) #1

declare dso_local i32 @tgl_do_send_typing(i32, i32, i32, i32, %struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
