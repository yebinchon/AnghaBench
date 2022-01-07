; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_msctf.c_generate_Cookie.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_msctf.c_generate_Cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@id_last = common dso_local global i64 0, align 8
@cookies = common dso_local global %struct.TYPE_6__* null, align 8
@array_size = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Out of memory, Unable to alloc cookies array\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Out of memory, Unable to realloc cookies array\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generate_Cookie(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @id_last, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookies, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %8

24:                                               ; preds = %19, %8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @array_size, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i64, i64* @array_size, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %34 = call %struct.TYPE_6__* @HeapAlloc(i32 %32, i32 %33, i32 240)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** @cookies, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookies, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %87

39:                                               ; preds = %31
  store i64 10, i64* @array_size, align 8
  br label %57

40:                                               ; preds = %28
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookies, align 8
  %44 = load i64, i64* @array_size, align 8
  %45 = mul i64 %44, 2
  %46 = mul i64 24, %45
  %47 = trunc i64 %46 to i32
  %48 = call %struct.TYPE_6__* @HeapReAlloc(i32 %41, i32 %42, %struct.TYPE_6__* %43, i32 %47)
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %7, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  %52 = call i32 @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %87

53:                                               ; preds = %40
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** @cookies, align 8
  %55 = load i64, i64* @array_size, align 8
  %56 = mul i64 %55, 2
  store i64 %56, i64* @array_size, align 8
  br label %57

57:                                               ; preds = %53, %39
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookies, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %60, i64* %64, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookies, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i64 %65, i64* %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookies, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @id_last, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %58
  %79 = load i64, i64* @id_last, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* @id_last, align 8
  br label %81

81:                                               ; preds = %78, %58
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cookies, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %81, %51, %37
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.TYPE_6__* @HeapReAlloc(i32, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
