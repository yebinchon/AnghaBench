; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_sd-device.c_device_read_db_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_sd-device.c_device_read_db_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"/run/udev/data/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_read_db_internal(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %37

24:                                               ; preds = %18, %15
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i32 @device_get_id_filename(%struct.TYPE_6__* %25, i8** %6)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strjoina(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i8* %33, i8** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @device_read_db_internal_filename(%struct.TYPE_6__* %34, i8* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %29, %23
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @device_get_id_filename(%struct.TYPE_6__*, i8**) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i32 @device_read_db_internal_filename(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
