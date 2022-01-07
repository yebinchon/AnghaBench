; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_get_assembly_name_attribute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_get_assembly_name_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly_name = type { i64, i32* }

@get_assembly_name_attribute.fmtW = internal constant [8 x i8] c"%s=\22%s\22\00", align 1
@get_assembly_name_attribute.nameW = internal constant [5 x i8] c"name\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.assembly_name*)* @get_assembly_name_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_assembly_name_attribute(i32* %0, %struct.assembly_name* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.assembly_name*, align 8
  %6 = alloca %struct.assembly_name*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.assembly_name* %1, %struct.assembly_name** %5, align 8
  %10 = load %struct.assembly_name*, %struct.assembly_name** %5, align 8
  store %struct.assembly_name* %10, %struct.assembly_name** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @MSI_RecordGetString(i32* %11, i32 2)
  store i8* %12, i8** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @MSI_RecordGetString(i32* %13, i32 3)
  store i8* %14, i8** %8, align 8
  %15 = call i32 @strlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_assembly_name_attribute.fmtW, i64 0, i64 0))
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlenW(i8* %16)
  %18 = add nsw i32 %15, %17
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strlenW(i8* %19)
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call i32 @msi_alloc(i32 %25)
  %27 = load %struct.assembly_name*, %struct.assembly_name** %6, align 8
  %28 = getelementptr inbounds %struct.assembly_name, %struct.assembly_name* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.assembly_name*, %struct.assembly_name** %6, align 8
  %31 = getelementptr inbounds %struct.assembly_name, %struct.assembly_name* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %26, i32* %33, align 4
  %34 = icmp ne i32 %26, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %36, i32* %3, align 4
  br label %68

37:                                               ; preds = %2
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strcmpiW(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_assembly_name_attribute.nameW, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load %struct.assembly_name*, %struct.assembly_name** %6, align 8
  %43 = getelementptr inbounds %struct.assembly_name, %struct.assembly_name* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.assembly_name*, %struct.assembly_name** %6, align 8
  %46 = getelementptr inbounds %struct.assembly_name, %struct.assembly_name* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds i32, i32* %44, i64 %47
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcpyW(i32 %50, i8* %51)
  br label %66

53:                                               ; preds = %37
  %54 = load %struct.assembly_name*, %struct.assembly_name** %6, align 8
  %55 = getelementptr inbounds %struct.assembly_name, %struct.assembly_name* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.assembly_name*, %struct.assembly_name** %6, align 8
  %58 = getelementptr inbounds %struct.assembly_name, %struct.assembly_name* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = getelementptr inbounds i32, i32* %56, i64 %59
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @sprintfW(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_assembly_name_attribute.fmtW, i64 0, i64 0), i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %53, %41
  %67 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %35
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @msi_alloc(i32) #1

declare dso_local i32 @strcmpiW(i8*, i8*) #1

declare dso_local i32 @strcpyW(i32, i8*) #1

declare dso_local i32 @sprintfW(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
