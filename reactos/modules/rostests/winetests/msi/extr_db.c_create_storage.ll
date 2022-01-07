; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_create_storage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_create_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_DIRECT = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"stgdata\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @create_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_storage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @CP_ACP, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = call i32 @MultiByteToWideChar(i32 %17, i32 0, i32 %18, i32 -1, i32* %15, i32 %19)
  %21 = load i32, i32* @STGM_CREATE, align 4
  %22 = load i32, i32* @STGM_READWRITE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @STGM_DIRECT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @StgCreateDocfile(i32* %15, i32 %27, i32 0, i32** %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %59

34:                                               ; preds = %1
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @STGM_WRITE, align 4
  %37 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @IStorage_CreateStream(i32* %35, i32* %15, i32 %38, i32 0, i32 0, i32** %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %53

44:                                               ; preds = %34
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @IStream_Write(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8, i32* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @SUCCEEDED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @IStream_Release(i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @IStorage_Release(i32* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %53, %32
  %60 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @StgCreateDocfile(i32*, i32, i32, i32**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IStorage_CreateStream(i32*, i32*, i32, i32, i32, i32**) #2

declare dso_local i32 @IStream_Write(i32*, i8*, i32, i32*) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @IStream_Release(i32*) #2

declare dso_local i32 @IStorage_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
