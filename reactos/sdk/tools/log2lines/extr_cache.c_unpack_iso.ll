; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_cache.c_unpack_iso.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_cache.c_unpack_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Open of %s failed (locked for writing?), trying to copy first\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@UNZIP_FMT = common dso_local global i8* null, align 8
@opt_7z = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"\0ACannot unpack %s (check 7z path!)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to execute: '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\0AUnpacking reactos.cab in %s\0A\00", align 1
@UNZIP_FMT_CAB = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"\0ACannot unpack reactos.cab in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @unpack_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_iso(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @LINESIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strcpy(i8* %19, i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @l2l_dbg(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = call i32 @strcat(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @copy_file(i8* %29, i8* %19)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 3, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

33:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %37

37:                                               ; preds = %34, %33
  %38 = load i8*, i8** @UNZIP_FMT, align 8
  %39 = load i32, i32* @opt_7z, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @sprintf(i8* %16, i8* %38, i32 %39, i8* %19, i8* %40)
  %42 = call i64 @system(i8* %16)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = call i32 @l2l_dbg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %46 = call i32 @l2l_dbg(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  store i32 1, i32* %8, align 4
  br label %62

47:                                               ; preds = %37
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @l2l_dbg(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** @UNZIP_FMT_CAB, align 8
  %51 = load i32, i32* @opt_7z, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @sprintf(i8* %16, i8* %50, i32 %51, i8* %52, i8* %53)
  %55 = call i64 @system(i8* %16)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @l2l_dbg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %58)
  %60 = call i32 @l2l_dbg(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  store i32 2, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %47
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @remove(i8* %19)
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %67, %32
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @l2l_dbg(i32, i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @copy_file(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i8*) #2

declare dso_local i64 @system(i8*) #2

declare dso_local i32 @remove(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
