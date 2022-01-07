; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/dnsapi/extr_dnsapi.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/dnsapi/extr_dnsapi.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"||||\00", align 1
@DnsNameDomain = common dso_local global i32 0, align 4
@DNS_ERROR_INVALID_NAME_CHAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"a.b.c\00", align 1
@DnsNameDomainLabel = common dso_local global i32 0, align 4
@DNS_ERROR_INVALID_NAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"fubar\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"www.reactos.com\00", align 1
@DNS_TYPE_A = common dso_local global i64 0, align 8
@DNS_QUERY_STANDARD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"www.reactos.com == %d.%d.%d.%d\0A\00", align 1
@DnsFreeRecordList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @DnsNameDomain, align 4
  %10 = call i64 @DnsValidateName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i64, i64* @DNS_ERROR_INVALID_NAME_CHAR, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @DnsNameDomainLabel, align 4
  %16 = call i64 @DnsValidateName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @DNS_ERROR_INVALID_NAME, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @DnsNameDomainLabel, align 4
  %22 = call i64 @DnsValidateName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @DnsNameDomain, align 4
  %28 = call i64 @DnsValidateName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* @DNS_TYPE_A, align 8
  %34 = load i32, i32* @DNS_QUERY_STANDARD, align 4
  %35 = call i64 @DnsQuery(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %33, i32 %34, i32* null, %struct.TYPE_8__** %6, i32* null)
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %7, align 8
  br label %41

41:                                               ; preds = %69, %2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DNS_TYPE_A, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ntohl(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 24
  %59 = and i32 %58, 255
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 255
  %68 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %50, %44
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %7, align 8
  br label %41

73:                                               ; preds = %41
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = load i32, i32* @DnsFreeRecordList, align 4
  %76 = call i32 @DnsRecordListFree(%struct.TYPE_8__* %74, i32 %75)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @DnsValidateName(i8*, i32) #1

declare dso_local i64 @DnsQuery(i8*, i64, i32, i32*, %struct.TYPE_8__**, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DnsRecordListFree(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
