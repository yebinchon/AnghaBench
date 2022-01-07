; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_PrintDriveLetter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_PrintDriveLetter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DRIVE_LETTER = common dso_local global i32 0, align 4
@MSG_PERSISTENT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_EPHEMERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintDriveLetter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MSG_DRIVE_LETTER, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @PrintMessage(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @VfdGetGlobalLink(i32 %9, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @isalpha(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @MSG_PERSISTENT, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @toupper(i32 %16) #3
  %18 = call i32 @PrintMessage(i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @VfdGetLocalLink(i32 %21, i32* %5)
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @isalpha(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i32, i32* @MSG_EPHEMERAL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @toupper(i32 %33) #3
  %35 = call i32 @PrintMessage(i32 %32, i32 %34)
  br label %20

36:                                               ; preds = %29
  %37 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PrintMessage(i32, i32) #1

declare dso_local i32 @VfdGetGlobalLink(i32, i32*) #1

declare dso_local i64 @isalpha(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i64 @VfdGetLocalLink(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
