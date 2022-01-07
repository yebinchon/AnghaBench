; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_utility.c_INTERNET_SendCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_utility.c_INTERNET_SendCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 (i32, i32, i32, i8*, i32)* }

@INET_CALLBACKW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c" callback(%p) (%p (%p), %08lx, %d (%s), %s, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" end callback().\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @INTERNET_SendCallback(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %9, align 8
  store i8* %12, i8** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32 (i32, i32, i32, i8*, i32)*, i32 (i32, i32, i32, i8*, i32)** %14, align 8
  %16 = icmp ne i32 (i32, i32, i32, i8*, i32)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %86

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %86

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %51 [
    i32 130, label %24
    i32 131, label %24
    i32 132, label %24
    i32 128, label %35
    i32 129, label %35
  ]

24:                                               ; preds = %22, %22, %22
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @heap_alloc(i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %51

35:                                               ; preds = %22, %22
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @INET_CALLBACKW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = call i8* @heap_strdupW(i8* %43)
  store i8* %44, i8** %11, align 8
  br label %51

45:                                               ; preds = %35
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @heap_strdupWtoA(i8* %46)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %22, %45, %42, %34
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32 (i32, i32, i32, i8*, i32)*, i32 (i32, i32, i32, i8*, i32)** %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @get_callback_name(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @debugstr_status_info(i32 %63, i8* %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 (i32, i32, i32, i8*, i32)* %54, i32 %57, %struct.TYPE_3__* %58, i32 %59, i32 %60, i32 %62, i32 %65, i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32 (i32, i32, i32, i8*, i32)*, i32 (i32, i32, i32, i8*, i32)** %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 %70(i32 %73, i32 %74, i32 %75, i8* %76, i32 %77)
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %51
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @heap_free(i8* %84)
  br label %86

86:                                               ; preds = %17, %21, %83, %51
  ret void
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @heap_strdupW(i8*) #1

declare dso_local i8* @heap_strdupWtoA(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @get_callback_name(i32) #1

declare dso_local i32 @debugstr_status_info(i32, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
