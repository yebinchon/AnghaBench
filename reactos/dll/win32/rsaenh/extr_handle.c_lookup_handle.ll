; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_lookup_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_lookup_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"(lpTable=%p, handle=%ld, lplpObject=%p)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_handle(%struct.handle_table* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.handle_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  store %struct.handle_table* %0, %struct.handle_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.handle_table*, %struct.handle_table** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32**, i32*** %8, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.handle_table* %11, i32 %12, i32** %13)
  %15 = load %struct.handle_table*, %struct.handle_table** %5, align 8
  %16 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %15, i32 0, i32 0
  %17 = call i32 @EnterCriticalSection(i32* %16)
  %18 = load %struct.handle_table*, %struct.handle_table** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @is_valid_handle(%struct.handle_table* %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32**, i32*** %8, align 8
  store i32* null, i32** %24, align 8
  br label %36

25:                                               ; preds = %4
  %26 = load %struct.handle_table*, %struct.handle_table** %5, align 8
  %27 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @HANDLE2INDEX(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** %8, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %25, %23
  %37 = load %struct.handle_table*, %struct.handle_table** %5, align 8
  %38 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %37, i32 0, i32 0
  %39 = call i32 @LeaveCriticalSection(i32* %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @TRACE(i8*, %struct.handle_table*, i32, i32**) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @is_valid_handle(%struct.handle_table*, i32, i32) #1

declare dso_local i64 @HANDLE2INDEX(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
