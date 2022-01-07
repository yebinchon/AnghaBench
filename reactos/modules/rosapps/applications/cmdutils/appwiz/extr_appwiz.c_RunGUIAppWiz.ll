; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/appwiz/extr_appwiz.c_RunGUIAppWiz.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/appwiz/extr_appwiz.c_RunGUIAppWiz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"RunDll32.exe\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"shell32.dll,Control_RunDLL appwiz.cpl\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Can not start appwiz.cpl\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RunGUIAppWiz() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 40)
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 40, i32* %3, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32* null, i32** %4, align 8
  %5 = call i8* @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i8* %5, i8** %6, align 8
  %7 = call i8* @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i8* %7, i8** %8, align 8
  %9 = call i8* @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = call i64 @ShellExecuteEx(%struct.TYPE_4__* %1)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = call i8* @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* @MB_OK, align 4
  %16 = load i32, i32* @MB_ICONERROR, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @MessageBox(i32* null, i8* %14, i32* null, i32 %17)
  br label %19

19:                                               ; preds = %13, %0
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @_T(i8*) #1

declare dso_local i64 @ShellExecuteEx(%struct.TYPE_4__*) #1

declare dso_local i32 @MessageBox(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
