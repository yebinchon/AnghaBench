; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_appendfile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_appendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcFile = type { i32 }
%struct.stat = type { i64 }

@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"open %s\0A\00", align 1
@CHMC_NOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chmc_appendfile(%struct.chmcFile* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.chmcFile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.chmcFile* %0, %struct.chmcFile** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %10)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = load i32, i32* @O_BINARY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @open(i8* %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %59, %28
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %11, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @read(i32 %42, i8* %43, i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.chmcFile*, %struct.chmcFile** %6, align 8
  %50 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @write(i32 %51, i8* %52, i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %12, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %48, %41
  br label %31

60:                                               ; preds = %31
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @close(i32 %61)
  br label %66

63:                                               ; preds = %20
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @BUG_ON(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @CHMC_NOERR, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @BUG_ON(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
