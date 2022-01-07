; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dos.c_DosChangeDrive.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dos.c_DosChangeDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8 }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i8 }

@DOS_CMDLINE_LENGTH = common dso_local global i32 0, align 4
@SysVars = common dso_local global %struct.TYPE_4__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%c:\\%s\00", align 1
@DosData = common dso_local global %struct.TYPE_6__* null, align 8
@Sda = common dso_local global %struct.TYPE_5__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @DosChangeDrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DosChangeDrive(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %7 = load i32, i32* @DOS_CMDLINE_LENGTH, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SysVars, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %47

21:                                               ; preds = %1
  %22 = mul nuw i64 4, %9
  %23 = trunc i64 %22 to i32
  %24 = call i32 @RtlZeroMemory(i32* %11, i32 %23)
  %25 = load i32, i32* @DOS_CMDLINE_LENGTH, align 4
  %26 = load i8, i8* %3, align 1
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 65, %27
  %29 = trunc i32 %28 to i8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DosData, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i8, i8* %3, align 1
  %34 = sext i8 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i32* %11, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %29, i8* %36)
  %38 = call i32 @SetCurrentDirectoryA(i32* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %21
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %47

42:                                               ; preds = %21
  %43 = load i8, i8* %3, align 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %40, %19
  %48 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #2

declare dso_local i32 @snprintf(i32*, i32, i8*, i8 signext, i8*) #2

declare dso_local i32 @SetCurrentDirectoryA(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
