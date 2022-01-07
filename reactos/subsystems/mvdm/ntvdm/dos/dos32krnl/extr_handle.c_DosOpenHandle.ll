; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_handle.c_DosOpenHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_handle.c_DosOpenHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"DosOpenHandle: DescriptorId 0x%02X\0A\00", align 1
@INVALID_DOS_HANDLE = common dso_local global i64 0, align 8
@Sda = common dso_local global %struct.TYPE_8__* null, align 8
@SYSTEM_PSP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DosOpenHandle(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_7__* @DosGetFileDescriptor(i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %7, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @INVALID_DOS_HANDLE, align 8
  store i64 %15, i64* %2, align 8
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SYSTEM_PSP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @INVALID_DOS_HANDLE, align 8
  store i64 %23, i64* %2, align 8
  br label %69

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.TYPE_6__* @SEGMENT_TO_PSP(i64 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @FAR_POINTER(i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %6, align 8
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %48, %24
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 255
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %34

51:                                               ; preds = %46, %34
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @INVALID_DOS_HANDLE, align 8
  store i64 %58, i64* %2, align 8
  br label %69

59:                                               ; preds = %51
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i64, i64* %4, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %59, %57, %22, %14
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local %struct.TYPE_7__* @DosGetFileDescriptor(i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @SEGMENT_TO_PSP(i64) #1

declare dso_local i64 @FAR_POINTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
