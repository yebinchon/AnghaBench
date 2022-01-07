; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_set_evd.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_set_evd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8* }

@ISO_BLOCKSIZE = common dso_local global i32 0, align 4
@ISO_VD_END = common dso_local global i32 0, align 4
@ISO_STANDARD_ID = common dso_local global i32 0, align 4
@ISO9660_DCHARS = common dso_local global i32 0, align 4
@ISO_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iso9660_set_evd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp eq i64 24, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @cdio_assert(i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @cdio_assert(i32 %11)
  %13 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 24)
  %14 = load i32, i32* @ISO_VD_END, align 4
  %15 = call i8* @to_711(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ISO_STANDARD_ID, align 4
  %20 = load i32, i32* @ISO9660_DCHARS, align 4
  %21 = call i32 @iso9660_strncpy_pad(i32 %18, i32 %19, i32 4, i32 %20)
  %22 = load i32, i32* @ISO_VERSION, align 4
  %23 = call i8* @to_711(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @memcpy(i8* %25, %struct.TYPE_4__* %3, i32 24)
  ret void
}

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @to_711(i32) #1

declare dso_local i32 @iso9660_strncpy_pad(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
