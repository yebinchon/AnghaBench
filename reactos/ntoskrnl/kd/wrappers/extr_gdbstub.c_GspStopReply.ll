; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspStopReply.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspStopReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GspOutBuffer = common dso_local global i8* null, align 8
@HexChars = common dso_local global i8** null, align 8
@ESP = common dso_local global i64 0, align 8
@EBP = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @GspStopReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspStopReply(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load i8*, i8** @GspOutBuffer, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %15 [
    i32 131, label %10
    i32 129, label %11
    i32 134, label %11
    i32 130, label %12
    i32 135, label %12
    i32 132, label %13
    i32 128, label %14
    i32 133, label %14
    i32 136, label %14
  ]

10:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  br label %16

11:                                               ; preds = %2, %2
  store i32 5, i32* %6, align 4
  br label %16

12:                                               ; preds = %2, %2
  store i32 16, i32* %6, align 4
  br label %16

13:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %16

14:                                               ; preds = %2, %2, %2
  store i32 11, i32* %6, align 4
  br label %16

15:                                               ; preds = %2
  store i32 7, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10
  %17 = load i8*, i8** @GspOutBuffer, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  store i8 84, i8* %18, align 1
  %20 = load i8**, i8*** @HexChars, align 8
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %20, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 %27, i8* %28, align 1
  %30 = load i8**, i8*** @HexChars, align 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 15
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i8**, i8*** @HexChars, align 8
  %40 = load i64, i64* @ESP, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  store i8 58, i8* %46, align 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = call i32 @GspGetEspFromTrapFrame(%struct.TYPE_4__* %48)
  store i32 %49, i32* %7, align 4
  %50 = bitcast i32* %7 to i8*
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @GspMem2Hex(i8* %50, i8* %51, i32 4, i32 0)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  store i8 59, i8* %53, align 1
  %55 = load i8**, i8*** @HexChars, align 8
  %56 = load i64, i64* @EBP, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  store i8 58, i8* %62, align 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = bitcast i32* %65 to i8*
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* @GspMem2Hex(i8* %66, i8* %67, i32 4, i32 0)
  store i8* %68, i8** %5, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  store i8 59, i8* %69, align 1
  %71 = load i8**, i8*** @HexChars, align 8
  %72 = load i64, i64* @PC, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %74 to i8
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  store i8 58, i8* %78, align 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = bitcast i32* %81 to i8*
  %83 = load i8*, i8** %5, align 8
  %84 = call i8* @GspMem2Hex(i8* %82, i8* %83, i32 4, i32 0)
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  store i8 59, i8* %85, align 1
  %87 = load i8*, i8** %5, align 8
  store i8 0, i8* %87, align 1
  ret void
}

declare dso_local i32 @GspGetEspFromTrapFrame(%struct.TYPE_4__*) #1

declare dso_local i8* @GspMem2Hex(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
