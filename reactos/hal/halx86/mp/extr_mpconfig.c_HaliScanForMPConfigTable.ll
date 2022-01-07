; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliScanForMPConfigTable.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliScanForMPConfigTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@MPF_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Found MPF signature at %x, checksum %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Intel MultiProcessor Specification v1.%d compliant system.\0A\00", align 1
@FEATURE2_IMCRP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Running in IMCR and PIC compatibility mode.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Running in Virtual Wire compatibility mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ISA\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"EISA with no IRQ8 chaining\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"EISA\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"MCA\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"ISA and PCI\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"EISA and PCI\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"MCA and PCI\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Unknown standard configuration %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@Mpf = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @HaliScanForMPConfigTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HaliScanForMPConfigTable(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %79, %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %84

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MPF_SIGNATURE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %13
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @MPChecksum(i32 %23, i32 16)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %21
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %78

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FEATURE2_IMCRP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %50

48:                                               ; preds = %35
  %49 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %46
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %69 [
    i32 0, label %54
    i32 1, label %55
    i32 2, label %57
    i32 3, label %59
    i32 4, label %61
    i32 5, label %63
    i32 6, label %65
    i32 7, label %67
  ]

54:                                               ; preds = %50
  br label %75

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %75

57:                                               ; preds = %50
  %58 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %75

59:                                               ; preds = %50
  %60 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %75

61:                                               ; preds = %50
  %62 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %75

63:                                               ; preds = %50
  %64 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %75

65:                                               ; preds = %50
  %66 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %75

67:                                               ; preds = %50
  %68 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %75

69:                                               ; preds = %50
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %86

75:                                               ; preds = %67, %65, %63, %61, %59, %57, %55, %54
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** @Mpf, align 8
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %3, align 4
  br label %86

78:                                               ; preds = %30, %21
  br label %79

79:                                               ; preds = %78, %13
  %80 = load i64, i64* %6, align 8
  %81 = add nsw i64 %80, 4
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %5, align 8
  %83 = sub nsw i64 %82, 16
  store i64 %83, i64* %5, align 8
  br label %10

84:                                               ; preds = %10
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %75, %69
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @MPChecksum(i32, i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
