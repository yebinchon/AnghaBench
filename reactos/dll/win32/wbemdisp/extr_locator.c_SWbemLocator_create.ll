; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemdisp/extr_locator.c_SWbemLocator_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemdisp/extr_locator.c_SWbemLocator_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locator = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@locator_vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning iface %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SWbemLocator_create(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.locator*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = bitcast i8** %5 to i8*
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = call %struct.locator* @heap_alloc(i32 24)
  store %struct.locator* %8, %struct.locator** %4, align 8
  %9 = icmp ne %struct.locator* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %11, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.locator*, %struct.locator** %4, align 8
  %14 = getelementptr inbounds %struct.locator, %struct.locator* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* @locator_vtbl, i32** %15, align 8
  %16 = load %struct.locator*, %struct.locator** %4, align 8
  %17 = getelementptr inbounds %struct.locator, %struct.locator* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.locator*, %struct.locator** %4, align 8
  %19 = getelementptr inbounds %struct.locator, %struct.locator* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.locator*, %struct.locator** %4, align 8
  %21 = getelementptr inbounds %struct.locator, %struct.locator* %20, i32 0, i32 1
  %22 = bitcast %struct.TYPE_2__* %21 to i8*
  %23 = load i8**, i8*** %3, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @S_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %12, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local %struct.locator* @heap_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
