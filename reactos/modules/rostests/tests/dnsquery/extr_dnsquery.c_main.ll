; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/dnsquery/extr_dnsquery.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/dnsquery/extr_dnsquery.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"www.reactos.com\00", align 1
@DNS_TYPE_A = common dso_local global i64 0, align 8
@DNS_QUERY_STANDARD = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"www.reactos.com == %d.%d.%d.%d\0A\00", align 1
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
  %9 = load i64, i64* @DNS_TYPE_A, align 8
  %10 = load i32, i32* @DNS_QUERY_STANDARD, align 4
  %11 = call i64 @DnsQuery(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %10, i32* null, %struct.TYPE_8__** %6, i32* null)
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  br label %17

17:                                               ; preds = %45, %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DNS_TYPE_A, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ntohl(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 24
  %35 = and i32 %34, 255
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %26, %20
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %7, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = load i32, i32* @DnsFreeRecordList, align 4
  %52 = call i32 @DnsRecordListFree(%struct.TYPE_8__* %50, i32 %51)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

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
