; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_AltUnmountVolume.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_AltUnmountVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@DDD_REMOVE_DEFINITION = common dso_local global i32 0, align 4
@DDD_NO_BROADCAST_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not unmount '%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Successfully unmounted '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AltUnmountVolume(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  br label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @DDD_REMOVE_DEFINITION, align 4
  %12 = load i32, i32* @DDD_NO_BROADCAST_SYSTEM, align 4
  %13 = or i32 %11, %12
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @DefineDosDeviceA(i32 %13, i8* %14, i32* null)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (...) @WindowsErrorString()
  %20 = call i32 (i8*, i8*, ...) @suprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %10
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, i8*, ...) @suprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17, %8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @DefineDosDeviceA(i32, i8*, i32*) #1

declare dso_local i32 @suprintf(i8*, i8*, ...) #1

declare dso_local i32 @WindowsErrorString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
