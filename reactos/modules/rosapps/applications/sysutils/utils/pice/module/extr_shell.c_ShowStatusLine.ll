; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_shell.c_ShowStatusLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_shell.c_ShowStatusLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@COLOR_TEXT = common dso_local global i32 0, align 4
@COLOR_CAPTION = common dso_local global i32 0, align 4
@wWindow = common dso_local global %struct.TYPE_5__* null, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@tempShell = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c" PROCESS(%.8X \22%s\22) \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" PROCESS(%.8X) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShowStatusLine() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = call %struct.TYPE_4__* (...) @IoGetCurrentProcess()
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = call i32 (...) @ENTER_FUNC()
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %6 = ptrtoint %struct.TYPE_4__* %5 to i32
  %7 = call i64 @IsAddressValid(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %0
  %10 = load i32, i32* @COLOR_TEXT, align 4
  %11 = call i32 @SetForegroundColor(i32 %10)
  %12 = load i32, i32* @COLOR_CAPTION, align 4
  %13 = call i32 @SetBackgroundColor(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wWindow, align 8
  %15 = load i64, i64* @OUTPUT_WINDOW, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @ClrLine(i64 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %2, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @IsAddressValid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %9
  %29 = load i32, i32* @tempShell, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %31 = ptrtoint %struct.TYPE_4__* %30 to i32
  %32 = load i64, i64* %2, align 8
  %33 = call i32 (i32, i8*, i32, ...) @PICE_sprintf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  br label %39

34:                                               ; preds = %9
  %35 = load i32, i32* @tempShell, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %37 = ptrtoint %struct.TYPE_4__* %36 to i32
  %38 = call i32 (i32, i8*, i32, ...) @PICE_sprintf(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* @tempShell, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wWindow, align 8
  %42 = load i64, i64* @OUTPUT_WINDOW, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1
  %47 = call i32 @PutChar(i32 %40, i32 1, i64 %46)
  %48 = call i32 (...) @ResetColor()
  br label %49

49:                                               ; preds = %39, %0
  %50 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local %struct.TYPE_4__* @IoGetCurrentProcess(...) #1

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i64 @IsAddressValid(i32) #1

declare dso_local i32 @SetForegroundColor(i32) #1

declare dso_local i32 @SetBackgroundColor(i32) #1

declare dso_local i32 @ClrLine(i64) #1

declare dso_local i32 @PICE_sprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @PutChar(i32, i32, i64) #1

declare dso_local i32 @ResetColor(...) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
