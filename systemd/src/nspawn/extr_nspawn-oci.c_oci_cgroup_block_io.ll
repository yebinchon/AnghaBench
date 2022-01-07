; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_cgroup_block_io.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_cgroup_block_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@oci_cgroup_block_io.table = internal constant [8 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 132, i32 130, i32 0, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 132, i32 128, i32 0, i32 134 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 133, i32 129, i32 0, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 133, i32 131, i32 0, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 133, i32 131, i32 0, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 133, i32 131, i32 0, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 133, i32 131, i32 0, i32 0 }, %struct.TYPE_3__ zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"leafWeight\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"weightDevice\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"throttleReadBpsDevice\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"throttleWriteBpsDevice\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"throttleReadIOPSDevice\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"throttleWriteIOPSDevice\00", align 1
@oci_unexpected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_cgroup_block_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_cgroup_block_io(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @oci_unexpected, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @json_dispatch(i32* %9, %struct.TYPE_3__* getelementptr inbounds ([8 x %struct.TYPE_3__], [8 x %struct.TYPE_3__]* @oci_cgroup_block_io.table, i64 0, i64 0), i32 %10, i32 %11, i8* %12)
  ret i32 %13
}

declare dso_local i32 @json_dispatch(i32*, %struct.TYPE_3__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
