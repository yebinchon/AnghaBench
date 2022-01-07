; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_display.c_RegWriteDisplaySettings.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_display.c_RegWriteDisplaySettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 66, i32 105, i32 116, i32 115, i32 80, i32 101, i32 114, i32 80, i32 101, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [28 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 88, i32 82, i32 101, i32 115, i32 111, i32 108, i32 117, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.2 = private unnamed_addr constant [28 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 89, i32 82, i32 101, i32 115, i32 111, i32 108, i32 117, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.3 = private unnamed_addr constant [22 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 70, i32 108, i32 97, i32 103, i32 115, i32 0], align 4
@.str.4 = private unnamed_addr constant [25 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 86, i32 82, i32 101, i32 102, i32 114, i32 101, i32 115, i32 104, i32 0], align 4
@.str.5 = private unnamed_addr constant [25 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 88, i32 80, i32 97, i32 110, i32 110, i32 105, i32 110, i32 103, i32 0], align 4
@.str.6 = private unnamed_addr constant [25 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 89, i32 80, i32 97, i32 110, i32 110, i32 105, i32 110, i32 103, i32 0], align 4
@.str.7 = private unnamed_addr constant [28 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 79, i32 114, i32 105, i32 101, i32 110, i32 116, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.8 = private unnamed_addr constant [28 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 46, i32 70, i32 105, i32 120, i32 101, i32 100, i32 79, i32 117, i32 116, i32 112, i32 117, i32 116, i32 0], align 4
@.str.9 = private unnamed_addr constant [17 x i32] [i32 65, i32 116, i32 116, i32 97, i32 99, i32 104, i32 46, i32 82, i32 101, i32 108, i32 97, i32 116, i32 105, i32 118, i32 101, i32 88, i32 0], align 4
@.str.10 = private unnamed_addr constant [17 x i32] [i32 65, i32 116, i32 116, i32 97, i32 99, i32 104, i32 46, i32 82, i32 101, i32 108, i32 97, i32 116, i32 105, i32 118, i32 101, i32 89, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RegWriteDisplaySettings(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @RegWriteDWORD(i32 %6, i8* bitcast ([27 x i32]* @.str to i8*), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @RegWriteDWORD(i32 %11, i8* bitcast ([28 x i32]* @.str.1 to i8*), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @RegWriteDWORD(i32 %16, i8* bitcast ([28 x i32]* @.str.2 to i8*), i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @RegWriteDWORD(i32 %21, i8* bitcast ([22 x i32]* @.str.3 to i8*), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RegWriteDWORD(i32 %26, i8* bitcast ([25 x i32]* @.str.4 to i8*), i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @RegWriteDWORD(i32 %31, i8* bitcast ([25 x i32]* @.str.5 to i8*), i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @RegWriteDWORD(i32 %36, i8* bitcast ([25 x i32]* @.str.6 to i8*), i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @RegWriteDWORD(i32 %41, i8* bitcast ([28 x i32]* @.str.7 to i8*), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @RegWriteDWORD(i32 %46, i8* bitcast ([28 x i32]* @.str.8 to i8*), i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @RegWriteDWORD(i32 %51, i8* bitcast ([17 x i32]* @.str.9 to i8*), i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @RegWriteDWORD(i32 %57, i8* bitcast ([17 x i32]* @.str.10 to i8*), i32 %61)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @RegWriteDWORD(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
