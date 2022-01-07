; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_PrintOmxEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_PrintOmxEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"OmxEventHandler (%s, %s, %s)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"OmxEventHandler (%s, %s, %u)\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"OmxEventHandler (%s, %s, %u, %s)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"OmxEventHandler (%s, %u, %u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintOmxEvent(i32* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %46 [
    i32 129, label %12
    i32 128, label %34
  ]

12:                                               ; preds = %5
  %13 = load i64, i64* %8, align 8
  %14 = trunc i64 %13 to i32
  switch i32 %14, label %24 [
    i32 130, label %15
  ]

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @EventToString(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @CommandToString(i64 %19)
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @StateToString(i64 %21)
  %23 = call i32 (i32*, i8*, i32, i32, i32, ...) @msg_Dbg(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i32 %22)
  br label %33

24:                                               ; preds = %12
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @EventToString(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @CommandToString(i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i32*, i8*, i32, i32, i32, ...) @msg_Dbg(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %24, %15
  br label %55

34:                                               ; preds = %5
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @EventToString(i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @ErrorToString(i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* %10, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 (i32*, i8*, i32, i32, i32, ...) @msg_Dbg(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %40, i32 %42, i8* %44)
  br label %55

46:                                               ; preds = %5
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @EventToString(i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32*, i8*, i32, i32, i32, ...) @msg_Dbg(i32* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %46, %34, %33
  ret void
}

declare dso_local i32 @msg_Dbg(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @EventToString(i32) #1

declare dso_local i32 @CommandToString(i64) #1

declare dso_local i32 @StateToString(i64) #1

declare dso_local i32 @ErrorToString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
