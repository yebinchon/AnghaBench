; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_firmware_parse.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_firmware_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"kexec\00", align 1
@kexec = common dso_local global i64 0, align 8
@fw_func = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"fbsd\00", align 1
@fbsd_load = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [122 x i8] c"Invalid firmware argument\0A    -f kexec,'kernel','initrd','\22cmdline\22'\0A    -f fbsd,'userboot','boot volume','\22kernel env\22'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @firmware_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_parse(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strdup(i8* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @kexec, align 8
  store i64 %16, i64* @fw_func, align 8
  br label %26

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* @fbsd_load, align 8
  store i64 %23, i64* @fw_func, align 8
  br label %25

24:                                               ; preds = %17
  br label %90

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 44)
  store i8* %28, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %5, align 8
  br label %35

34:                                               ; preds = %26
  br label %90

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 44)
  store i8* %37, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %6, align 8
  br label %44

43:                                               ; preds = %35
  br label %90

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 44)
  store i8* %46, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %7, align 8
  br label %53

52:                                               ; preds = %44
  br label %90

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i8* [ %58, %57 ], [ null, %59 ]
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  br label %68

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ null, %67 ]
  store i8* %69, i8** %7, align 8
  %70 = load i64, i64* @fw_func, align 8
  %71 = load i64, i64* @kexec, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @kexec_init(i8* %74, i8* %75, i8* %76)
  br label %89

78:                                               ; preds = %68
  %79 = load i64, i64* @fw_func, align 8
  %80 = load i64, i64* @fbsd_load, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @fbsd_init(i8* %83, i8* %84, i8* %85, i32* null)
  br label %88

87:                                               ; preds = %78
  br label %90

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %73
  store i32 0, i32* %2, align 4
  br label %93

90:                                               ; preds = %87, %52, %43, %34, %24
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %89
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @kexec_init(i8*, i8*, i8*) #1

declare dso_local i32 @fbsd_init(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
