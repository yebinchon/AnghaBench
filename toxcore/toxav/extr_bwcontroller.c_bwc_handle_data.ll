; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_bwcontroller.c_bwc_handle_data.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_bwcontroller.c_bwc_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BWCMessage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwc_handle_data(i32* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %23

17:                                               ; preds = %5
  %18 = load i8*, i8** %11, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = bitcast i32* %20 to %struct.BWCMessage*
  %22 = call i32 @on_update(i8* %18, %struct.BWCMessage* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @on_update(i8*, %struct.BWCMessage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
