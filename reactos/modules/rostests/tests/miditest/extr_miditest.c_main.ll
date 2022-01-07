; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/miditest/extr_miditest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/miditest/extr_miditest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"MIDI output devices: %d\0A\00", align 1
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Device #%d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Opening MIDI output #0\0A\00", align 1
@CALLBACK_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Result == %d Handle == %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 (...) @midiOutGetNumDevs()
  store i32 %7, i32* %2, align 4
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %25, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @midiOutGetDevCaps(i32 %15, %struct.TYPE_3__* %3, i32 8)
  %17 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* %22)
  br label %24

24:                                               ; preds = %19, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10

28:                                               ; preds = %10
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @CALLBACK_NULL, align 4
  %31 = call i32 @midiOutOpen(i8** %5, i32 0, i32 0, i32 0, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %32, i8* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @midiOutShortMsg(i8* %35, i32 8335504)
  ret i32 0
}

declare dso_local i32 @midiOutGetNumDevs(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @midiOutGetDevCaps(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @midiOutOpen(i8**, i32, i32, i32, i32) #1

declare dso_local i32 @midiOutShortMsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
