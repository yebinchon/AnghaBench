; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_crypt.c_WINTRUST_GetSignedMsgFromCatFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_crypt.c_WINTRUST_GetSignedMsgFromCatFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%p %p %d %p %p)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i64 0, align 8
@PKCS_7_ASN_ENCODING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64*, i64, i64*, i32*)* @WINTRUST_GetSignedMsgFromCatFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WINTRUST_GetSignedMsgFromCatFile(%struct.TYPE_4__* %0, i64* %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %13, i64* %14, i64 %15, i64* %16, i32* %17)
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @GetFileSize(i32 %24, i32* null)
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %11, align 4
  br label %60

28:                                               ; preds = %5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @GetFileSize(i32 %31, i32* null)
  store i64 %32, i64* %12, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i64, i64* %12, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %41 = call i32 @SetLastError(i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %11, align 4
  br label %59

43:                                               ; preds = %28
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 @ReadFile(i32 %46, i32* %47, i64 %48, i64* %49, i32* null)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i64, i64* @X509_ASN_ENCODING, align 8
  %55 = load i64, i64* @PKCS_7_ASN_ENCODING, align 8
  %56 = or i64 %54, %55
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %43
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i64*, i64, i64*, i32*) #1

declare dso_local i64 @GetFileSize(i32, i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ReadFile(i32, i32*, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
