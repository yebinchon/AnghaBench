; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GdiGetCharDimensions.c_Test_GdiGetCharDimensions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GdiGetCharDimensions.c_Test_GdiGetCharDimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"MS Shell Dlg 2\00", align 1
@Test_GdiGetCharDimensions.alphabet = internal constant [53 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"x=%ld, x2=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"y = %ld, tm.tmHeight = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GdiGetCharDimensions() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 64, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 -11, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  store i32 400, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 13
  store i32 ptrtoint ([15 x i8]* @.str to i32), i32* %13, align 8
  %14 = call i32 @CreateFontIndirect(%struct.TYPE_9__* %1)
  store i32 %14, i32* %2, align 4
  %15 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @SelectObject(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @GdiGetCharDimensions(i32 %19, %struct.TYPE_7__* %8, i32* %6)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @GetTextExtentPointW(i32 %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @Test_GdiGetCharDimensions.alphabet, i64 0, i64 0), i32 52, %struct.TYPE_8__* %9)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 26
  %26 = add nsw i32 %25, 1
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @SelectObject(i32 %44, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @DeleteObject(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @DeleteDC(i32 %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CreateFontIndirect(%struct.TYPE_9__*) #2

declare dso_local i32 @CreateCompatibleDC(i32*) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @GdiGetCharDimensions(i32, %struct.TYPE_7__*, i32*) #2

declare dso_local i32 @GetTextExtentPointW(i32, i8*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32) #2

declare dso_local i32 @DeleteObject(i32) #2

declare dso_local i32 @DeleteDC(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
