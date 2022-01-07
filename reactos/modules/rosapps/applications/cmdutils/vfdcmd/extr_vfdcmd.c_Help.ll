; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Help.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MSG_HELP_GENERAL = common dso_local global i32 0, align 4
@MSG_HELP_HELP = common dso_local global i32 0, align 4
@HelpMsg = common dso_local global %struct.TYPE_2__* null, align 8
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@help_progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VFD_NG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VFD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Help(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %7 = load i32, i32* @MSG_HELP_GENERAL, align 4
  store i32 %7, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @ParseHelpTopic(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @MSG_HELP_HELP, align 4
  store i32 %21, i32* %4, align 4
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HelpMsg, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %20
  br label %30

30:                                               ; preds = %29, %10, %1
  %31 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %32 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = ptrtoint i8** %5 to i32
  %38 = call i32 @FormatMessage(i32 %35, i32* null, i32 %36, i32 0, i32 %37, i32 0, i32* @help_progname)
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = call i32 (...) @GetLastError()
  %43 = call i8* @SystemError(i32 %42)
  %44 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @VFD_NG, align 4
  store i32 %45, i32* %2, align 4
  br label %53

46:                                               ; preds = %30
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @ConsolePager(i8* %47, i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @LocalFree(i8* %50)
  %52 = load i32, i32* @VFD_OK, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ParseHelpTopic(i8*) #1

declare dso_local i32 @FormatMessage(i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ConsolePager(i8*, i32) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
