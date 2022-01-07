; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_rename_contact.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_rename_contact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i64, i32 }
%struct.in_ev = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TLS = common dso_local global i32 0, align 4
@print_user_list_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_rename_contact(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 3
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @TLS, align 4
  %15 = load %struct.arg*, %struct.arg** %7, align 8
  %16 = getelementptr inbounds %struct.arg, %struct.arg* %15, i64 0
  %17 = getelementptr inbounds %struct.arg, %struct.arg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_5__* @tgl_peer_get(i32 %14, i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %30 = icmp ne %struct.in_ev* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %33 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* @TLS, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @strlen(i64 %45)
  %47 = load %struct.arg*, %struct.arg** %7, align 8
  %48 = getelementptr inbounds %struct.arg, %struct.arg* %47, i64 1
  %49 = getelementptr inbounds %struct.arg, %struct.arg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.arg*, %struct.arg** %7, align 8
  %52 = getelementptr inbounds %struct.arg, %struct.arg* %51, i64 1
  %53 = getelementptr inbounds %struct.arg, %struct.arg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strlen(i64 %54)
  %56 = load %struct.arg*, %struct.arg** %7, align 8
  %57 = getelementptr inbounds %struct.arg, %struct.arg* %56, i64 2
  %58 = getelementptr inbounds %struct.arg, %struct.arg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.arg*, %struct.arg** %7, align 8
  %61 = getelementptr inbounds %struct.arg, %struct.arg* %60, i64 2
  %62 = getelementptr inbounds %struct.arg, %struct.arg* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @strlen(i64 %63)
  %65 = load i32, i32* @print_user_list_gw, align 4
  %66 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %67 = call i32 @tgl_do_add_contact(i32 %37, i64 %41, i32 %46, i64 %50, i32 %55, i64 %59, i32 %64, i32 0, i32 %65, %struct.in_ev* %66)
  br label %80

68:                                               ; preds = %22, %4
  %69 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %70 = icmp ne %struct.in_ev* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %73 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* @TLS, align 4
  %78 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %79 = call i32 @print_success_gw(i32 %77, %struct.in_ev* %78, i32 0)
  br label %80

80:                                               ; preds = %76, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @tgl_peer_get(i32, i32) #1

declare dso_local i32 @tgl_do_add_contact(i32, i64, i32, i64, i32, i64, i32, i32, i32, %struct.in_ev*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @print_success_gw(i32, %struct.in_ev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
