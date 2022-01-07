; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_search.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32, i32, i32 }
%struct.in_ev = type { i32 }

@NOT_FOUND = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4
@print_msg_list_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_search(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 6
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.arg*, %struct.arg** %7, align 8
  %18 = getelementptr inbounds %struct.arg, %struct.arg* %17, i64 1
  %19 = getelementptr inbounds %struct.arg, %struct.arg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NOT_FOUND, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.arg*, %struct.arg** %7, align 8
  %25 = getelementptr inbounds %struct.arg, %struct.arg* %24, i64 1
  %26 = getelementptr inbounds %struct.arg, %struct.arg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  br label %29

28:                                               ; preds = %4
  store i32 40, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.arg*, %struct.arg** %7, align 8
  %31 = getelementptr inbounds %struct.arg, %struct.arg* %30, i64 2
  %32 = getelementptr inbounds %struct.arg, %struct.arg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NOT_FOUND, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.arg*, %struct.arg** %7, align 8
  %38 = getelementptr inbounds %struct.arg, %struct.arg* %37, i64 2
  %39 = getelementptr inbounds %struct.arg, %struct.arg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.arg*, %struct.arg** %7, align 8
  %44 = getelementptr inbounds %struct.arg, %struct.arg* %43, i64 3
  %45 = getelementptr inbounds %struct.arg, %struct.arg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NOT_FOUND, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.arg*, %struct.arg** %7, align 8
  %51 = getelementptr inbounds %struct.arg, %struct.arg* %50, i64 3
  %52 = getelementptr inbounds %struct.arg, %struct.arg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  br label %55

54:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load %struct.arg*, %struct.arg** %7, align 8
  %57 = getelementptr inbounds %struct.arg, %struct.arg* %56, i64 4
  %58 = getelementptr inbounds %struct.arg, %struct.arg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NOT_FOUND, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.arg*, %struct.arg** %7, align 8
  %64 = getelementptr inbounds %struct.arg, %struct.arg* %63, i64 4
  %65 = getelementptr inbounds %struct.arg, %struct.arg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  br label %68

67:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %62
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
  %78 = load %struct.arg*, %struct.arg** %7, align 8
  %79 = getelementptr inbounds %struct.arg, %struct.arg* %78, i64 0
  %80 = getelementptr inbounds %struct.arg, %struct.arg* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.arg*, %struct.arg** %7, align 8
  %87 = getelementptr inbounds %struct.arg, %struct.arg* %86, i64 5
  %88 = getelementptr inbounds %struct.arg, %struct.arg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.arg*, %struct.arg** %7, align 8
  %91 = getelementptr inbounds %struct.arg, %struct.arg* %90, i64 5
  %92 = getelementptr inbounds %struct.arg, %struct.arg* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strlen(i32 %93)
  %95 = load i32, i32* @print_msg_list_gw, align 4
  %96 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %97 = call i32 @tgl_do_msg_search(i32 %77, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %89, i32 %94, i32 %95, %struct.in_ev* %96)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tgl_do_msg_search(i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.in_ev*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
