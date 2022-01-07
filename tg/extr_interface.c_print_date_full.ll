; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_date_full.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_date_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"[%04d/%02d/%02d %02d:%02d:%02d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_date_full(%struct.in_ev* %0, i64 %1) #0 {
  %3 = alloca %struct.in_ev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  store %struct.in_ev* %0, %struct.in_ev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = bitcast i64* %4 to i8*
  %7 = call %struct.tm* @localtime(i8* %6)
  store %struct.tm* %7, %struct.tm** %5, align 8
  %8 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %9 = load %struct.tm*, %struct.tm** %5, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1900
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.tm*, %struct.tm** %5, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tm*, %struct.tm** %5, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tm*, %struct.tm** %5, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tm*, %struct.tm** %5, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mprintf(%struct.in_ev* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %16, i32 %19, i32 %22, i32 %25, i32 %28)
  ret void
}

declare dso_local %struct.tm* @localtime(i8*) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, i64, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
