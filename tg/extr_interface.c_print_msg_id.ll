; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_msg_id.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_msg_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.tgl_message = type { i32 }

@msg_num_mode = common dso_local global i64 0, align 8
@permanent_msg_id_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_msg_id(%struct.in_ev* %0, i32 %1, %struct.tgl_message* %2) #0 {
  %4 = alloca %struct.in_ev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tgl_message*, align 8
  store %struct.in_ev* %0, %struct.in_ev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tgl_message* %2, %struct.tgl_message** %6, align 8
  %7 = load i64, i64* @msg_num_mode, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = load i32, i32* @permanent_msg_id_mode, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = load %struct.tgl_message*, %struct.tgl_message** %6, align 8
  %14 = icmp ne %struct.tgl_message* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %17 = load %struct.tgl_message*, %struct.tgl_message** %6, align 8
  %18 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %23 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  br label %30

25:                                               ; preds = %9
  %26 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @print_permanent_msg_id(i32 %27)
  %29 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %24
  br label %31

31:                                               ; preds = %30, %3
  ret void
}

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, ...) #1

declare dso_local i32 @print_permanent_msg_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
