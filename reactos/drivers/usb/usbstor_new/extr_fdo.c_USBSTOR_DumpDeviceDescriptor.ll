; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbstor_new/extr_fdo.c_USBSTOR_DumpDeviceDescriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbstor_new/extr_fdo.c_USBSTOR_DumpDeviceDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [30 x i8] c"Dumping Device Descriptor %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bLength %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"bDescriptorType %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bcdUSB %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bDeviceClass %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"bDeviceSubClass %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"bDeviceProtocol %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"bMaxPacketSize0 %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"idVendor %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"idProduct %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"bcdDevice %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"iManufacturer %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"iProduct %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"iSerialNumber %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"bNumConfigurations %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBSTOR_DumpDeviceDescriptor(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 13
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 12
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @DPRINT1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_4__* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_4__* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @DPRINT1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_4__* %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @DPRINT1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_4__* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @DPRINT1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_4__* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_4__* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @DPRINT1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_4__* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_4__* %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_4__* %60)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @DPRINT1(i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
