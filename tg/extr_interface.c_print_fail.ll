; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_fail.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.in_ev = type { i32 }

@enable_json = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"FAIL: %d: %s\0A\00", align 1
@TLS = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_fail(%struct.in_ev* %0) #0 {
  %2 = alloca %struct.in_ev*, align 8
  store %struct.in_ev* %0, %struct.in_ev** %2, align 8
  %3 = load %struct.in_ev*, %struct.in_ev** %2, align 8
  %4 = call i32 @mprint_start(%struct.in_ev* %3)
  %5 = load i32, i32* @enable_json, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load %struct.in_ev*, %struct.in_ev** %2, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (%struct.in_ev*, i8*, i8*, ...) @mprintf(%struct.in_ev* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %16)
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %7
  %20 = load %struct.in_ev*, %struct.in_ev** %2, align 8
  %21 = call i32 @mprint_end(%struct.in_ev* %20)
  ret void
}

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, i8*, ...) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
