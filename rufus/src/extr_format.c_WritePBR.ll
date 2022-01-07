; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_WritePBR.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_WritePBR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Using %s %s partition boot record\00", align 1
@SelectedDrive = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@actual_fs_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"FAT16\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"New volume does not have a FAT16 boot sector - aborting\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Confirmed new volume has a FAT16 boot sector\00", align 1
@boot_type = common dso_local global i32 0, align 4
@BT_FREEDOS = common dso_local global i32 0, align 4
@BT_REACTOS = common dso_local global i32 0, align 4
@BT_IMAGE = common dso_local global i32 0, align 4
@img_report = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"FAT16 is not supported for KolibriOS\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"FAT32\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"New volume does not have a %s FAT32 boot sector - aborting\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Confirmed new volume has a %s FAT32 boot sector\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Setting %s FAT32 boot sector for boot...\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NTFS\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"New volume does not have an NTFS boot sector - aborting\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Confirmed new volume has an NTFS boot sector\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Unsupported FS for FS BR processing - aborting\0A\00", align 1
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_WRITE_FAULT = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @WritePBR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WritePBR(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %8 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = bitcast %struct.TYPE_3__* %5 to i32*
  store i32* %9, i32** %6, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 4
  %14 = call i32 @set_bytes_per_sector(i32 %13)
  %15 = load i32, i32* @actual_fs_type, align 4
  switch i32 %15, label %203 [
    i32 130, label %16
    i32 129, label %71
    i32 128, label %186
  ]

16:                                               ; preds = %1
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (...) @bt_to_name()
  %19 = call i32 (i8*, ...) @uprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @is_fat_16_fs(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %205

25:                                               ; preds = %16
  %26 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @boot_type, align 4
  %28 = load i32, i32* @BT_FREEDOS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @write_fat_16_fd_br(i32* %31, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %205

35:                                               ; preds = %30
  br label %64

36:                                               ; preds = %25
  %37 = load i32, i32* @boot_type, align 4
  %38 = load i32, i32* @BT_REACTOS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @write_fat_16_ros_br(i32* %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %205

45:                                               ; preds = %40
  br label %63

46:                                               ; preds = %36
  %47 = load i32, i32* @boot_type, align 4
  %48 = load i32, i32* @BT_IMAGE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @img_report, align 4
  %52 = call i32 @HAS_KOLIBRIOS(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %205

56:                                               ; preds = %50, %46
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @write_fat_16_br(i32* %57, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %205

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @write_partition_physical_disk_drive_id_fat16(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %205

69:                                               ; preds = %64
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %2, align 4
  br label %213

71:                                               ; preds = %1
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (...) @bt_to_name()
  %74 = call i32 (i8*, ...) @uprintf(i8* %72, i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %181, %71
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %184

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @is_fat_32_fs(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %87 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  br label %184

88:                                               ; preds = %78
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %93 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %98 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @boot_type, align 4
  %100 = load i32, i32* @BT_FREEDOS, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %88
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @write_fat_32_fd_br(i32* %103, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %184

107:                                              ; preds = %102
  br label %170

108:                                              ; preds = %88
  %109 = load i32, i32* @boot_type, align 4
  %110 = load i32, i32* @BT_REACTOS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @write_fat_32_ros_br(i32* %113, i32 0)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %184

117:                                              ; preds = %112
  br label %169

118:                                              ; preds = %108
  %119 = load i32, i32* @boot_type, align 4
  %120 = load i32, i32* @BT_IMAGE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* @img_report, align 4
  %124 = call i32 @HAS_KOLIBRIOS(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @write_fat_32_kos_br(i32* %127, i32 0)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  br label %184

131:                                              ; preds = %126
  br label %168

132:                                              ; preds = %122, %118
  %133 = load i32, i32* @boot_type, align 4
  %134 = load i32, i32* @BT_IMAGE, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load i32, i32* @img_report, align 4
  %138 = call i32 @HAS_BOOTMGR(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @write_fat_32_pe_br(i32* %141, i32 0)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  br label %184

145:                                              ; preds = %140
  br label %167

146:                                              ; preds = %136, %132
  %147 = load i32, i32* @boot_type, align 4
  %148 = load i32, i32* @BT_IMAGE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load i32, i32* @img_report, align 4
  %152 = call i32 @HAS_WINPE(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @write_fat_32_nt_br(i32* %155, i32 0)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  br label %184

159:                                              ; preds = %154
  br label %166

160:                                              ; preds = %150, %146
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @write_fat_32_br(i32* %161, i32 0)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  br label %184

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %159
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %131
  br label %169

169:                                              ; preds = %168, %117
  br label %170

170:                                              ; preds = %169, %107
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @write_partition_physical_disk_drive_id_fat32(i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  br label %184

175:                                              ; preds = %170
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 4
  %177 = mul nsw i32 6, %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, %177
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %75

184:                                              ; preds = %174, %164, %158, %144, %130, %116, %106, %82, %75
  %185 = load i32, i32* @TRUE, align 4
  store i32 %185, i32* %2, align 4
  br label %213

186:                                              ; preds = %1
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 (...) @bt_to_name()
  %189 = call i32 (i8*, ...) @uprintf(i8* %187, i32 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @is_ntfs_fs(i32* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %186
  %194 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  br label %205

195:                                              ; preds = %186
  %196 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 @write_ntfs_br(i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %195
  br label %205

201:                                              ; preds = %195
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %2, align 4
  br label %213

203:                                              ; preds = %1
  %204 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %200, %193, %68, %60, %54, %44, %34, %23
  %206 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %207 = load i32, i32* @FACILITY_STORAGE, align 4
  %208 = call i32 @FAC(i32 %207)
  %209 = or i32 %206, %208
  %210 = load i32, i32* @ERROR_WRITE_FAULT, align 4
  %211 = or i32 %209, %210
  store i32 %211, i32* @FormatStatus, align 4
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %205, %201, %184, %69
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @set_bytes_per_sector(i32) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32 @bt_to_name(...) #2

declare dso_local i32 @is_fat_16_fs(i32*) #2

declare dso_local i32 @write_fat_16_fd_br(i32*, i32) #2

declare dso_local i32 @write_fat_16_ros_br(i32*, i32) #2

declare dso_local i32 @HAS_KOLIBRIOS(i32) #2

declare dso_local i32 @write_fat_16_br(i32*, i32) #2

declare dso_local i32 @write_partition_physical_disk_drive_id_fat16(i32*) #2

declare dso_local i32 @is_fat_32_fs(i32*) #2

declare dso_local i32 @write_fat_32_fd_br(i32*, i32) #2

declare dso_local i32 @write_fat_32_ros_br(i32*, i32) #2

declare dso_local i32 @write_fat_32_kos_br(i32*, i32) #2

declare dso_local i32 @HAS_BOOTMGR(i32) #2

declare dso_local i32 @write_fat_32_pe_br(i32*, i32) #2

declare dso_local i32 @HAS_WINPE(i32) #2

declare dso_local i32 @write_fat_32_nt_br(i32*, i32) #2

declare dso_local i32 @write_fat_32_br(i32*, i32) #2

declare dso_local i32 @write_partition_physical_disk_drive_id_fat32(i32*) #2

declare dso_local i32 @is_ntfs_fs(i32*) #2

declare dso_local i32 @write_ntfs_br(i32*) #2

declare dso_local i32 @FAC(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
