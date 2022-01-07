; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_open.c_libfat_open.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_open.c_libfat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libfat_filesystem = type { i32 (i64, i8*, i64, i32)*, i64, i32, i32, i32, i32, i32, i64, i32, i64, i8*, i32* }
%struct.fat_bootsect = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LIBFAT_SECTOR_SIZE = common dso_local global i32 0, align 4
@LIBFAT_SECTOR_MASK = common dso_local global i32 0, align 4
@LIBFAT_SECTOR_SHIFT = common dso_local global i32 0, align 4
@FAT12 = common dso_local global i64 0, align 8
@FAT16 = common dso_local global i64 0, align 8
@FAT28 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libfat_filesystem* @libfat_open(i32 (i64, i8*, i64, i32)* %0, i64 %1) #0 {
  %3 = alloca %struct.libfat_filesystem*, align 8
  %4 = alloca i32 (i64, i8*, i64, i32)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.libfat_filesystem*, align 8
  %7 = alloca %struct.fat_bootsect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 (i64, i8*, i64, i32)* %0, i32 (i64, i8*, i64, i32)** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.libfat_filesystem* null, %struct.libfat_filesystem** %6, align 8
  %14 = call %struct.libfat_filesystem* @malloc(i32 80)
  store %struct.libfat_filesystem* %14, %struct.libfat_filesystem** %6, align 8
  %15 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %16 = icmp ne %struct.libfat_filesystem* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %223

18:                                               ; preds = %2
  %19 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %20 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %19, i32 0, i32 11
  store i32* null, i32** %20, align 8
  %21 = load i32 (i64, i8*, i64, i32)*, i32 (i64, i8*, i64, i32)** %4, align 8
  %22 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %23 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %22, i32 0, i32 0
  store i32 (i64, i8*, i64, i32)* %21, i32 (i64, i8*, i64, i32)** %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %26 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %28 = call %struct.fat_bootsect* @libfat_get_sector(%struct.libfat_filesystem* %27, i32 0)
  store %struct.fat_bootsect* %28, %struct.fat_bootsect** %7, align 8
  %29 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %30 = icmp ne %struct.fat_bootsect* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %223

32:                                               ; preds = %18
  %33 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %34 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %33, i32 0, i32 8
  %35 = call i32 @read16(i32* %34)
  %36 = load i32, i32* @LIBFAT_SECTOR_SIZE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %223

39:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %41, 8
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 1, %44
  %46 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %47 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %46, i32 0, i32 7
  %48 = call i32 @read8(i32* %47)
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %40

55:                                               ; preds = %50, %40
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 8
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %223

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 1, %60
  %62 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %63 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %66 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %68 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %67, i32 0, i32 6
  %69 = call i32 @read16(i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %59
  %73 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %74 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %73, i32 0, i32 5
  %75 = call i8* @read32(i32* %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %72, %59
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %80 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %82 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %81, i32 0, i32 4
  %83 = call i32 @read16(i32* %82)
  %84 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %85 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %87 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %86, i32 0, i32 3
  %88 = call i32 @read16(i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %77
  %92 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %93 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = call i8* @read32(i32* %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %91, %77
  %99 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %100 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %104 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %103, i32 0, i32 2
  %105 = call i32 @read8(i32* %104)
  %106 = mul nsw i32 %102, %105
  %107 = add nsw i32 %101, %106
  %108 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %109 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %111 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %110, i32 0, i32 1
  %112 = call i32 @read16(i32* %111)
  %113 = shl i32 %112, 5
  %114 = load i32, i32* @LIBFAT_SECTOR_MASK, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @LIBFAT_SECTOR_SHIFT, align 4
  %117 = ashr i32 %115, %116
  store i32 %117, i32* %12, align 4
  %118 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %119 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %125 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %124, i32 0, i32 7
  store i64 %123, i64* %125, align 8
  %126 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %127 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %130 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = icmp sge i64 %128, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %98
  br label %223

135:                                              ; preds = %98
  %136 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %137 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %141 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  %144 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %145 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  %148 = ashr i64 %143, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 2
  %152 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %153 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %152, i32 0, i32 8
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %13, align 4
  %155 = icmp sle i32 %154, 4084
  br i1 %155, label %156, label %168

156:                                              ; preds = %135
  %157 = load i64, i64* @FAT12, align 8
  %158 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %159 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %158, i32 0, i32 9
  store i64 %157, i64* %159, align 8
  %160 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %161 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %164 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = ashr i32 %165, 1
  %167 = add nsw i32 %162, %166
  store i32 %167, i32* %11, align 4
  br label %193

168:                                              ; preds = %135
  %169 = load i32, i32* %13, align 4
  %170 = icmp sle i32 %169, 65524
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load i64, i64* @FAT16, align 8
  %173 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %174 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %173, i32 0, i32 9
  store i64 %172, i64* %174, align 8
  %175 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %176 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 8
  %178 = shl i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %192

179:                                              ; preds = %168
  %180 = load i32, i32* %13, align 4
  %181 = icmp sle i32 %180, 268435444
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load i64, i64* @FAT28, align 8
  %184 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %185 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %184, i32 0, i32 9
  store i64 %183, i64* %185, align 8
  %186 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %187 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = shl i32 %188, 2
  store i32 %189, i32* %11, align 4
  br label %191

190:                                              ; preds = %179
  br label %223

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %171
  br label %193

193:                                              ; preds = %192, %156
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @LIBFAT_SECTOR_SIZE, align 4
  %196 = add nsw i32 %194, %195
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* @LIBFAT_SECTOR_SHIFT, align 4
  %199 = ashr i32 %197, %198
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %193
  br label %223

204:                                              ; preds = %193
  %205 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %206 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %205, i32 0, i32 9
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @FAT28, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %204
  %211 = load %struct.fat_bootsect*, %struct.fat_bootsect** %7, align 8
  %212 = getelementptr inbounds %struct.fat_bootsect, %struct.fat_bootsect* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = call i8* @read32(i32* %214)
  %216 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %217 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %216, i32 0, i32 10
  store i8* %215, i8** %217, align 8
  br label %221

218:                                              ; preds = %204
  %219 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %220 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %219, i32 0, i32 10
  store i8* null, i8** %220, align 8
  br label %221

221:                                              ; preds = %218, %210
  %222 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  store %struct.libfat_filesystem* %222, %struct.libfat_filesystem** %3, align 8
  br label %230

223:                                              ; preds = %203, %190, %134, %58, %38, %31, %17
  %224 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %225 = icmp ne %struct.libfat_filesystem* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %228 = call i32 @free(%struct.libfat_filesystem* %227)
  br label %229

229:                                              ; preds = %226, %223
  store %struct.libfat_filesystem* null, %struct.libfat_filesystem** %3, align 8
  br label %230

230:                                              ; preds = %229, %221
  %231 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %3, align 8
  ret %struct.libfat_filesystem* %231
}

declare dso_local %struct.libfat_filesystem* @malloc(i32) #1

declare dso_local %struct.fat_bootsect* @libfat_get_sector(%struct.libfat_filesystem*, i32) #1

declare dso_local i32 @read16(i32*) #1

declare dso_local i32 @read8(i32*) #1

declare dso_local i8* @read32(i32*) #1

declare dso_local i32 @free(%struct.libfat_filesystem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
