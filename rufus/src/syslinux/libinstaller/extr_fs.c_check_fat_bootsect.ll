; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_fs.c_check_fat_bootsect.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_fs.c_check_fat_bootsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_boot_sector = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"impossible cluster size on an FAT volume\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"negative number of data sectors on an FAT volume\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"zero FAT sectors\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"zero FAT sectors (FAT12/16)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"FAT12   \00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"more than 4084 clusters but claims FAT12\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"FAT16   \00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"less than 4084 clusters but claims FAT16\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"FAT32   \00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"less than 65525 clusters but claims FAT32\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"FAT     \00", align 1
@check_fat_bootsect.fserr = internal global [41 x i8] c"filesystem type \22????????\22 not supported\00", align 16
@.str.11 = private unnamed_addr constant [24 x i8] c"missing FAT32 signature\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"impossibly large number of clusters on an FAT volume\00", align 1
@VFAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @check_fat_bootsect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_fat_bootsect(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fat_boot_sector*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.fat_boot_sector*
  store %struct.fat_boot_sector* %15, %struct.fat_boot_sector** %7, align 8
  %16 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %17 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %16, i32 0, i32 9
  %18 = call i64 @get_16(i32* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %21 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %20, i32 0, i32 8
  %22 = call i32 @get_8(i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %2
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %205

32:                                               ; preds = %25
  %33 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %34 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %33, i32 0, i32 7
  %35 = call i64 @get_16(i32* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  br label %44

40:                                               ; preds = %32
  %41 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %42 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %41, i32 0, i32 6
  %43 = call i64 @get_32(i32* %42)
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i64 [ %39, %38 ], [ %43, %40 ]
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %48 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %47, i32 0, i32 5
  %49 = call i64 @get_16(i32* %48)
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %10, align 8
  %51 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %52 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %51, i32 0, i32 2
  %53 = call i64 @get_16(i32* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i64, i64* %9, align 8
  br label %63

58:                                               ; preds = %44
  %59 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %60 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = call i64 @get_32(i32* %61)
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi i64 [ %57, %56 ], [ %62, %58 ]
  store i64 %64, i64* %9, align 8
  %65 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %66 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %65, i32 0, i32 3
  %67 = call i32 @get_8(i32* %66)
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = mul nsw i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %10, align 8
  %74 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %75 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %74, i32 0, i32 4
  %76 = call i64 @get_16(i32* %75)
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, 32
  %81 = add nsw i32 %78, %80
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %6, align 4
  %84 = sdiv i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %10, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %63
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %205

91:                                               ; preds = %63
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = sdiv i64 %92, %94
  store i64 %95, i64* %11, align 8
  %96 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %97 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %96, i32 0, i32 2
  %98 = call i64 @get_16(i32* %97)
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i64, i64* %9, align 8
  br label %108

103:                                              ; preds = %91
  %104 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %105 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i64 @get_32(i32* %106)
  br label %108

108:                                              ; preds = %103, %101
  %109 = phi i64 [ %102, %101 ], [ %107, %103 ]
  store i64 %109, i64* %9, align 8
  %110 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %111 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %110, i32 0, i32 3
  %112 = call i32 @get_8(i32* %111)
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %9, align 8
  %115 = mul nsw i64 %114, %113
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %205

119:                                              ; preds = %108
  %120 = load i64, i64* %11, align 8
  %121 = icmp slt i64 %120, 65525
  br i1 %121, label %122, label %179

122:                                              ; preds = %119
  %123 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %124 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %123, i32 0, i32 2
  %125 = call i64 @get_16(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %205

128:                                              ; preds = %122
  %129 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %130 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = call i32 @get_8(i32* %131)
  %133 = icmp eq i32 %132, 41
  br i1 %133, label %134, label %178

134:                                              ; preds = %128
  %135 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %136 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = call i64 @memcmp(i32* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = load i64, i64* %11, align 8
  %142 = icmp sge i64 %141, 4085
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %205

144:                                              ; preds = %140
  br label %177

145:                                              ; preds = %134
  %146 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %147 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = call i64 @memcmp(i32* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = load i64, i64* %11, align 8
  %153 = icmp slt i64 %152, 4085
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %205

155:                                              ; preds = %151
  br label %176

156:                                              ; preds = %145
  %157 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %158 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = call i64 @memcmp(i32* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %205

163:                                              ; preds = %156
  %164 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %165 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = call i64 @memcmp(i32* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 8)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %171 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = call i32 @memcpy(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @check_fat_bootsect.fserr, i64 0, i64 17), i32* %172, i32 8)
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @check_fat_bootsect.fserr, i64 0, i64 0), i8** %3, align 8
  br label %205

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175, %155
  br label %177

177:                                              ; preds = %176, %144
  br label %178

178:                                              ; preds = %177, %128
  br label %198

179:                                              ; preds = %119
  %180 = load i64, i64* %11, align 8
  %181 = icmp slt i64 %180, 268435445
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %184 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = call i32 @get_8(i32* %185)
  %187 = icmp ne i32 %186, 41
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %7, align 8
  %190 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = call i64 @memcmp(i32* %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188, %182
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %205

195:                                              ; preds = %188
  br label %197

196:                                              ; preds = %179
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %205

197:                                              ; preds = %195
  br label %198

198:                                              ; preds = %197, %178
  %199 = load i32*, i32** %5, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* @VFAT, align 4
  %203 = load i32*, i32** %5, align 8
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %198
  store i8* null, i8** %3, align 8
  br label %205

205:                                              ; preds = %204, %196, %194, %169, %162, %154, %143, %127, %118, %90, %31
  %206 = load i8*, i8** %3, align 8
  ret i8* %206
}

declare dso_local i64 @get_16(i32*) #1

declare dso_local i32 @get_8(i32*) #1

declare dso_local i64 @get_32(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
