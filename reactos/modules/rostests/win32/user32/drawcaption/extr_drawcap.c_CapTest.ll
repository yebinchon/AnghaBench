; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/drawcaption/extr_drawcap.c_CapTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/drawcaption/extr_drawcap.c_CapTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i32] [i32 32, i32 124, i32 32, i32 0], align 4
@DT_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PAINT: DrawCaption failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CapTest(i32 %0, i32 %1, %struct.TYPE_5__* %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [512 x i8], align 16
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %18 = load i8*, i8** %14, align 8
  %19 = call i32 @lstrcpy(i8* %17, i8* %18)
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %21 = call i64 @lstrlen(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %25 = call i32 @lstrcat(i8* %24, i8* bitcast ([4 x i32]* @.str to i8*))
  br label %26

26:                                               ; preds = %23, %7
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @lstrcat(i8* %27, i8* %28)
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %33 = call i64 @lstrlen(i8* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = load i32, i32* @DT_LEFT, align 4
  %36 = call i32 @DrawText(i32 %30, i8* %31, i64 %33, %struct.TYPE_5__* %34, i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 20
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 20
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @DrawCaption(i32 %45, i32 %46, %struct.TYPE_5__* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %26
  %54 = call i64 (...) @GetLastError()
  %55 = trunc i64 %54 to i32
  %56 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %26
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 30
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 30
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @lstrcpy(i8*, i8*) #1

declare dso_local i64 @lstrlen(i8*) #1

declare dso_local i32 @lstrcat(i8*, i8*) #1

declare dso_local i32 @DrawText(i32, i8*, i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @DrawCaption(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
