; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetFSFromISO.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetFSFromISO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@FS_UNKNOWN = common dso_local global i32 0, align 4
@FS_FAT32 = common dso_local global i32 0, align 4
@FS_NTFS = common dso_local global i32 0, align 4
@image_options = common dso_local global i32 0, align 4
@IMOP_WINTOGO = common dso_local global i32 0, align 4
@boot_type = common dso_local global i64 0, align 8
@BT_IMAGE = common dso_local global i64 0, align 8
@img_report = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@hMainDialog = common dso_local global i32 0, align 4
@IDC_IMAGE_OPTION = common dso_local global i32 0, align 4
@image_path = common dso_local global i32* null, align 8
@hFileSystem = common dso_local global i32 0, align 4
@preselected_fs = common dso_local global i32 0, align 4
@target_type = common dso_local global i64 0, align 8
@TT_UEFI = common dso_local global i64 0, align 8
@FS_FAT16 = common dso_local global i32 0, align 4
@selected_fs = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@CBN_SELCHANGE_INTERNAL = common dso_local global i32 0, align 4
@IDC_FILE_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SetFSFromISO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetFSFromISO() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @FS_UNKNOWN, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @FS_FAT32, align 4
  %8 = load i32, i32* @FS_NTFS, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @image_options, align 4
  %11 = load i32, i32* @IMOP_WINTOGO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %0
  %15 = load i64, i64* @boot_type, align 8
  %16 = load i64, i64* @BT_IMAGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %20 = call i64 @HAS_WINTOGO(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @hMainDialog, align 4
  %24 = load i32, i32* @IDC_IMAGE_OPTION, align 4
  %25 = call i32 @GetDlgItem(i32 %23, i32 %24)
  %26 = call i32 @ComboBox_GetCurSel(i32 %25)
  %27 = icmp eq i32 %26, 1
  br label %28

28:                                               ; preds = %22, %18, %14, %0
  %29 = phi i1 [ false, %18 ], [ false, %14 ], [ false, %0 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** @image_path, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %190

34:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @hFileSystem, align 4
  %38 = call i32 @ComboBox_GetCount(i32 %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i32, i32* @hFileSystem, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i64 @ComboBox_GetItemData(i32 %41, i32 %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %35

52:                                               ; preds = %35
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @FS_UNKNOWN, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i32, i32* @preselected_fs, align 4
  %58 = load i32, i32* @FS_UNKNOWN, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @preselected_fs, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @preselected_fs, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %60
  br label %69

69:                                               ; preds = %68, %56, %52
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @FS_UNKNOWN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %140

73:                                               ; preds = %69
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %75 = call i64 @HAS_SYSLINUX(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %79 = call i64 @HAS_REACTOS(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %83 = call i64 @HAS_KOLIBRIOS(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %87 = call i64 @IS_EFI_BOOTABLE(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = load i64, i64* @target_type, align 8
  %91 = load i64, i64* @TT_UEFI, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %93, %81, %77, %73
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @FS_FAT32, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @FS_FAT32, align 4
  store i32 %103, i32* %3, align 4
  br label %117

104:                                              ; preds = %96
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @FS_FAT16, align 4
  %107 = shl i32 1, %106
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %112 = call i64 @HAS_KOLIBRIOS(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @FS_FAT16, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %110, %104
  br label %117

117:                                              ; preds = %116, %102
  br label %139

118:                                              ; preds = %93, %89, %85
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %123 = call i64 @HAS_BOOTMGR(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %127 = call i64 @HAS_WINPE(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %125, %121, %118
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @FS_NTFS, align 4
  %132 = shl i32 1, %131
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* @FS_NTFS, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %129
  br label %138

138:                                              ; preds = %137, %125
  br label %139

139:                                              ; preds = %138, %117
  br label %140

140:                                              ; preds = %139, %69
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @FS_NTFS, align 4
  %146 = shl i32 1, %145
  %147 = and i32 %144, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @FS_NTFS, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %143, %140
  store i32 0, i32* %1, align 4
  br label %152

152:                                              ; preds = %171, %151
  %153 = load i32, i32* %1, align 4
  %154 = load i32, i32* @hFileSystem, align 4
  %155 = call i32 @ComboBox_GetCount(i32 %154)
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %152
  %158 = load i32, i32* @hFileSystem, align 4
  %159 = load i32, i32* %1, align 4
  %160 = call i64 @ComboBox_GetItemData(i32 %158, i32 %159)
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %2, align 4
  %162 = load i32, i32* %2, align 4
  %163 = load i32, i32* %3, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load i32, i32* @hFileSystem, align 4
  %167 = load i32, i32* %1, align 4
  %168 = call i32 @ComboBox_SetCurSel(i32 %166, i32 %167)
  %169 = call i32 @IGNORE_RETVAL(i32 %168)
  br label %174

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %1, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %1, align 4
  br label %152

174:                                              ; preds = %165, %152
  %175 = load i32, i32* @selected_fs, align 4
  %176 = load i32, i32* @FS_UNKNOWN, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* %3, align 4
  store i32 %179, i32* @selected_fs, align 4
  br label %180

180:                                              ; preds = %178, %174
  %181 = load i32, i32* @hMainDialog, align 4
  %182 = load i32, i32* @WM_COMMAND, align 4
  %183 = load i32, i32* @CBN_SELCHANGE_INTERNAL, align 4
  %184 = shl i32 %183, 16
  %185 = load i32, i32* @IDC_FILE_SYSTEM, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @hFileSystem, align 4
  %188 = call i32 @ComboBox_GetCurSel(i32 %187)
  %189 = call i32 @SendMessage(i32 %181, i32 %182, i32 %186, i32 %188)
  br label %190

190:                                              ; preds = %180, %33
  ret void
}

declare dso_local i64 @HAS_WINTOGO(i64) #1

declare dso_local i32 @ComboBox_GetCurSel(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ComboBox_GetCount(i32) #1

declare dso_local i64 @ComboBox_GetItemData(i32, i32) #1

declare dso_local i64 @HAS_SYSLINUX(i64) #1

declare dso_local i64 @HAS_REACTOS(i64) #1

declare dso_local i64 @HAS_KOLIBRIOS(i64) #1

declare dso_local i64 @IS_EFI_BOOTABLE(i64) #1

declare dso_local i64 @HAS_BOOTMGR(i64) #1

declare dso_local i64 @HAS_WINPE(i64) #1

declare dso_local i32 @IGNORE_RETVAL(i32) #1

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
