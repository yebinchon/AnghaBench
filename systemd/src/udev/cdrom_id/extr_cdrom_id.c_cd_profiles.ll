; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_profiles.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_profiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmd = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"GET CONFIGURATION\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"drive is pre-MMC2 and does not support 46h get configuration command\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"trying to work around the problem\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"current profile 0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"no current profile, assuming no media\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"GET CONFIGURATION: size of features buffer 0x%04x\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"cannot get features in a single query, truncating\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"GET CONFIGURATION: feature 'profiles', with %i entries\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"GET CONFIGURATION: feature 0x%04x <ignored>, with 0x%02x bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cd_profiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd_profiles(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmd, align 4
  %5 = alloca [65530 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %10, align 4
  %12 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %13 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 70)
  %14 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 8)
  %15 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 0
  %18 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %16, i8* %17, i32 8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @SK(i32 %24)
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ASC(i32 %28)
  %30 = call i64 @IN_SET(i32 %29, i32 32, i32 36)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @cd_profiles_old_mmc(i32 %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %32, %27, %21
  br label %199

38:                                               ; preds = %1
  %39 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 6
  %40 = load i8, i8* %39, align 2
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 7
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %42, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ugt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @feature_profile_media(i32 %52)
  store i32 0, i32* %10, align 4
  br label %56

54:                                               ; preds = %38
  %55 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 24
  %61 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  %66 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 2
  %67 = load i8, i8* %66, align 2
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 8
  %70 = or i32 %65, %69
  %71 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %70, %73
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = icmp ugt i64 %78, 65530
  br i1 %79, label %80, label %82

80:                                               ; preds = %56
  %81 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  store i32 65530, i32* %7, align 4
  br label %87

82:                                               ; preds = %56
  %83 = load i32, i32* %7, align 4
  %84 = icmp ule i32 %83, 8
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 65530, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %80
  %88 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %89 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 70)
  %90 = load i32, i32* %7, align 4
  %91 = lshr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 7, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 255
  %96 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 %95)
  %97 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %98 = load i32, i32* %3, align 4
  %99 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %98, i8* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %87
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %105)
  store i32 -1, i32* %2, align 4
  br label %201

107:                                              ; preds = %87
  %108 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 0
  %109 = load i8, i8* %108, align 16
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 24
  %112 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl i32 %114, 16
  %116 = or i32 %111, %115
  %117 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 2
  %118 = load i8, i8* %117, align 2
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 8
  %121 = or i32 %116, %120
  %122 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %121, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = icmp ugt i64 %129, 65530
  br i1 %130, label %131, label %133

131:                                              ; preds = %107
  %132 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  store i32 65530, i32* %7, align 4
  br label %133

133:                                              ; preds = %131, %107
  store i32 8, i32* %8, align 4
  br label %134

134:                                              ; preds = %188, %133
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %198

139:                                              ; preds = %134
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = shl i32 %144, 8
  %146 = load i32, i32* %8, align 4
  %147 = add i32 %146, 1
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %145, %151
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  switch i32 %153, label %178 [
    i32 0, label %154
  ]

154:                                              ; preds = %139
  %155 = load i32, i32* %8, align 4
  %156 = add i32 %155, 3
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = sdiv i32 %160, 4
  %162 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 %164
  %166 = getelementptr inbounds i8, i8* %165, i64 4
  %167 = load i32, i32* %8, align 4
  %168 = add i32 %167, 3
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  %174 = sub i32 %172, %173
  %175 = sub i32 %174, 4
  %176 = call i32 @MIN(i8 zeroext %171, i32 %175)
  %177 = call i32 @feature_profiles(i8* %166, i32 %176)
  br label %187

178:                                              ; preds = %139
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %8, align 4
  %181 = add i32 %180, 3
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i32 %179, i32 %185)
  br label %187

187:                                              ; preds = %178, %154
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %8, align 4
  %190 = add i32 %189, 3
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [65530 x i8], [65530 x i8]* %5, i64 0, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 4, %194
  %196 = load i32, i32* %8, align 4
  %197 = add i32 %196, %195
  store i32 %197, i32* %8, align 4
  br label %134

198:                                              ; preds = %134
  br label %199

199:                                              ; preds = %198, %37
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %199, %104
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @scsi_cmd_init(%struct.scsi_cmd*) #1

declare dso_local i32 @scsi_cmd_set(%struct.scsi_cmd*, i32, i32) #1

declare dso_local i32 @scsi_cmd_run(%struct.scsi_cmd*, i32, i8*, i32) #1

declare dso_local i32 @info_scsi_cmd_err(i8*, i32) #1

declare dso_local i32 @SK(i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @ASC(i32) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i32 @cd_profiles_old_mmc(i32) #1

declare dso_local i32 @feature_profile_media(i32) #1

declare dso_local i32 @feature_profiles(i8*, i32) #1

declare dso_local i32 @MIN(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
