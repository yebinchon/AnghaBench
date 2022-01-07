; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_Test_GetFontResourceInfoW_case1.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_Test_GetFontResourceInfoW_case1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@Test_GetFontResourceInfoW_case1.Data = internal global [256 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [33 x i8] c"Size expected non-zero but zero\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i32] [i32 65, i32 66, i32 67, i32 0, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 65, i32 66, i32 67, i32 0], align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"data mismatched: \22%S\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"data mismatched: \22%S\22 and \22%S\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @Test_GetFontResourceInfoW_case1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_GetFontResourceInfoW_case1(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @GetFontResourceInfoW(i32 %8, i32* %6, i32* null, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ok_int(i32 %11, i32 1)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1024, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @GetFontResourceInfoW(i32 %17, i32* %6, i32* null, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ok_int(i32 %20, i32 0)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ok_int(i32 %22, i32 1024)
  store i32 0, i32* %6, align 4
  %24 = call i32 @CopyMemory(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0), i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 20)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @GetFontResourceInfoW(i32 %25, i32* %6, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ok_int(i32 %28, i32 1)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = call i64 @lstrcmpiW(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0), i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0))
  store i32 1024, i32* %6, align 4
  %38 = call i32 @CopyMemory(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0), i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 20)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @GetFontResourceInfoW(i32 %39, i32* %6, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ok_int(i32 %42, i32 1)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @SzFromMultiSz(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0))
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @lstrcmpiW(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0), i8* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Test_GetFontResourceInfoW_case1.Data, i64 0, i64 0), i8* %57)
  ret void
}

declare dso_local i32 @GetFontResourceInfoW(i32, i32*, i32*, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @CopyMemory(i32*, i8*, i32) #1

declare dso_local i64 @lstrcmpiW(i32*, i8*) #1

declare dso_local i32 @SzFromMultiSz(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
