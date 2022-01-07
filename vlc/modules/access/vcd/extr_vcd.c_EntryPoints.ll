; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/vcd/extr_vcd.c_EntryPoints.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/vcd/extr_vcd.c_EntryPoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@VCD_DATA_SIZE = common dso_local global i32 0, align 4
@VCD_ENTRIES_SECTOR = common dso_local global i32 0, align 4
@VCD_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not read entry points sector\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@CD_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid entry points number\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ENTRYVCD\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ENTRYSVD\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unrecognized entry points format\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Entry[%d] title=%d sector=%d\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @EntryPoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EntryPoints(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %4, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %5, align 8
  %20 = load i32, i32* @VCD_DATA_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = call i32 @VLC_OBJECT(%struct.TYPE_19__* %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VCD_ENTRIES_SECTOR, align 4
  %30 = load i32, i32* @VCD_TYPE, align 4
  %31 = call i64 @ioctl_ReadSectors(i32 %25, i32 %28, i32 %29, i32* %23, i32 1, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = call i32 @msg_Err(%struct.TYPE_19__* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %187

37:                                               ; preds = %1
  %38 = load i32, i32* @CD_SECTOR_SIZE, align 4
  %39 = call i32 @memcpy(%struct.TYPE_20__* %8, i32* %23, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %41 = call i32 @GetWBE(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 500
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = call i32 @msg_Err(%struct.TYPE_19__* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %187

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @strncmp(i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strncmp(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = call i32 @msg_Err(%struct.TYPE_19__* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %187

62:                                               ; preds = %53, %48
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %182, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %185

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BCD_TO_BIN(i32 %74)
  %76 = sub nsw i32 %75, 2
  store i32 %76, i32* %12, align 4
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @BCD_TO_BIN(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BCD_TO_BIN(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BCD_TO_BIN(i32 %102)
  %104 = call i32 @MSF_TO_LBA2(i32 %85, i32 %94, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %67
  br label %182

108:                                              ; preds = %67
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @USABLE_TITLES(i32 %112)
  %114 = icmp sge i32 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %182

116:                                              ; preds = %108
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @msg_Dbg(%struct.TYPE_19__* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %119, i32 %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = mul i64 4, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32* @xrealloc(i32* %129, i32 %141)
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  store i32* %142, i32** %149, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %150, %159
  %161 = load i32, i32* @VCD_DATA_SIZE, align 4
  %162 = mul nsw i32 %160, %161
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %170, i64 %180
  store i32 %162, i32* %181, align 4
  br label %182

182:                                              ; preds = %116, %115, %107
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %63

185:                                              ; preds = %63
  %186 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %186, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %187

187:                                              ; preds = %185, %58, %44, %33
  %188 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ioctl_ReadSectors(i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_19__*) #2

declare dso_local i32 @msg_Err(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_20__*, i32*, i32) #2

declare dso_local i32 @GetWBE(i32*) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @BCD_TO_BIN(i32) #2

declare dso_local i32 @MSF_TO_LBA2(i32, i32, i32) #2

declare dso_local i32 @USABLE_TITLES(i32) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_19__*, i8*, i32, i32, i32) #2

declare dso_local i32* @xrealloc(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
