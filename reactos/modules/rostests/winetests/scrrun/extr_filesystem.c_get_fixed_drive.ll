; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_get_fixed_drive.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_get_fixed_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fs3 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@IID_IDrive = common dso_local global i32 0, align 4
@Fixed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_fixed_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_fixed_drive() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @fs3, align 4
  %8 = call i64 @IFileSystem3_get_Drives(i32 %7, i32** %1)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @IDriveCollection_get__NewEnum(i32* %15, i32** %2)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @IDriveCollection_Release(i32* %23)
  br label %25

25:                                               ; preds = %0, %61
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @IEnumVARIANT_Next(i32* %26, i32 1, i32* %6, i32* null)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @S_FALSE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %64

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = call i32 @V_DISPATCH(i32* %6)
  %40 = bitcast i32** %3 to i8**
  %41 = call i64 @IDispatch_QueryInterface(i32 %39, i32* @IID_IDrive, i8** %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = call i32 @VariantClear(i32* %6)
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @IDrive_get_DriveType(i32* %49, i64* %5)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @Fixed, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %32
  br label %64

61:                                               ; preds = %32
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @IDrive_Release(i32* %62)
  br label %25

64:                                               ; preds = %60, %31
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @IEnumVARIANT_Release(i32* %65)
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i64 @IFileSystem3_get_Drives(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IDriveCollection_get__NewEnum(i32*, i32**) #1

declare dso_local i32 @IDriveCollection_Release(i32*) #1

declare dso_local i64 @IEnumVARIANT_Next(i32*, i32, i32*, i32*) #1

declare dso_local i64 @IDispatch_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @V_DISPATCH(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @IDrive_get_DriveType(i32*, i64*) #1

declare dso_local i32 @IDrive_Release(i32*) #1

declare dso_local i32 @IEnumVARIANT_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
