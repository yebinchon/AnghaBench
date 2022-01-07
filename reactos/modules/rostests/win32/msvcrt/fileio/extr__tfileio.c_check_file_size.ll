; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_check_file_size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_check_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status_flagged = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"STATUS: (%s) checking for %d bytes with mode %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR: (%s) failed to open file for reading\0A\00", align 1
@_TEOF = common dso_local global i32 0, align 4
@verbose_flagged = common dso_local global i64 0, align 8
@_THEX_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"ERROR: (%s) ferror returned %d after reading\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"PASSED: (%s) read %d bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"FAILED: (%s) read %d bytes but expected %d using mode \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @check_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file_size(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @status_flagged, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = call i32 @_T(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 (i32, i32*, ...) @_tprintf(i32 %15, i32* %16, i32 %17, i32* %18)
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @_tfopen(i32* %21, i32* %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @_T(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32, i32*, ...) @_tprintf(i32 %27, i32* %28)
  store i32 1, i32* %4, align 4
  br label %91

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @_fgettc(i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @_TEOF, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i64, i64* @verbose_flagged, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @_THEX_FORMAT, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 (i32, i32*, ...) @_tprintf(i32 %40, i32* %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @ferror(i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = call i32 @_T(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (i32, i32*, ...) @_tprintf(i32 %54, i32* %55, i32 %56)
  %58 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i64, i64* @verbose_flagged, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load i64, i64* @status_flagged, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = call i32 @_T(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32, i32*, ...) @_tprintf(i32 %73, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %69
  br label %85

78:                                               ; preds = %63
  %79 = call i32 @_T(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 (i32, i32*, ...) @_tprintf(i32 %79, i32* %80, i32 %81, i32 %82, i32* %83)
  br label %85

85:                                               ; preds = %78, %77
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 -1
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %26
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @_tprintf(i32, i32*, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32* @_tfopen(i32*, i32*) #1

declare dso_local i32 @_fgettc(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
