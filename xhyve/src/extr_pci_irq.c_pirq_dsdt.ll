; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_irq.c_pirq_dsdt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_irq.c_pirq_dsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@irq_counts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s,%d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Method (PIRV, 1, NotSerialized)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  If (And (Arg0, 0x%02X))\00", align 1
@PIRQ_DIS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"  {\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"    Return (0x00)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"  }\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"  And (Arg0, 0x%02X, Local0)\00", align 1
@PIRQ_IRQ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"  If (LLess (Local0, 0x03))\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"  If (LEqual (Local0, 0x08))\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"  If (LEqual (Local0, 0x0D))\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"  Return (0x01)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@pirqs = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"Device (LNK%c)\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"  Name (_HID, EisaId (\22PNP0C0F\22))\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"  Name (_UID, 0x%02X)\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"  Method (_STA, 0, NotSerialized)\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"    If (PIRV (PIR%c))\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"       Return (0x0B)\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"    }\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"    Else\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"       Return (0x09)\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"  Name (_PRS, ResourceTemplate ()\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"    IRQ (Level, ActiveLow, Shared, )\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"      {%s}\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"  })\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"  Name (CB%02X, ResourceTemplate ()\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"      {}\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"  CreateWordField (CB%02X, 0x01, CIR%c)\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"  Method (_CRS, 0, NotSerialized)\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"    And (PIR%c, 0x%02X, Local0)\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"    If (PIRV (Local0))\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"      ShiftLeft (0x01, Local0, CIR%c)\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"      Store (0x00, CIR%c)\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"    Return (CB%02X)\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"  Method (_DIS, 0, NotSerialized)\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"    Store (0x80, PIR%c)\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"  Method (_SRS, 1, NotSerialized)\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"    CreateWordField (Arg0, 0x01, SIR%c)\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"    FindSetRightBit (SIR%c, Local0)\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"    Store (Decrement (Local0), PIR%c)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pirq_dsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pirq_dsdt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @irq_counts, align 4
  %8 = call i32 @nitems(i32 %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %5
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @IRQ_PERMITTED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %29

15:                                               ; preds = %10
  %16 = load i8*, i8** %1, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i8**, i8*, ...) @asprintf(i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %1, align 8
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8**, i8*, ...) @asprintf(i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @free(i8* %26)
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  %33 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* @PIRQ_DIS, align 4
  %37 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %41 = load i32, i32* @PIRQ_IRQ, align 4
  %42 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %146, %32
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @pirqs, align 4
  %60 = call i32 @nitems(i32 %59)
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %149

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 65, %64
  %66 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %65)
  %67 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %70)
  %72 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 65, %74
  %76 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %75)
  %77 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %80 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0))
  %88 = load i8*, i8** %1, align 8
  %89 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %88)
  %90 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), i32 %92)
  %94 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 65, %100
  %102 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i32 %99, i32 %101)
  %103 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 65, %105
  %107 = load i32, i32* @PIRQ_DIS, align 4
  %108 = load i32, i32* @PIRQ_IRQ, align 4
  %109 = or i32 %107, %108
  %110 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i32 %106, i32 %109)
  %111 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0))
  %112 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 65, %113
  %115 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), i32 %114)
  %116 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %117 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %118 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 65, %119
  %121 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i32 %120)
  %122 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 %124)
  %126 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %127 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0))
  %128 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 65, %129
  %131 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 %130)
  %132 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %133 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0))
  %134 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 65, %135
  %137 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 65, %138
  %140 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 65, %141
  %143 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i64 0, i64 0), i32 %142)
  %144 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %145 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %146

146:                                              ; preds = %62
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %57

149:                                              ; preds = %57
  %150 = load i8*, i8** %1, align 8
  %151 = call i32 @free(i8* %150)
  ret void
}

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @IRQ_PERMITTED(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dsdt_line(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
