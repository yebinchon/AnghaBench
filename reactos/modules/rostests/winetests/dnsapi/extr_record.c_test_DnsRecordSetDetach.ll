; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_record.c_test_DnsRecordSetDetach.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_record.c_test_DnsRecordSetDetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@r1 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@r2 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@r3 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"succeeded unexpectedly\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"failed unexpectedly: got %p, expected %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed unexpectedly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DnsRecordSetDetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DnsRecordSetDetach() #0 {
  %1 = alloca %struct.TYPE_12__, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %6 = call i32 @DNS_RRSET_INIT(%struct.TYPE_13__* %5)
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %9 = call i32 @DNS_RRSET_ADD(%struct.TYPE_13__* %8, %struct.TYPE_13__* @r1)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = call i32 @DNS_RRSET_ADD(%struct.TYPE_13__* %11, %struct.TYPE_13__* @r2)
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = call i32 @DNS_RRSET_ADD(%struct.TYPE_13__* %14, %struct.TYPE_13__* @r3)
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = call i32 @DNS_RRSET_TERMINATE(%struct.TYPE_13__* %17)
  %19 = call %struct.TYPE_13__* @DnsRecordSetDetach(%struct.TYPE_13__* null)
  %20 = icmp ne %struct.TYPE_13__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %2, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = call %struct.TYPE_13__* @DnsRecordSetDetach(%struct.TYPE_13__* %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %3, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = icmp eq %struct.TYPE_13__* %28, @r3
  %30 = zext i1 %29 to i32
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %31, %struct.TYPE_13__* @r3)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = icmp eq %struct.TYPE_13__* %33, @r1
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %36, %struct.TYPE_13__* @r1)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r2, i32 0, i32 0), align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DNS_RRSET_INIT(%struct.TYPE_13__*) #1

declare dso_local i32 @DNS_RRSET_ADD(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @DNS_RRSET_TERMINATE(%struct.TYPE_13__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local %struct.TYPE_13__* @DnsRecordSetDetach(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
