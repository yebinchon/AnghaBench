; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_get_handle_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_get_handle_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@WININET_cs = common dso_local global i32 0, align 4
@handle_table_size = common dso_local global i64 0, align 8
@handle_table = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"handle %ld -> %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_handle_object(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %4, align 8
  %7 = call i32 @EnterCriticalSection(i32* @WININET_cs)
  %8 = load i64, i64* %4, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @handle_table_size, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @handle_table, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @handle_table, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @handle_table, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32* @WININET_AddRef(%struct.TYPE_3__* %32)
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %28, %20, %14, %10, %1
  %35 = call i32 @LeaveCriticalSection(i32* @WININET_cs)
  %36 = load i64, i64* %4, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %36, i32* %37)
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32* @WININET_AddRef(%struct.TYPE_3__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
