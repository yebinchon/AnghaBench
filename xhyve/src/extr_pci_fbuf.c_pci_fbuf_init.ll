; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_fbuf.c_pci_fbuf_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_fbuf.c_pci_fbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_fbuf_softc = type { i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__, i32, %struct.pci_devinst* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.pci_devinst = type { %struct.TYPE_3__*, %struct.pci_fbuf_softc* }
%struct.TYPE_3__ = type { i32 }

@fbuf_sc = common dso_local global %struct.pci_fbuf_softc* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Only one frame buffer device is allowed.\0A\00", align 1
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_DISPLAY = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_DISPLAY_VGA = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@DMEMSZ = common dso_local global i32 0, align 4
@FB_SIZE = common dso_local global i32 0, align 4
@PCI_FBUF_MSI_MSGS = common dso_local global i32 0, align 4
@COLS_DEFAULT = common dso_local global i32 0, align 4
@ROWS_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pci_fbuf: VGA rendering not enabled\00", align 1
@DEBUG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"fbuf frame buffer base: %p [sz %lu]\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"pci_fbuf: mapseg failed - try deleting VM and restarting\0A\00", align 1
@pci_fbuf_render = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinst*, i8*)* @pci_fbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_fbuf_init(%struct.pci_devinst* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinst*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_fbuf_softc*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** @fbuf_sc, align 8
  %9 = icmp ne %struct.pci_fbuf_softc* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %183

13:                                               ; preds = %2
  %14 = call %struct.pci_fbuf_softc* @calloc(i32 1, i32 80)
  store %struct.pci_fbuf_softc* %14, %struct.pci_fbuf_softc** %7, align 8
  %15 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %16 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %17 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %16, i32 0, i32 1
  store %struct.pci_fbuf_softc* %15, %struct.pci_fbuf_softc** %17, align 8
  %18 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %19 = load i32, i32* @PCIR_DEVICE, align 4
  %20 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %18, i32 %19, i32 16635)
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %22 = load i32, i32* @PCIR_VENDOR, align 4
  %23 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %21, i32 %22, i32 64349)
  %24 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %25 = load i32, i32* @PCIR_CLASS, align 4
  %26 = load i32, i32* @PCIC_DISPLAY, align 4
  %27 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %24, i32 %25, i32 %26)
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %29 = load i32, i32* @PCIR_SUBCLASS, align 4
  %30 = load i32, i32* @PCIS_DISPLAY_VGA, align 4
  %31 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %28, i32 %29, i32 %30)
  %32 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %33 = load i32, i32* @PCIBAR_MEM32, align 4
  %34 = load i32, i32* @DMEMSZ, align 4
  %35 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %32, i32 0, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %41 = load i32, i32* @PCIBAR_MEM32, align 4
  %42 = load i32, i32* @FB_SIZE, align 4
  %43 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %40, i32 1, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %49 = load i32, i32* @PCI_FBUF_MSI_MSGS, align 4
  %50 = call i32 @pci_emul_add_msicap(%struct.pci_devinst* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %56 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %62 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @FB_SIZE, align 4
  %64 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %65 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @COLS_DEFAULT, align 4
  %68 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %69 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @ROWS_DEFAULT, align 4
  %72 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %73 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %76 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 32, i32* %77, align 8
  %78 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %79 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %81 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %83 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %84 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %83, i32 0, i32 11
  store %struct.pci_devinst* %82, %struct.pci_devinst** %84, align 8
  %85 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @pci_fbuf_parse_opts(%struct.pci_fbuf_softc* %85, i8* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %13
  br label %175

91:                                               ; preds = %13
  %92 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %93 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %175

99:                                               ; preds = %91
  %100 = load i32, i32* @DEBUG_INFO, align 4
  %101 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %102 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load i32, i32* @FB_SIZE, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @DPRINTF(i32 %100, i8* %107)
  %109 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %110 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FB_SIZE, align 4
  %113 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %114 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %113, i32 0, i32 6
  %115 = bitcast i64* %114 to i8**
  %116 = call i64 @xh_setup_video_memory(i32 %111, i32 %112, i8** %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %99
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %175

121:                                              ; preds = %99
  %122 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %123 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %127 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %131 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @console_init(i32 %125, i32 %129, i64 %132)
  %134 = load i32, i32* @pci_fbuf_render, align 4
  %135 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %136 = call i32 @console_fb_register(i32 %134, %struct.pci_fbuf_softc* %135)
  %137 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %138 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %121
  %142 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %143 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @vga_init(i32 %147)
  %149 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %150 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %141, %121
  %152 = call i32 (...) @console_get_image()
  %153 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %154 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 8
  %155 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  store %struct.pci_fbuf_softc* %155, %struct.pci_fbuf_softc** @fbuf_sc, align 8
  %156 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %157 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = load i32, i32* @FB_SIZE, align 4
  %161 = call i32 @memset(i8* %159, i32 0, i32 %160)
  %162 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %163 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %166 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %169 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %172 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @rfb_init(i32 %164, i32 %167, i32 %170, i32 %173)
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %151, %118, %96, %90
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %7, align 8
  %180 = call i32 @free(%struct.pci_fbuf_softc* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %10
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.pci_fbuf_softc* @calloc(i32, i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_emul_add_msicap(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_fbuf_parse_opts(%struct.pci_fbuf_softc*, i8*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i64 @xh_setup_video_memory(i32, i32, i8**) #1

declare dso_local i32 @console_init(i32, i32, i64) #1

declare dso_local i32 @console_fb_register(i32, %struct.pci_fbuf_softc*) #1

declare dso_local i32 @vga_init(i32) #1

declare dso_local i32 @console_get_image(...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rfb_init(i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.pci_fbuf_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
