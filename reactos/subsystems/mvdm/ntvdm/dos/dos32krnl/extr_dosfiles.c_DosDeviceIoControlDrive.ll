; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosDeviceIoControlDrive.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosDeviceIoControlDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8* }

@__const.DosDeviceIoControlDrive.RootPath = private unnamed_addr constant [4 x i8] c"?:\\\00", align 1
@Sda = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"UNIMPLEMENTED INT 21h, 4404h, Read from block device %s\0A\00", align 1
@ERROR_INVALID_FUNCTION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"UNIMPLEMENTED INT 21h, 4405h, Write block device control string %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"INT 21h, 4408h, %s -> DriveType = 0x%x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"UNIMPLEMENTED INT 21h, 4409h, Determine if a logical device is local or remote %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosDeviceIoControlDrive(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.DosDeviceIoControlDrive.RootPath, i32 0, i32 0), i64 4, i1 false)
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Sda, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 65, %19
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  br label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 65, %24
  %26 = sub nsw i32 %25, 1
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 %27, i8* %28, align 1
  br label %29

29:                                               ; preds = %23, %15
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %73 [
    i32 4, label %31
    i32 5, label %37
    i32 8, label %43
    i32 9, label %66
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %33 = call i32 (i8*, i8*, ...) @DPRINT1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** @ERROR_INVALID_FUNCTION, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Sda, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %75

37:                                               ; preds = %29
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %39 = call i32 (i8*, i8*, ...) @DPRINT1(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** @ERROR_INVALID_FUNCTION, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Sda, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %75

43:                                               ; preds = %29
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %45 = call i32 @GetDriveTypeA(i8* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  switch i32 %46, label %48 [
    i32 128, label %47
    i32 132, label %47
    i32 129, label %54
    i32 134, label %54
    i32 133, label %57
    i32 130, label %60
    i32 131, label %60
  ]

47:                                               ; preds = %43, %43
  br label %48

48:                                               ; preds = %43, %47
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i8*, i8*, ...) @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i32*, i32** %9, align 8
  store i32 15, i32* %52, align 4
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %5, align 4
  br label %77

54:                                               ; preds = %43, %43
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %5, align 4
  br label %77

57:                                               ; preds = %43
  %58 = load i32*, i32** %9, align 8
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %5, align 4
  br label %77

60:                                               ; preds = %43, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** @ERROR_INVALID_FUNCTION, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Sda, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %5, align 4
  br label %77

66:                                               ; preds = %29
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %68 = call i32 (i8*, i8*, ...) @DPRINT1(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** @ERROR_INVALID_FUNCTION, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Sda, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %29
  %74 = call i32 @assert(i32 0)
  br label %75

75:                                               ; preds = %73, %37, %31
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %66, %61, %57, %54, %48
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DPRINT1(i8*, i8*, ...) #2

declare dso_local i32 @GetDriveTypeA(i8*) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
