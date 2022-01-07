; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SelectObject.c_Test_Bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SelectObject.c_Test_Bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"couldn't create bitmaps, skipping\0A\00", align 1
@hdc1 = common dso_local global i32 0, align 4
@GDI_OBJECT_TYPE_BITMAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"wrong type\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"should fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"didn't get the right bitmap back.\0A\00", align 1
@hdc2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Should fail.\0A\00", align 1
@DEFAULT_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_Bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_Bitmap() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 16, i1 false)
  %7 = bitcast [4 x i32]* %4 to i32**
  %8 = call i32* @CreateBitmap(i32 2, i32 2, i32 1, i32 1, i32** %7)
  store i32* %8, i32** %1, align 8
  %9 = bitcast [4 x i32]* %4 to i32**
  %10 = call i32* @CreateBitmap(i32 2, i32 2, i32 1, i32 4, i32** %9)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %0
  %17 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %88

18:                                               ; preds = %13
  %19 = load i32, i32* @hdc1, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @SelectObject(i32 %19, i32* %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @GDI_HANDLE_GET_TYPE(i32* %22)
  %24 = load i64, i64* @GDI_OBJECT_TYPE_BITMAP, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @hdc1, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = call i32* @SelectObject(i32 %28, i32* %29)
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @hdc1, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @SelectObject(i32 %34, i32* %35)
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = icmp eq i32* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @hdc1, align 4
  %43 = load i32*, i32** %1, align 8
  %44 = call i32* @SelectObject(i32 %42, i32* %43)
  store i32* %44, i32** %3, align 8
  %45 = load i32, i32* @hdc2, align 4
  %46 = load i32*, i32** %1, align 8
  %47 = call i32* @SelectObject(i32 %45, i32* %46)
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @hdc1, align 4
  %52 = load i32*, i32** %1, align 8
  %53 = call i32* @SelectObject(i32 %51, i32* %52)
  store i32* %53, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = icmp eq i32* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @hdc1, align 4
  %60 = load i32, i32* @DEFAULT_BITMAP, align 4
  %61 = call i32* @GetStockObject(i32 %60)
  %62 = call i32* @SelectObject(i32 %59, i32* %61)
  %63 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32*, i32** %1, align 8
  %66 = call i32* @SelectObject(i32 %64, i32* %65)
  store i32* %66, i32** %3, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @DEFAULT_BITMAP, align 4
  %69 = call i32* @GetStockObject(i32 %68)
  %70 = icmp eq i32* %67, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DeleteDC(i32 %73)
  %75 = load i32, i32* @hdc1, align 4
  %76 = load i32*, i32** %1, align 8
  %77 = call i32* @SelectObject(i32 %75, i32* %76)
  store i32* %77, i32** %3, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* @DEFAULT_BITMAP, align 4
  %80 = call i32* @GetStockObject(i32 %79)
  %81 = icmp eq i32* %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @DeleteObject(i32* %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @DeleteObject(i32* %86)
  br label %88

88:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @CreateBitmap(i32, i32, i32, i32, i32**) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32* @SelectObject(i32, i32*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i64 @GDI_HANDLE_GET_TYPE(i32*) #2

declare dso_local i32* @GetStockObject(i32) #2

declare dso_local i32 @CreateCompatibleDC(i32*) #2

declare dso_local i32 @DeleteDC(i32) #2

declare dso_local i32 @DeleteObject(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
