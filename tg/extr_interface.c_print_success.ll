; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_success.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }

@enable_json = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"SUCCESS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_success(%struct.in_ev* %0) #0 {
  %2 = alloca %struct.in_ev*, align 8
  store %struct.in_ev* %0, %struct.in_ev** %2, align 8
  %3 = load %struct.in_ev*, %struct.in_ev** %2, align 8
  %4 = icmp ne %struct.in_ev* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @enable_json, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5, %1
  %9 = load %struct.in_ev*, %struct.in_ev** %2, align 8
  %10 = call i32 @mprint_start(%struct.in_ev* %9)
  %11 = load i64, i64* @enable_json, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.in_ev*, %struct.in_ev** %2, align 8
  %15 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %17

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load %struct.in_ev*, %struct.in_ev** %2, align 8
  %19 = call i32 @mprint_end(%struct.in_ev* %18)
  br label %20

20:                                               ; preds = %17, %5
  ret void
}

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, ...) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
