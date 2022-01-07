; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_init_output.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_init_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32 }

@init_output.s1000 = internal constant [5 x i8] c"1000\00", align 1
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sSpace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_output(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @GetDC(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %10 = call i32 @GetNumberFormatW(i32 %8, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @init_output.s1000, i64 0, i64 0), i32 0, i8* %9, i32 16)
  %11 = icmp sgt i32 %10, 4
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 1
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  br label %16

15:                                               ; preds = %1
  store i8 46, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 2), align 4
  %19 = call i32 @SelectObject(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @sSpace, align 4
  %22 = call i32 @GetTextExtentPoint32W(i32 %20, i32 %21, i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1))
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SelectObject(i32 %23, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ReleaseDC(i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetNumberFormatW(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i32, i32, i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
