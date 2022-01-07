; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ainfo.c_SetAddressFileInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ainfo.c_SetAddressFileInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i32 }

@TDI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TDI_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unimplemented option %x\0A\00", align 1
@TDI_INVALID_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetAddressFileInfo(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %90 [
    i32 128, label %14
    i32 130, label %33
    i32 131, label %52
    i32 129, label %71
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %19, i32* %5, align 4
  br label %96

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = call i32 @LockObject(%struct.TYPE_8__* %21, i32* %10)
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @UnlockObject(%struct.TYPE_8__* %29, i32 %30)
  %32 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %32, i32* %5, align 4
  br label %96

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %38, i32* %5, align 4
  br label %96

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = call i32 @LockObject(%struct.TYPE_8__* %40, i32* %10)
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @UnlockObject(%struct.TYPE_8__* %48, i32 %49)
  %51 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %51, i32* %5, align 4
  br label %96

52:                                               ; preds = %4
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %57, i32* %5, align 4
  br label %96

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = call i32 @LockObject(%struct.TYPE_8__* %59, i32* %10)
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8**
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @UnlockObject(%struct.TYPE_8__* %67, i32 %68)
  %70 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %70, i32* %5, align 4
  br label %96

71:                                               ; preds = %4
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 4
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %76, i32* %5, align 4
  br label %96

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = call i32 @LockObject(%struct.TYPE_8__* %78, i32* %10)
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8**
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @UnlockObject(%struct.TYPE_8__* %86, i32 %87)
  %89 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %89, i32* %5, align 4
  br label %96

90:                                               ; preds = %4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @DbgPrint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %90, %77, %75, %58, %56, %39, %37, %20, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @LockObject(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DbgPrint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
