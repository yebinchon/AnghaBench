; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbhub/extr_misc.c_DumpFullConfigurationDescriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbhub/extr_misc.c_DumpFullConfigurationDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [36 x i8] c"Dumping ConfigurationDescriptor %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bLength %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"bDescriptorType %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wTotalLength %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"bNumInterfaces %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"bConfigurationValue %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"iConfiguration %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"bmAttributes %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MaxPower %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"- Dumping InterfaceDescriptor %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"  bLength %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"  bDescriptorType %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"  bInterfaceNumber %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"  bAlternateSetting %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"  bNumEndpoints %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"  bInterfaceClass %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"  bInterfaceSubClass %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"  bInterfaceProtocol %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"  iInterface %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"   bLength %x\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"   bDescriptorType %x\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"   bEndpointAddress %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"   bmAttributes %x\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"   wMaxPacketSize %x\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"   bInterval %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DumpFullConfigurationDescriptor(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 9
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call i32 @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  %26 = call i32 @DPRINT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 13
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_6__* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 12
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @DPRINT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_6__* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 11
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_6__* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 10
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @DPRINT1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_6__* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = ptrtoint %struct.TYPE_6__* %43 to i64
  %45 = add i64 %44, 4
  %46 = inttoptr i64 %45 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %139, %1
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %142

53:                                               ; preds = %47
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = call i32 @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_6__* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 9
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @DPRINT1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_6__* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_6__* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_6__* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_6__* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_6__*
  %76 = call i32 @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_6__* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_6__* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i32 @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_6__* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_6__* %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), %struct.TYPE_6__* %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = ptrtoint %struct.TYPE_6__* %93 to i64
  %95 = add i64 %94, 4
  %96 = inttoptr i64 %95 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %96, %struct.TYPE_7__** %5, align 8
  store i64 0, i64* %7, align 8
  br label %97

97:                                               ; preds = %132, %53
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %97
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = call i32 @DPRINT1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_6__* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), %struct.TYPE_6__* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call i32 @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), %struct.TYPE_6__* %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = call i32 @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), %struct.TYPE_6__* %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), %struct.TYPE_6__* %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = call i32 @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), %struct.TYPE_6__* %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = ptrtoint %struct.TYPE_7__* %128 to i64
  %130 = add i64 %129, 4
  %131 = inttoptr i64 %130 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %5, align 8
  br label %132

132:                                              ; preds = %103
  %133 = load i64, i64* %7, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %7, align 8
  br label %97

135:                                              ; preds = %97
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = ptrtoint %struct.TYPE_7__* %136 to i64
  %138 = inttoptr i64 %137 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %4, align 8
  br label %139

139:                                              ; preds = %135
  %140 = load i64, i64* %6, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %6, align 8
  br label %47

142:                                              ; preds = %47
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @DPRINT1(i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
