; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-path_id.c_handle_scsi.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-path_id.c_handle_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"scsi_device\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ieee1394_id\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ieee1394-0x%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"scsi\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/rport-\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"/end_device-\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/session\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"/ata\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"/vmbus_\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"/VMBUS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i32*)* @handle_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_scsi(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @sd_device_get_devtype(i32* %11, i8** %8)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @streq(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %3
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %4, align 8
  br label %92

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @sd_device_get_sysattr_value(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @path_prepend(i8** %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %7, align 8
  store i32 1, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @skip_subsystem(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %30, i32** %4, align 8
  br label %92

31:                                               ; preds = %20
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @sd_device_get_syspath(i32* %32, i8** %10)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32* null, i32** %4, align 8
  br label %92

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  store i32 1, i32* %41, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i8**, i8*** %6, align 8
  %44 = call i32* @handle_scsi_fibre_channel(i32* %42, i8** %43)
  store i32* %44, i32** %4, align 8
  br label %92

45:                                               ; preds = %36
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @strstr(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  store i32 1, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = call i32* @handle_scsi_sas(i32* %51, i8** %52)
  store i32* %53, i32** %4, align 8
  br label %92

54:                                               ; preds = %45
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @strstr(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  store i32 1, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = call i32* @handle_scsi_iscsi(i32* %60, i8** %61)
  store i32* %62, i32** %4, align 8
  br label %92

63:                                               ; preds = %54
  %64 = load i8*, i8** %10, align 8
  %65 = call i64 @strstr(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = call i32* @handle_scsi_ata(i32* %68, i8** %69)
  store i32* %70, i32** %4, align 8
  br label %92

71:                                               ; preds = %63
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @strstr(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  %77 = load i8**, i8*** %6, align 8
  %78 = call i32* @handle_scsi_hyperv(i32* %76, i8** %77, i32 37)
  store i32* %78, i32** %4, align 8
  br label %92

79:                                               ; preds = %71
  %80 = load i8*, i8** %10, align 8
  %81 = call i64 @strstr(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %5, align 8
  %85 = load i8**, i8*** %6, align 8
  %86 = call i32* @handle_scsi_hyperv(i32* %84, i8** %85, i32 38)
  store i32* %86, i32** %4, align 8
  br label %92

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87
  %89 = load i32*, i32** %5, align 8
  %90 = load i8**, i8*** %6, align 8
  %91 = call i32* @handle_scsi_default(i32* %89, i8** %90)
  store i32* %91, i32** %4, align 8
  br label %92

92:                                               ; preds = %88, %83, %75, %67, %58, %49, %40, %35, %24, %18
  %93 = load i32*, i32** %4, align 8
  ret i32* %93
}

declare dso_local i64 @sd_device_get_devtype(i32*, i8**) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i64 @sd_device_get_sysattr_value(i32*, i8*, i8**) #1

declare dso_local i32 @path_prepend(i8**, i8*, i8*) #1

declare dso_local i32* @skip_subsystem(i32*, i8*) #1

declare dso_local i64 @sd_device_get_syspath(i32*, i8**) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32* @handle_scsi_fibre_channel(i32*, i8**) #1

declare dso_local i32* @handle_scsi_sas(i32*, i8**) #1

declare dso_local i32* @handle_scsi_iscsi(i32*, i8**) #1

declare dso_local i32* @handle_scsi_ata(i32*, i8**) #1

declare dso_local i32* @handle_scsi_hyperv(i32*, i8**, i32) #1

declare dso_local i32* @handle_scsi_default(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
