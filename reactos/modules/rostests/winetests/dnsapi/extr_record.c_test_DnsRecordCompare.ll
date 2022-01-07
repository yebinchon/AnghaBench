; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_record.c_test_DnsRecordCompare.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_record.c_test_DnsRecordCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@r1 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"failed unexpectedly\0A\00", align 1
@name2 = common dso_local global i32 0, align 4
@r2 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@DnsCharSetUnicode = common dso_local global i8* null, align 8
@DnsCharSetAnsi = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"succeeded unexpectedly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DnsRecordCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DnsRecordCompare() #0 {
  %1 = call i64 @DnsRecordCompare(%struct.TYPE_13__* @r1, %struct.TYPE_13__* @r1)
  %2 = load i64, i64* @TRUE, align 8
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @ok(i32 %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @name2, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r2, i32 0, i32 3), align 8
  %7 = call i64 @DnsRecordCompare(%struct.TYPE_13__* @r1, %struct.TYPE_13__* @r2)
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** @DnsCharSetUnicode, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r2, i32 0, i32 2, i32 0, i32 0), align 8
  %13 = call i64 @DnsRecordCompare(%struct.TYPE_13__* @r1, %struct.TYPE_13__* @r2)
  %14 = load i64, i64* @TRUE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** @DnsCharSetAnsi, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r2, i32 0, i32 2, i32 0, i32 0), align 8
  %19 = call i64 @DnsRecordCompare(%struct.TYPE_13__* @r1, %struct.TYPE_13__* @r2)
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** @DnsCharSetAnsi, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r1, i32 0, i32 2, i32 0, i32 0), align 8
  %25 = call i64 @DnsRecordCompare(%struct.TYPE_13__* @r1, %struct.TYPE_13__* @r2)
  %26 = load i64, i64* @TRUE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r1, i32 0, i32 1), align 8
  %30 = call i64 @DnsRecordCompare(%struct.TYPE_13__* @r1, %struct.TYPE_13__* @r2)
  %31 = load i64, i64* @TRUE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r2, i32 0, i32 0, i32 0, i32 0), align 8
  %35 = call i64 @DnsRecordCompare(%struct.TYPE_13__* @r1, %struct.TYPE_13__* @r2)
  %36 = load i64, i64* @FALSE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @DnsRecordCompare(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
