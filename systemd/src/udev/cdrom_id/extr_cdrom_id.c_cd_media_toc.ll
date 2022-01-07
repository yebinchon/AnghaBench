; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_media_toc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_media_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmd = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"READ TOC\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"READ TOC: len: %d, start track: %d, end track: %d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"READ TOC (tracks)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"track=%u info=0x%x(%s) start_block=%u\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@cd_media_track_count_data = common dso_local global i32 0, align 4
@cd_media_track_count_audio = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"READ TOC (multi session)\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"last track %u starts at block %u\00", align 1
@cd_media_session_last_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cd_media_toc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd_media_toc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmd, align 4
  %5 = alloca [12 x i8], align 1
  %6 = alloca [65536 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %15 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 67)
  %16 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 6, i32 1)
  %17 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 12)
  %18 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %19 = load i32, i32* %3, align 4
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %21 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %19, i8* %20, i32 12)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %2, align 4
  br label %203

27:                                               ; preds = %1
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 8
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %31, %34
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (i8*, i8, i32, ...) @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %38, i32 %41, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ugt i64 %47, 65536
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %203

50:                                               ; preds = %27
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  br label %203

54:                                               ; preds = %50
  %55 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %57, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ult i32 %63, 8
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %203

66:                                               ; preds = %54
  %67 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %68 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 67)
  %69 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 6, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 7, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 255
  %79 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 %78)
  %80 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %81 = load i32, i32* %3, align 4
  %82 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %81, i8* %82, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %66
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  store i32 -1, i32* %2, align 4
  br label %203

90:                                               ; preds = %66
  %91 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  store i8* %92, i8** %10, align 8
  store i32 4, i32* %8, align 4
  br label %93

93:                                               ; preds = %156, %90
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub i32 %95, 8
  %97 = icmp ult i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = icmp ugt i32 %99, 0
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi i1 [ false, %93 ], [ %100, %98 ]
  br i1 %102, label %103, label %163

103:                                              ; preds = %101
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %13, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl i32 %114, 24
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 5
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 16
  %121 = or i32 %115, %120
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 6
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 8
  %127 = or i32 %121, %126
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 7
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %127, %131
  store i32 %132, i32* %12, align 4
  %133 = load i8*, i8** %10, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, 15
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %145 = load i32, i32* %12, align 4
  %146 = call i32 (i8*, i8, i32, ...) @log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %135, i32 %140, i8* %144, i32 %145)
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %103
  %150 = load i32, i32* @cd_media_track_count_data, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* @cd_media_track_count_data, align 4
  br label %155

152:                                              ; preds = %103
  %153 = load i32, i32* @cd_media_track_count_audio, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @cd_media_track_count_audio, align 4
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add i32 %157, 8
  store i32 %158, i32* %8, align 4
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 8
  store i8* %160, i8** %10, align 8
  %161 = load i32, i32* %9, align 4
  %162 = add i32 %161, -1
  store i32 %162, i32* %9, align 4
  br label %93

163:                                              ; preds = %101
  %164 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %165 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 67)
  %166 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 2, i32 1)
  %167 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 12)
  %168 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %169 = load i32, i32* %3, align 4
  %170 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %171 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %169, i8* %170, i32 12)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %163
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  store i32 -1, i32* %2, align 4
  br label %203

177:                                              ; preds = %163
  %178 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 8
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl i32 %180, 24
  %182 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 9
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = shl i32 %184, 16
  %186 = or i32 %181, %185
  %187 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 10
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = shl i32 %189, 8
  %191 = or i32 %186, %190
  %192 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 11
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = or i32 %191, %194
  store i32 %195, i32* %7, align 4
  %196 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 6
  %197 = load i8, i8* %196, align 1
  %198 = load i32, i32* %7, align 4
  %199 = call i32 (i8*, i8, i32, ...) @log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8 zeroext %197, i32 %198)
  %200 = load i32, i32* %7, align 4
  %201 = zext i32 %200 to i64
  %202 = mul i64 %201, 2048
  store i64 %202, i64* @cd_media_session_last_offset, align 8
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %177, %174, %87, %65, %53, %49, %24
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @scsi_cmd_init(%struct.scsi_cmd*) #1

declare dso_local i32 @scsi_cmd_set(%struct.scsi_cmd*, i32, i32) #1

declare dso_local i32 @scsi_cmd_run(%struct.scsi_cmd*, i32, i8*, i32) #1

declare dso_local i32 @info_scsi_cmd_err(i8*, i32) #1

declare dso_local i32 @log_debug(i8*, i8 zeroext, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
