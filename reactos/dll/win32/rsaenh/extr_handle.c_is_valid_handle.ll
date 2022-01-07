; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_is_valid_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_is_valid_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_table = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(lpTable=%p, handle=%ld)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_valid_handle(%struct.handle_table* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.handle_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.handle_table* %0, %struct.handle_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @HANDLE2INDEX(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.handle_table* %12, i32 %13)
  %15 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %16 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %15, i32 0, i32 1
  %17 = call i32 @EnterCriticalSection(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %55

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %24 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp uge i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %55

28:                                               ; preds = %21
  %29 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %30 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %55

39:                                               ; preds = %28
  %40 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %41 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %52, %38, %27, %20
  %56 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %57 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %56, i32 0, i32 1
  %58 = call i32 @LeaveCriticalSection(i32* %57)
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @HANDLE2INDEX(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.handle_table*, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
