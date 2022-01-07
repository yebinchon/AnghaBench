; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_filemodeT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_filemodeT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_filemodeT.DATA = private unnamed_addr constant [5 x i8] c"\1Atest", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"w+bDT\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"fopen file mode 'T' wrongly interpreted as 't'\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"file wasn't deleted when closed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_filemodeT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filemodeT() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca [100 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_filemodeT.DATA, i32 0, i32 0), i64 5, i1 false)
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = call i32 @GetTempPathA(i32 %19, i8* %15)
  %21 = call i32 @GetTempFileNameA(i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* %18)
  %22 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %6, align 8
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @fwrite(i8* %23, i32 1, i32 5, i32* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @rewind(i32* %26)
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @fread(i8* %28, i32 1, i32 100, i32* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %0
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 5
  br label %39

39:                                               ; preds = %36, %0
  %40 = phi i1 [ false, %0 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i64 @FindFirstFileA(i8* %18, i32* %9)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @FindClose(i64 %53)
  br label %55

55:                                               ; preds = %52, %39
  %56 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetTempPathA(i32, i8*) #3

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #3

declare dso_local i32* @fopen(i8*, i8*) #3

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #3

declare dso_local i32 @rewind(i32*) #3

declare dso_local i64 @fread(i8*, i32, i32, i32*) #3

declare dso_local i32 @fclose(i32*) #3

declare dso_local i32 @ok(i32, i8*) #3

declare dso_local i64 @FindFirstFileA(i8*, i32*) #3

declare dso_local i32 @FindClose(i64) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
