; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmenum.c_enum_gac_assemblies.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmenum.c_enum_gac_assemblies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_4__ = type { i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list*, i8*)* @enum_gac_assemblies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_gac_assemblies(%struct.list* %0, i8* %1) #0 {
  %3 = alloca %struct.list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.list* %0, %struct.list** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8*, i8** %7, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @lstrcpynA(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @FindFirstFileA(i8* %26, %struct.TYPE_4__* %5)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %72

32:                                               ; preds = %2
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %65, %32
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %35
  br label %65

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8*, i8** %7, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @lstrcpynA(i8* %47, i8* %49, i32 %58)
  %60 = load %struct.list*, %struct.list** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @enum_gac_assembly_dirs(%struct.list* %60, i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %46, %45
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @FindNextFileA(i64 %66, %struct.TYPE_4__* %5)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %35, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @FindClose(i64 %70)
  br label %72

72:                                               ; preds = %69, %31
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lstrcpynA(i8*, i8*, i32) #1

declare dso_local i64 @FindFirstFileA(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @enum_gac_assembly_dirs(%struct.list*, i8*, i8*) #1

declare dso_local i64 @FindNextFileA(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @FindClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
