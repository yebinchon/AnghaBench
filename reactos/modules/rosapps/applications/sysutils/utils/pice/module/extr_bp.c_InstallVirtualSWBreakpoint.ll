; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_bp.c_InstallVirtualSWBreakpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_bp.c_InstallVirtualSWBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i8*, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"InstallVirtualSWBreakpoint(%s!%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"InstallVirtualSWBreakpoint(): found empty slot\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @InstallVirtualSWBreakpoint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** @FALSE, align 8
  store i8* %7, i8** %6, align 8
  %8 = call i32 (...) @ENTER_FUNC()
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @DPRINT(i32 %10)
  %12 = call %struct.TYPE_3__* (...) @FindEmptySwBpSlot()
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = call i32 @DPRINT(i32 ptrtoint ([48 x i8]* @.str.1 to i32))
  %16 = load i8*, i8** @TRUE, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @TRUE, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @TRUE, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @PICE_strcpy(i32 %29, i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @PICE_strcpy(i32 %34, i32 %35)
  %37 = load i8*, i8** @TRUE, align 8
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %14, %2
  %39 = call i32 (...) @LEAVE_FUNC()
  %40 = load i8*, i8** %6, align 8
  ret i8* %40
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local %struct.TYPE_3__* @FindEmptySwBpSlot(...) #1

declare dso_local i32 @PICE_strcpy(i32, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
