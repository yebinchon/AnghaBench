; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/atomtest/extr_atomtest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/atomtest/extr_atomtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Atom table test app\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"RtlCreateAtomTable()\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  Status 0x%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"  AtomTable %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"RtlAddAtomToAtomTable()\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i32] [i32 84, i32 101, i32 115, i32 116, i32 65, i32 116, i32 111, i32 109, i32 65, i32 0], align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"  AtomA 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i32] [i32 84, i32 101, i32 115, i32 116, i32 65, i32 116, i32 111, i32 109, i32 66, i32 0], align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"  AtomB 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"RtlLookupAtomInAtomTable()\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"  AtomC 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"RtlPinAtomInAtomTable()\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"RtlQueryAtomInAtomTable()\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"  RefCount %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"  PinCount %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"  NameLength %lu\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"  AtomName: %S\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"RtlDestroyAtomTable()\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Atom table test app finished\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %16 = load i32, i32* @BUFFER_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @RtlCreateAtomTable(i32 37, i32** %6)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @NT_SUCCESS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %2
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @RtlAddAtomToAtomTable(i32* %32, i8* bitcast ([10 x i32]* @.str.5 to i8*), i32* %7)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @NT_SUCCESS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %28
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @RtlAddAtomToAtomTable(i32* %44, i8* bitcast ([10 x i32]* @.str.7 to i8*), i32* %8)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @NT_SUCCESS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %42
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @RtlLookupAtomInAtomTable(i32* %56, i8* bitcast ([10 x i32]* @.str.5 to i8*), i32* %9)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %54
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @RtlPinAtomInAtomTable(i32* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @RtlPinAtomInAtomTable(i32* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %80 = load i32, i32* @BUFFER_SIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @RtlQueryAtomInAtomTable(i32* %84, i32 %85, i32* %14, i32* %15, i32* %19, i32* %13)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @NT_SUCCESS(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %66
  %93 = load i32, i32* %14, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %97)
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32* %19)
  br label %100

100:                                              ; preds = %92, %66
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @RtlDestroyAtomTable(i32* %102)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %2
  store i32 0, i32* %3, align 4
  %106 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @RtlCreateAtomTable(i32, i32**) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @RtlAddAtomToAtomTable(i32*, i8*, i32*) #2

declare dso_local i32 @RtlLookupAtomInAtomTable(i32*, i8*, i32*) #2

declare dso_local i32 @RtlPinAtomInAtomTable(i32*, i32) #2

declare dso_local i32 @RtlQueryAtomInAtomTable(i32*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @RtlDestroyAtomTable(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
