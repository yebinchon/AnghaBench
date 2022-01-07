; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpi.c_basl_fwrite_madt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpi.c_basl_fwrite_madt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" * bhyve MADT template\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[0004]\09\09Signature : \22APIC\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"[0004]\09\09Table Length : 00000000\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"[0001]\09\09Revision : 01\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"[0001]\09\09Checksum : 00\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"[0006]\09\09Oem ID : \22BHYVE \22\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"[0008]\09\09Oem Table ID : \22BVMADT  \22\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"[0004]\09\09Oem Revision : 00000001\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"[0004]\09\09Asl Compiler ID : \22xxxx\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"[0004]\09\09Asl Compiler Revision : 00000000\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"[0004]\09\09Local Apic Address : FEE00000\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"[0004]\09\09Flags (decoded below) : 00000001\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\09\09\09PC-AT Compatibility : 1\0A\00", align 1
@basl_ncpu = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"[0001]\09\09Subtable Type : 00\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Length : 08\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"[0001]\09\09Processor ID : %02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"[0001]\09\09Local Apic ID : %02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"\09\09\09Processor Enabled : 1\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"[0001]\09\09Subtable Type : 01\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Length : 0C\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"[0001]\09\09I/O Apic ID : %02x\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"[0001]\09\09Reserved : 00\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"[0004]\09\09Address : fec00000\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"[0004]\09\09Interrupt : 00000000\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"[0001]\09\09Subtable Type : 02\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Length : 0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"[0001]\09\09Bus : 00\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Source : 00\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"[0004]\09\09Interrupt : 00000002\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"[0002]\09\09Flags (decoded below) : 0005\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"\09\09\09Polarity : 1\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"\09\09\09Trigger Mode : 1\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"[0001]\09\09Source : %02X\0A\00", align 1
@SCI_INT = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [26 x i8] c"[0004]\09\09Interrupt : %08X\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"[0002]\09\09Flags (decoded below) : 0000\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"\09\09\09Polarity : 3\0A\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"\09\09\09Trigger Mode : 3\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"[0001]\09\09Subtable Type : 04\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"[0001]\09\09Length : 06\0A\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"[0001]\09\09ProcessorId : FF\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"[0001]\09\09Interrupt : 01\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @basl_fwrite_madt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basl_fwrite_madt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %61, %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @basl_ncpu, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %40

64:                                               ; preds = %40
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i32 0)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0))
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0))
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0))
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0))
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @SCI_INT, align 4
  %105 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @SCI_INT, align 4
  %108 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0))
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0))
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0))
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0))
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0))
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0))
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0))
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0))
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0))
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 (i32*, i8*, ...) @EFPRINTF(i32* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @EFFLUSH(i32* %133)
  store i32 0, i32* %2, align 4
  br label %137

135:                                              ; No predecessors!
  %136 = load i32, i32* @errno, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %64
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @EFPRINTF(i32*, i8*, ...) #1

declare dso_local i32 @EFFLUSH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
