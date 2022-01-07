; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_ConvertTokenToModule.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_ConvertTokenToModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@DEBUG_MODULE_NAME_LEN = common dso_local global i32 0, align 4
@apSymbols = common dso_local global %struct.TYPE_3__** null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertTokenToModule(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %10 = load i32, i32* @DEBUG_MODULE_NAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %46, %2
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apSymbols, align 8
  %17 = call i64 @DIM(%struct.TYPE_3__** %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apSymbols, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apSymbols, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CopyWideToAnsi(i8* %13, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @PICE_strcmpi(i32 %33, i8* %13)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apSymbols, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = ptrtoint %struct.TYPE_3__* %40 to i64
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %89

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %19
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %14

49:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apSymbols, align 8
  %53 = call i64 @DIM(%struct.TYPE_3__** %52)
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apSymbols, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apSymbols, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %62, i64 %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CopyWideToAnsi(i8* %13, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @PICE_strlen(i32 %70)
  %72 = call i64 @PICE_strncmpi(i8* %13, i32 %69, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %61
  %75 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apSymbols, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %75, i64 %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = ptrtoint %struct.TYPE_3__* %78 to i64
  %80 = load i64*, i64** %5, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %89

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %6, align 8
  br label %50

87:                                               ; preds = %50
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %74, %36
  %90 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @DIM(%struct.TYPE_3__**) #2

declare dso_local i32 @CopyWideToAnsi(i8*, i32) #2

declare dso_local i64 @PICE_strcmpi(i32, i8*) #2

declare dso_local i64 @PICE_strncmpi(i8*, i32, i32) #2

declare dso_local i32 @PICE_strlen(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
