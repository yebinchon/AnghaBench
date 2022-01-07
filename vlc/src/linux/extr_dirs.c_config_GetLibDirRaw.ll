; ModuleID = '/home/carl/AnghaBench/vlc/src/linux/extr_dirs.c_config_GetLibDirRaw.c'
source_filename = "/home/carl/AnghaBench/vlc/src/linux/extr_dirs.c_config_GetLibDirRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rte\00", align 1
@config_GetLibDir = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%p-%p\00", align 1
@LIBDIR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @config_GetLibDirRaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @config_GetLibDirRaw() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %11 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %60

15:                                               ; preds = %0
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %16 = load i64, i64* @config_GetLibDir, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %50, %44, %38, %27, %15
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @getline(i8** %3, i64* %4, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %55

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %7, i8** %8)
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %17

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28
  br label %17

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 47)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %17

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i8* @strrchr(i8* %46, i8 signext 47)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %17

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %9, align 8
  %54 = call i8* @strdup(i8* %53)
  store i8* %54, i8** %1, align 8
  br label %55

55:                                               ; preds = %51, %22
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @fclose(i32* %58)
  br label %60

60:                                               ; preds = %55, %14
  %61 = load i8*, i8** %1, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** @LIBDIR, align 8
  %65 = call i8* @strdup(i8* %64)
  store i8* %65, i8** %1, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** %1, align 8
  ret i8* %67
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
