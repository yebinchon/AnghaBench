; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbd/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbd/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"usbd.sys\00", align 1
@DONT_RESOLVE_DLL_REFERENCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"USBD_GetInterfaceLength\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"usbd.ms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32 (%struct.TYPE_3__*, i32)*, align 8
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 10, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 2, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 2, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @DONT_RESOLVE_DLL_REFERENCES, align 4
  %10 = call i32 @LoadLibraryEx(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i32 (%struct.TYPE_3__*, i32)*
  store i32 (%struct.TYPE_3__*, i32)* %13, i32 (%struct.TYPE_3__*, i32)** %4, align 8
  %14 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %4, align 8
  %15 = ptrtoint %struct.TYPE_3__* %3 to i64
  %16 = add i64 %15, 16
  %17 = trunc i64 %16 to i32
  %18 = call i32 %14(%struct.TYPE_3__* %3, i32 %17)
  %19 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @FreeLibrary(i32 %20)
  %22 = load i32, i32* @DONT_RESOLVE_DLL_REFERENCES, align 4
  %23 = call i32 @LoadLibraryEx(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %22)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @GetProcAddress(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i32 (%struct.TYPE_3__*, i32)*
  store i32 (%struct.TYPE_3__*, i32)* %26, i32 (%struct.TYPE_3__*, i32)** %4, align 8
  %27 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %4, align 8
  %28 = ptrtoint %struct.TYPE_3__* %3 to i64
  %29 = add i64 %28, 16
  %30 = trunc i64 %29 to i32
  %31 = call i32 %27(%struct.TYPE_3__* %3, i32 %30)
  %32 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @FreeLibrary(i32 %33)
  ret i32 0
}

declare dso_local i32 @LoadLibraryEx(i8*, i32*, i32) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @FreeLibrary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
