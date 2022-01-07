; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_copy.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @utf8_copy(%struct.utf8_data* %0, %struct.utf8_data* %1) #0 {
  %3 = alloca %struct.utf8_data*, align 8
  %4 = alloca %struct.utf8_data*, align 8
  %5 = alloca i32, align 4
  store %struct.utf8_data* %0, %struct.utf8_data** %3, align 8
  store %struct.utf8_data* %1, %struct.utf8_data** %4, align 8
  %6 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %7 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %8 = call i32 @memcpy(%struct.utf8_data* %6, %struct.utf8_data* %7, i32 16)
  %9 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %10 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %18 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memcpy(%struct.utf8_data*, %struct.utf8_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
