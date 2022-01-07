; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_ProcessCommandLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_ProcessCommandLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i8**)*, i32 }

@VFD_NG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/h\00", align 1
@Commands = common dso_local global %struct.TYPE_2__* null, align 8
@MSG_TOO_MANY_ARGS = common dso_local global i32 0, align 4
@driver_state = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_GET_STAT_NG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessCommandLine(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @ParseCommand(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @VFD_NG, align 4
  store i32 %14, i32* %3, align 4
  br label %81

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @_stricmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Commands, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PrintMessage(i32 %36)
  %38 = load i32, i32* @VFD_NG, align 4
  store i32 %38, i32* %3, align 4
  br label %81

39:                                               ; preds = %25, %15
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Commands, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %41, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = load i32, i32* @MSG_TOO_MANY_ARGS, align 4
  %51 = call i32 @PrintMessage(i32 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Commands, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PrintMessage(i32 %57)
  %59 = load i32, i32* @VFD_NG, align 4
  store i32 %59, i32* %3, align 4
  br label %81

60:                                               ; preds = %39
  %61 = call i64 @VfdGetDriverState(i32* @driver_state)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* @MSG_GET_STAT_NG, align 4
  %67 = call i32 @PrintMessage(i32 %66)
  %68 = load i64, i64* %7, align 8
  %69 = call i8* @SystemError(i64 %68)
  %70 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @VFD_NG, align 4
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %60
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Commands, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32 (i8**)*, i32 (i8**)** %77, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = call i32 %78(i8** %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %65, %49, %30, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ParseCommand(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @_stricmp(i8*, i8*) #1

declare dso_local i32 @PrintMessage(i32) #1

declare dso_local i64 @VfdGetDriverState(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
