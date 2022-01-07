; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_WriteSBR.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_WriteSBR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i8*, i32 }

@boot_type = common dso_local global i32 0, align 4
@partition_type = common dso_local global i64 0, align 8
@PARTITION_STYLE_GPT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SelectedDrive = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@IDC_OLD_BIOS_FIXES = common dso_local global i32 0, align 4
@MB = common dso_local global i32 0, align 4
@BT_IMAGE = common dso_local global i32 0, align 4
@img_report = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"Writing Grub4Dos SBR\00", align 1
@hMainInstance = common dso_local global i32 0, align 4
@IDR_GR_GRUB_GRLDR_MBR = common dso_local global i32 0, align 4
@_RT_RCDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"grldr.mbr\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"grldr.mbr is either not present or too small\00", align 1
@grub2_buf = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Writing Grub 2.0 SBR (from download) %s\00", align 1
@grub2_len = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"\E2\9C\93\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\E2\9C\97\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Writing Grub 2.0 SBR (from embedded)\00", align 1
@IDR_GR_GRUB2_CORE_IMG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"core.img\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Could not access core.img\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"  SBR size is too large - You may need to uncheck 'Add fixes for old BIOSes'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @WriteSBR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteSBR(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32 512, i32* %6, align 4
  %12 = load i32, i32* @boot_type, align 4
  store i32 %12, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %13 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = bitcast %struct.TYPE_5__* %10 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load i64, i64* @partition_type, align 8
  %16 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %134

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 0), align 4
  %25 = call i32 @set_bytes_per_sector(i32 %24)
  %26 = load i32, i32* @IDC_OLD_BIOS_FIXES, align 4
  %27 = call i64 @IsChecked(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 0), align 4
  %32 = mul nsw i32 %30, %31
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @MB, align 4
  %35 = mul nsw i32 1, %34
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %32, %29 ], [ %35, %33 ]
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @boot_type, align 4
  %42 = load i32, i32* @BT_IMAGE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_6__* @img_report to { i64, i64 }*), i32 0, i32 0), align 8
  %46 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_6__* @img_report to { i64, i64 }*), i32 0, i32 1), align 8
  %47 = call i32 @HAS_SYSLINUX(i64 %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 1), align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 128, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 0), align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 129, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %44, %36
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %114 [
    i32 128, label %60
    i32 129, label %85
  ]

60:                                               ; preds = %58
  %61 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @hMainInstance, align 4
  %63 = load i32, i32* @IDR_GR_GRUB_GRLDR_MBR, align 4
  %64 = call i32 @MAKEINTRESOURCEA(i32 %63)
  %65 = load i32, i32* @_RT_RCDATA, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i8* @GetResource(i32 %62, i32 %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32 %66)
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %60
  %75 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %134

77:                                               ; preds = %70
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %9, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %116

85:                                               ; preds = %58
  %86 = load i8*, i8** @grub2_buf, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i8*, i8** @grub2_buf, align 8
  %90 = load i64, i64* @grub2_len, align 8
  %91 = call i32 @IsBufferInDB(i8* %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %95 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  %96 = load i8*, i8** @grub2_buf, align 8
  store i8* %96, i8** %9, align 8
  %97 = load i64, i64* @grub2_len, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %113

99:                                               ; preds = %85
  %100 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i32, i32* @hMainInstance, align 4
  %102 = load i32, i32* @IDR_GR_GRUB2_CORE_IMG, align 4
  %103 = call i32 @MAKEINTRESOURCEA(i32 %102)
  %104 = load i32, i32* @_RT_RCDATA, align 4
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i8* @GetResource(i32 %101, i32 %103, i32 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %4, i32 %105)
  store i8* %106, i8** %9, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %2, align 4
  br label %134

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112, %88
  br label %116

114:                                              ; preds = %58
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %2, align 4
  br label %134

116:                                              ; preds = %113, %77
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0))
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %2, align 4
  br label %134

123:                                              ; preds = %116
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @write_data(i32* %124, i32 %125, i8* %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i8*, i8** @grub2_buf, align 8
  %130 = call i32 @safe_free(i8* %129)
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %123, %120, %114, %109, %74, %18
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @set_bytes_per_sector(i32) #2

declare dso_local i64 @IsChecked(i32) #2

declare dso_local i32 @HAS_SYSLINUX(i64, i64) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i8* @GetResource(i32, i32, i32, i8*, i32*, i32) #2

declare dso_local i32 @MAKEINTRESOURCEA(i32) #2

declare dso_local i32 @IsBufferInDB(i8*, i64) #2

declare dso_local i32 @write_data(i32*, i32, i8*, i32) #2

declare dso_local i32 @safe_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
