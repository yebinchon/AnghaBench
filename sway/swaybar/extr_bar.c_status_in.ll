; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_status_in.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_status_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { i32, i32 }

@POLLHUP = common dso_local global i16 0, align 2
@POLLERR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [36 x i8] c"[error reading from status command]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_in(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.swaybar*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.swaybar*
  store %struct.swaybar* %9, %struct.swaybar** %7, align 8
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* @POLLHUP, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @POLLERR, align 2
  %15 = sext i16 %14 to i32
  %16 = or i32 %13, %15
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.swaybar*, %struct.swaybar** %7, align 8
  %21 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @status_error(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.swaybar*, %struct.swaybar** %7, align 8
  %25 = call i32 @set_bar_dirty(%struct.swaybar* %24)
  %26 = load %struct.swaybar*, %struct.swaybar** %7, align 8
  %27 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @loop_remove_fd(i32 %28, i32 %29)
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.swaybar*, %struct.swaybar** %7, align 8
  %33 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @status_handle_readable(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.swaybar*, %struct.swaybar** %7, align 8
  %39 = call i32 @set_bar_dirty(%struct.swaybar* %38)
  br label %40

40:                                               ; preds = %37, %31
  br label %41

41:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32 @status_error(i32, i8*) #1

declare dso_local i32 @set_bar_dirty(%struct.swaybar*) #1

declare dso_local i32 @loop_remove_fd(i32, i32) #1

declare dso_local i64 @status_handle_readable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
