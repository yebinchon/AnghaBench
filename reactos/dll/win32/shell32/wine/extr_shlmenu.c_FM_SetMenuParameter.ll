; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shlmenu.c_FM_SetMenuParameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shlmenu.c_FM_SetMenuParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i8*, i32, i8*, i8*, i32)* @FM_SetMenuParameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @FM_SetMenuParameter(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_4__* @FM_GetMenuInfo(i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %13, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @SHFree(i32 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ILClone(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_4__* @FM_GetMenuInfo(i32) #1

declare dso_local i32 @SHFree(i32) #1

declare dso_local i32 @ILClone(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
