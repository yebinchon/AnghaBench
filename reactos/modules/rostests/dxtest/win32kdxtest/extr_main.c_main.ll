; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"-dump\00", align 1
@TRUE = common dso_local global i32 0, align 4
@dumping_on = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/help\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"the %s support follow param \0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"-dump              : It dump all data it resvie to screen \0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"-dumpfile filename : It dump all data it resvie to file \0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\0Arember u can only use one of them at time \0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"-dumpfile\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdout = common dso_local global i32 0, align 4
@fs_file = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %51

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @stricmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* @dumping_on, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @stricmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @stricmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @stricmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @stricmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35, %29, %23, %17
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @stricmp(i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32* @freopen(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  store i32* %65, i32** @fs_file, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* @dumping_on, align 4
  br label %69

69:                                               ; preds = %67, %60
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %51
  %72 = call i32 (...) @test_NtGdiDdCreateDirectDrawObject()
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @test_NtGdiDdQueryDirectDrawObject(i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @test_NtGdiDdGetScanLine(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @test_NtGdiDdWaitForVerticalBlank(i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @test_NtGdiDdCanCreateSurface(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @test_NtGdiDdDeleteDirectDrawObject(i32 %81)
  %83 = load i32*, i32** @fs_file, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i32*, i32** @fs_file, align 8
  %87 = call i32 @fclose(i32* %86)
  br label %88

88:                                               ; preds = %85, %71
  ret i32 0
}

declare dso_local i64 @stricmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @freopen(i8*, i8*, i32) #1

declare dso_local i32 @test_NtGdiDdCreateDirectDrawObject(...) #1

declare dso_local i32 @test_NtGdiDdQueryDirectDrawObject(i32) #1

declare dso_local i32 @test_NtGdiDdGetScanLine(i32) #1

declare dso_local i32 @test_NtGdiDdWaitForVerticalBlank(i32) #1

declare dso_local i32 @test_NtGdiDdCanCreateSurface(i32) #1

declare dso_local i32 @test_NtGdiDdDeleteDirectDrawObject(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
