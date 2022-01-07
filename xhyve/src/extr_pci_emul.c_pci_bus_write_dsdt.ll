; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_bus_write_dsdt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_bus_write_dsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.businfo = type { i32, i32, i32, i32, i32, i32, %struct.slotinfo* }
%struct.slotinfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_devinst* }
%struct.pci_devinst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.pci_devinst*)* }

@pci_businfo = common dso_local global %struct.businfo** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"  Device (PC%02X)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"  {\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"    Name (_HID, EisaId (\22PNP0A03\22))\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"    Name (_ADR, Zero)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"    Method (_BBN, 0, NotSerialized)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"        Return (0x%08X)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"    }\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"    Name (_CRS, ResourceTemplate ()\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"      WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"        0x0000,             // Granularity\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"        0x%04X,             // Range Minimum\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"        0x%04X,             // Range Maximum\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"        0x0000,             // Translation Offset\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"        0x0001,             // Length\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"        ,, )\00", align 1
@.str.16 = private unnamed_addr constant [76 x i8] c"      WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"        0x0000,             // Range Minimum\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"        0x0CF7,             // Range Maximum\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"        0x0CF8,             // Length\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"        ,, , TypeStatic)\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"        0x0D00,             // Range Minimum\00", align 1
@PCI_EMUL_IOBASE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [38 x i8] c"        0x%04X,             // Length\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"    })\00", align 1
@.str.24 = private unnamed_addr constant [93 x i8] c"      DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"        0x00000000,         // Granularity\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"        0x%08X,         // Range Minimum\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"        0x%08X,         // Range Maximum\0A\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"        0x00000000,         // Translation Offset\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"        0x%08X,         // Length\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"        ,, , AddressRangeMemory, TypeStatic)\00", align 1
@.str.31 = private unnamed_addr constant [93 x i8] c"      QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"        0x0000000000000000, // Granularity\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"        0x%016lX, // Range Minimum\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"        0x%016lX, // Range Maximum\0A\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"        0x0000000000000000, // Translation Offset\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"        0x%016lX, // Length\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Name (PPRT, Package ()\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@pci_pirq_prt_entry = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [3 x i8] c"})\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"Name (APRT, Package ()\00", align 1
@pci_apic_prt_entry = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [32 x i8] c"Method (_PRT, 0, NotSerialized)\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"  If (PICM)\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"    Return (APRT)\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"  }\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"  Else\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"    Return (PPRT)\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@MAXSLOTS = common dso_local global i32 0, align 4
@MAXFUNCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pci_bus_write_dsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_bus_write_dsdt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.businfo*, align 8
  %4 = alloca %struct.slotinfo*, align 8
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.businfo*, %struct.businfo** %9, i64 %11
  %13 = load %struct.businfo*, %struct.businfo** %12, align 8
  store %struct.businfo* %13, %struct.businfo** %3, align 8
  %14 = icmp eq %struct.businfo* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %225

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  %30 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %35 = load i32, i32* %2, align 4
  %36 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %37)
  %39 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %20
  %45 = call i32 @dsdt_indent(i32 3)
  %46 = call i32 @dsdt_fixed_ioport(i32 3320, i32 8)
  %47 = call i32 @dsdt_unindent(i32 3)
  %48 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  %58 = load i32, i32* @PCI_EMUL_IOBASE, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %59)
  %61 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %62 = load i32, i32* @PCI_EMUL_IOBASE, align 4
  %63 = sub nsw i32 %62, 3328
  %64 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %63)
  %65 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %66 = load %struct.businfo*, %struct.businfo** %3, align 8
  %67 = icmp eq %struct.businfo* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %44
  %69 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %223

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70, %20
  %72 = load %struct.businfo*, %struct.businfo** %3, align 8
  %73 = icmp ne %struct.businfo* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %78 = load %struct.businfo*, %struct.businfo** %3, align 8
  %79 = getelementptr inbounds %struct.businfo, %struct.businfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %80)
  %82 = load %struct.businfo*, %struct.businfo** %3, align 8
  %83 = getelementptr inbounds %struct.businfo, %struct.businfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %85)
  %87 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %88 = load %struct.businfo*, %struct.businfo** %3, align 8
  %89 = getelementptr inbounds %struct.businfo, %struct.businfo* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.businfo*, %struct.businfo** %3, align 8
  %92 = getelementptr inbounds %struct.businfo, %struct.businfo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %94)
  %96 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.24, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0))
  %99 = load %struct.businfo*, %struct.businfo** %3, align 8
  %100 = getelementptr inbounds %struct.businfo, %struct.businfo* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i32 %101)
  %103 = load %struct.businfo*, %struct.businfo** %3, align 8
  %104 = getelementptr inbounds %struct.businfo, %struct.businfo* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i64 0, i64 0), i32 %106)
  %108 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0))
  %109 = load %struct.businfo*, %struct.businfo** %3, align 8
  %110 = getelementptr inbounds %struct.businfo, %struct.businfo* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.businfo*, %struct.businfo** %3, align 8
  %113 = getelementptr inbounds %struct.businfo, %struct.businfo* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %111, %114
  %116 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i32 %115)
  %117 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0))
  %118 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.31, i64 0, i64 0))
  %119 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.32, i64 0, i64 0))
  %120 = load %struct.businfo*, %struct.businfo** %3, align 8
  %121 = getelementptr inbounds %struct.businfo, %struct.businfo* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 %122)
  %124 = load %struct.businfo*, %struct.businfo** %3, align 8
  %125 = getelementptr inbounds %struct.businfo, %struct.businfo* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), i32 %127)
  %129 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i64 0, i64 0))
  %130 = load %struct.businfo*, %struct.businfo** %3, align 8
  %131 = getelementptr inbounds %struct.businfo, %struct.businfo* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.businfo*, %struct.businfo** %3, align 8
  %134 = getelementptr inbounds %struct.businfo, %struct.businfo* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %132, %135
  %137 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %136)
  %138 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0))
  %139 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @pci_count_lintr(i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %71
  %145 = call i32 @dsdt_indent(i32 2)
  %146 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0))
  %147 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @pci_pirq_prt_entry, align 4
  %150 = call i32 @pci_walk_lintr(i32 %148, i32 %149, i32* null)
  %151 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  %152 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0))
  %153 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* @pci_apic_prt_entry, align 4
  %156 = call i32 @pci_walk_lintr(i32 %154, i32 %155, i32* null)
  %157 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  %158 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0))
  %159 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %160 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0))
  %161 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %162 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  %163 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  %164 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0))
  %165 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %166 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0))
  %167 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  %168 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  %169 = call i32 @dsdt_unindent(i32 2)
  br label %170

170:                                              ; preds = %144, %71
  %171 = call i32 @dsdt_indent(i32 2)
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %218, %170
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @MAXSLOTS, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %221

176:                                              ; preds = %172
  %177 = load %struct.businfo*, %struct.businfo** %3, align 8
  %178 = getelementptr inbounds %struct.businfo, %struct.businfo* %177, i32 0, i32 6
  %179 = load %struct.slotinfo*, %struct.slotinfo** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %179, i64 %181
  store %struct.slotinfo* %182, %struct.slotinfo** %4, align 8
  store i32 0, i32* %7, align 4
  br label %183

183:                                              ; preds = %214, %176
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @MAXFUNCS, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %217

187:                                              ; preds = %183
  %188 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %189 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %188, i32 0, i32 0
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load %struct.pci_devinst*, %struct.pci_devinst** %194, align 8
  store %struct.pci_devinst* %195, %struct.pci_devinst** %5, align 8
  %196 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %197 = icmp ne %struct.pci_devinst* %196, null
  br i1 %197, label %198, label %213

198:                                              ; preds = %187
  %199 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %200 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32 (%struct.pci_devinst*)*, i32 (%struct.pci_devinst*)** %202, align 8
  %204 = icmp ne i32 (%struct.pci_devinst*)* %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %198
  %206 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %207 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32 (%struct.pci_devinst*)*, i32 (%struct.pci_devinst*)** %209, align 8
  %211 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %212 = call i32 %210(%struct.pci_devinst* %211)
  br label %213

213:                                              ; preds = %205, %198, %187
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %183

217:                                              ; preds = %183
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %172

221:                                              ; preds = %172
  %222 = call i32 @dsdt_unindent(i32 2)
  br label %223

223:                                              ; preds = %221, %68
  %224 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %18
  ret void
}

declare dso_local i32 @dsdt_line(i8*, ...) #1

declare dso_local i32 @dsdt_indent(i32) #1

declare dso_local i32 @dsdt_fixed_ioport(i32, i32) #1

declare dso_local i32 @dsdt_unindent(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_count_lintr(i32) #1

declare dso_local i32 @pci_walk_lintr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
