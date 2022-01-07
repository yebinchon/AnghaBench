; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_process.c_DosClonePsp.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_process.c_DosClonePsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i8*, i8*, i8* }

@BaseAddress = common dso_local global i64 0, align 8
@DEFAULT_JFT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosClonePsp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_6__* @SEGMENT_TO_PSP(i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_6__* @SEGMENT_TO_PSP(i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load i64, i64* @BaseAddress, align 8
  %14 = trunc i64 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8**
  store i8** %16, i8*** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = call i32 @RtlCopyMemory(%struct.TYPE_6__* %17, %struct.TYPE_6__* %18, i32 40)
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 34
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 35
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 36
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @DEFAULT_JFT_SIZE, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @MAKELONG(i32 24, i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_6__* @FAR_POINTER(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_6__* @FAR_POINTER(i32 %50)
  %52 = load i32, i32* @DEFAULT_JFT_SIZE, align 4
  %53 = call i32 @RtlCopyMemory(%struct.TYPE_6__* %47, %struct.TYPE_6__* %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_6__* @SEGMENT_TO_PSP(i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local %struct.TYPE_6__* @FAR_POINTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
