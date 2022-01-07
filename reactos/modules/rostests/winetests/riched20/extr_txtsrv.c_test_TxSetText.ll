; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_txtsrv.c_test_TxSetText.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_txtsrv.c_test_TxSetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_TxSetText.settext = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ITextServices_TxSetText failed (result = %x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ITextServices_TxGetText failed (result = %x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"String returned of wrong length (expected 4, got %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"String returned differs\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"String returned of wrong length (expected 0, got %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TxSetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TxSetText() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x i8], align 1
  %6 = bitcast [5 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_TxSetText.settext, i32 0, i32 0), i64 5, i1 false)
  %7 = call i32 @init_texthost(i32** %1, i32** %2)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %72

10:                                               ; preds = %0
  %11 = load i32*, i32** %1, align 8
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %13 = call i32 @ITextServices_TxSetText(i32* %11, i8* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @ITextServices_TxGetText(i32* %20, i32* %4)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @SysStringLen(i32 %28)
  %30 = icmp eq i32 %29, 4
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @SysStringLen(i32 %32)
  %34 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SysStringByteLen(i32 %37)
  %39 = call i64 @memcmp(i32 %35, i8* %36, i32 %38)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @ITextServices_TxSetText(i32* %43, i8* null)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @ITextServices_TxGetText(i32* %51, i32* %4)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @S_OK, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @SysStringLen(i32 %59)
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @SysStringLen(i32 %63)
  %65 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @SysFreeString(i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @ITextServices_Release(i32* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @ITextHost_Release(i32* %70)
  br label %72

72:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @init_texthost(i32**, i32**) #2

declare dso_local i32 @ITextServices_TxSetText(i32*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @ITextServices_TxGetText(i32*, i32*) #2

declare dso_local i32 @SysStringLen(i32) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @SysStringByteLen(i32) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @ITextServices_Release(i32*) #2

declare dso_local i32 @ITextHost_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
