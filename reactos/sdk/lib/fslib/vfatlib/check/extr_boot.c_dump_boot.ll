; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_dump_boot.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_dump_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i32, i16, i64, i64, i64, i64, i64, i64 }
%struct.boot_sector = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Boot sector contents:\0A\00", align 1
@atari_format = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"System ID \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Serial number 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Media byte 0x%02x (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%10d bytes per logical sector\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%10d bytes per cluster\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%10d reserved sector%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"First FAT starts at byte %llu (sector %llu)\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%10d FATs, %d bit entries\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"%10lld bytes per FAT (= %llu sectors)\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Root directory starts at byte %llu (sector %llu)\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"%10d root directory entries\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Root directory start at cluster %lu (arbitrary size)\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Data area starts at byte %llu (sector %llu)\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%10lu data clusters (%llu bytes)\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"%u sectors/track, %u heads\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"%10u hidden sectors\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"%10u sectors total\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.boot_sector*, i32)* @dump_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_boot(%struct.TYPE_3__* %0, %struct.boot_sector* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.boot_sector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca [9 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.boot_sector* %1, %struct.boot_sector** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @atari_format, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %14 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %15 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @strncpy(i8* %13, i8* %17, i32 8)
  %19 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 8
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %24 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %29 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 6
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %27, %33
  %35 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %36 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 %34, %40
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %22, %12
  %44 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %45 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %48 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @get_media_descr(i32 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %46, i8* %50)
  %52 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %53 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @GET_UNALIGNED_W(i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 8
  %60 = zext i16 %59 to i32
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %63 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16toh(i32 %64)
  %66 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %67 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16toh(i32 %68)
  %70 = icmp eq i32 %69, 1
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %65, i8* %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = udiv i64 %79, %81
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i64 %76, i64 %82)
  %84 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %85 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = sdiv i64 %96, %98
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i64 %93, i64 %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %43
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = udiv i64 %111, %113
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i64 %108, i64 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i16, i16* %117, align 8
  %119 = zext i16 %118 to i32
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %119)
  br label %126

121:                                              ; preds = %43
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %121, %105
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = zext i32 %133 to i64
  %135 = udiv i64 %132, %134
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i64 %129, i64 %135)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i16, i16* %144, align 8
  %146 = zext i16 %145 to i64
  %147 = mul i64 %142, %146
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i64 %139, i64 %147)
  %149 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %150 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @le16toh(i32 %151)
  %153 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %154 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @le16toh(i32 %155)
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %152, i32 %156)
  %158 = load i64, i64* @atari_format, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %126
  %161 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %162 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %161, i32 0, i32 5
  %163 = bitcast i32* %162 to i8*
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 8
  %166 = zext i8 %165 to i32
  %167 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %168 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %167, i32 0, i32 5
  %169 = bitcast i32* %168 to i8*
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = shl i32 %172, 8
  %174 = or i32 %166, %173
  br label %180

175:                                              ; preds = %126
  %176 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %177 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @le32toh(i32 %178)
  br label %180

180:                                              ; preds = %175, %160
  %181 = phi i32 [ %174, %160 ], [ %179, %175 ]
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %181)
  %183 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %184 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @GET_UNALIGNED_W(i32 %185)
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %7, align 2
  %188 = load i16, i16* %7, align 2
  %189 = zext i16 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = load i16, i16* %7, align 2
  %193 = zext i16 %192 to i32
  br label %199

194:                                              ; preds = %180
  %195 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %196 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @le32toh(i32 %197)
  br label %199

199:                                              ; preds = %194, %191
  %200 = phi i32 [ %193, %191 ], [ %198, %194 ]
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %200)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @get_media_descr(i32) #1

declare dso_local i32 @GET_UNALIGNED_W(i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
