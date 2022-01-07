; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/mkhive/extr_reginf.c_ImportRegistryFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/mkhive/extr_reginf.c_ImportRegistryFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"InfHostOpenFile(%s) failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DelReg = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"registry_callback() for DelReg failed\0A\00", align 1
@AddReg = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"registry_callback() for AddReg failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ImportRegistryFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @InfHostOpenFile(i32* %4, i32 %6, i32 0, i32* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i64, i64* @DelReg, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @registry_callback(i32 %14, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @InfHostCloseFile(i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = load i64, i64* @AddReg, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @registry_callback(i32 %26, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @InfHostCloseFile(i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @InfHostCloseFile(i32 %38)
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %32, %20, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @InfHostOpenFile(i32*, i32, i32, i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @registry_callback(i32, i32, i32) #1

declare dso_local i32 @InfHostCloseFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
