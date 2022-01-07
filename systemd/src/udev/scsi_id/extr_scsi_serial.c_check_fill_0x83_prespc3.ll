; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_check_fill_0x83_prespc3.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_check_fill_0x83_prespc3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i32 }
%struct.scsi_id_search_values = type { i32 }

@hex_str = common dso_local global i8* null, align 8
@SCSI_ID_NAA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_id_device*, i8*, %struct.scsi_id_search_values*, i8*, i8*, i32)* @check_fill_0x83_prespc3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fill_0x83_prespc3(%struct.scsi_id_device* %0, i8* %1, %struct.scsi_id_search_values* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.scsi_id_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.scsi_id_search_values*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_id_device* %0, %struct.scsi_id_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.scsi_id_search_values* %2, %struct.scsi_id_search_values** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** @hex_str, align 8
  %16 = load i64, i64* @SCSI_ID_NAA, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %18, i8* %20, align 1
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %73, %6
  %24 = load i32, i32* %13, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 3
  %34 = icmp slt i32 %31, %33
  br label %35

35:                                               ; preds = %30, %23
  %36 = phi i1 [ false, %23 ], [ %34, %30 ]
  br i1 %36, label %37, label %76

37:                                               ; preds = %35
  %38 = load i8*, i8** @hex_str, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 4, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 240
  %47 = ashr i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %38, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 %50, i8* %55, align 1
  %56 = load i8*, i8** @hex_str, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 4, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 15
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %56, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 %67, i8* %72, align 1
  br label %73

73:                                               ; preds = %37
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %23

76:                                               ; preds = %35
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @strncpy(i8* %82, i8* %83, i32 %85)
  ret i32 0
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
