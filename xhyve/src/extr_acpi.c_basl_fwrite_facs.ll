; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpi.c_basl_fwrite_facs.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpi.c_basl_fwrite_facs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" * bhyve FACS template\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[0004]\09\09Signature : \22FACS\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[0004]\09\09Length : 00000040\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"[0004]\09\09Hardware Signature : 00000000\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"[0004]\09\0932 Firmware Waking Vector : 00000000\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"[0004]\09\09Global Lock : 00000000\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"[0004]\09\09Flags (decoded below) : 00000000\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\09\09\09S4BIOS Support Present : 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\09\09\0964-bit Wake Supported (V2) : 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"[0008]\09\0964 Firmware Waking Vector : 0000000000000000\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"[0001]\09\09Version : 02\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"[0003]\09\09Reserved : 000000\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"[0004]\09\09OspmFlags (decoded below) : 00000000\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"\09\09\0964-bit Wake Env Required (V2) : 0\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @basl_fwrite_facs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basl_fwrite_facs(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @EFPRINTF(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @EFPRINTF(i32* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @EFPRINTF(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @EFPRINTF(i32* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @EFPRINTF(i32* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @EFPRINTF(i32* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @EFPRINTF(i32* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @EFPRINTF(i32* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @EFPRINTF(i32* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @EFPRINTF(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @EFPRINTF(i32* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @EFPRINTF(i32* %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @EFPRINTF(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @EFPRINTF(i32* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @EFPRINTF(i32* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @EFPRINTF(i32* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @EFFLUSH(i32* %37)
  store i32 0, i32* %2, align 4
  br label %41

39:                                               ; No predecessors!
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %1
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @EFPRINTF(i32*, i8*) #1

declare dso_local i32 @EFFLUSH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
