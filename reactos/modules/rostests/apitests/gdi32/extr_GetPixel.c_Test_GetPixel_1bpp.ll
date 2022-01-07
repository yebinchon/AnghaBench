; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetPixel.c_Test_GetPixel_1bpp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetPixel.c_Test_GetPixel_1bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.Test_GetPixel_1bpp.buffer = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str = private unnamed_addr constant [40 x i8] c"Failed to create a monochrom bitmap...\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not select the bitmap into the DC.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Wrong color at 0,0 : 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Wrong color at 1,0 : 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GetPixel_1bpp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca i32, align 4
  %5 = bitcast [2 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.Test_GetPixel_1bpp.buffer, i32 0, i32 0), i64 2, i1 false)
  %6 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %7 = call i32* @CreateBitmap(i32 2, i32 1, i32 1, i32 1, i8* %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @SelectObject(i32 %13, i32* %14)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @GetPixel(i32 %20, i32 0, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 16777215
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @GetPixel(i32 %27, i32 1, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @SetBkColor(i32 %34, i32 255)
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @SetTextColor(i32 %36, i32 65280)
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @GetPixel(i32 %38, i32 0, i32 0)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 16777215
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @GetPixel(i32 %45, i32 1, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @SetBkColor(i32 %52, i32 305419896)
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @SetTextColor(i32 %54, i32 -2023406815)
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @GetPixel(i32 %56, i32 0, i32 0)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 16777215
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @GetPixel(i32 %63, i32 1, i32 0)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %1, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = call i32* @SelectObject(i32 %70, i32* %71)
  store i32* %72, i32** %2, align 8
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @DeleteObject(i32* %73)
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @DeleteDC(i32 %75)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @CreateBitmap(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @CreateCompatibleDC(i32) #2

declare dso_local i32* @SelectObject(i32, i32*) #2

declare dso_local i32 @GetPixel(i32, i32, i32) #2

declare dso_local i32 @SetBkColor(i32, i32) #2

declare dso_local i32 @SetTextColor(i32, i32) #2

declare dso_local i32 @DeleteObject(i32*) #2

declare dso_local i32 @DeleteDC(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
