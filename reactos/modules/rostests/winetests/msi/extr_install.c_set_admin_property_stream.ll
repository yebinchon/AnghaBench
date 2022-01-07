; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_set_admin_property_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_set_admin_property_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@STGM_DIRECT = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@set_admin_property_stream.stmname = internal constant [9 x i32] [i32 16842, i32 17200, i32 15985, i32 17589, i32 16947, i32 17909, i32 16940, i32 18486, i32 0], align 16
@set_admin_property_stream.data = internal constant [22 x i32] [i32 77, i32 89, i32 80, i32 82, i32 79, i32 80, i32 61, i32 50, i32 55, i32 49, i32 56, i32 32, i32 77, i32 121, i32 80, i32 114, i32 111, i32 112, i32 61, i32 52, i32 50, i32 0], align 16
@CP_ACP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Expected S_OK, got %d\0A\00", align 1
@STGM_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_admin_property_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_admin_property_stream(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @STGM_DIRECT, align 4
  %16 = load i32, i32* @STGM_READWRITE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @CP_ACP, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @MultiByteToWideChar(i32 %20, i32 0, i32 %21, i32 -1, i32* %14, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @StgOpenStorage(i32* %14, i32* null, i32 %24, i32* null, i32 0, i32** %3)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %59

35:                                               ; preds = %1
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @STGM_WRITE, align 4
  %38 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @IStorage_CreateStream(i32* %36, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @set_admin_property_stream.stmname, i64 0, i64 0), i32 %39, i32 0, i32 0, i32** %4)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @IStream_Write(i32* %47, i32* getelementptr inbounds ([22 x i32], [22 x i32]* @set_admin_property_stream.data, i64 0, i64 0), i32 88, i32* %8)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @IStream_Release(i32* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @IStorage_Release(i32* %57)
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %35, %34
  %60 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %63 [
    i32 0, label %62
    i32 1, label %62
  ]

62:                                               ; preds = %59, %59
  ret void

63:                                               ; preds = %59
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @StgOpenStorage(i32*, i32*, i32, i32*, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @IStorage_CreateStream(i32*, i32*, i32, i32, i32, i32**) #2

declare dso_local i64 @IStream_Write(i32*, i32*, i32, i32*) #2

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
