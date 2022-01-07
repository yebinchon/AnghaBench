; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_record.c_test_DnsRecordSetCompare.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_record.c_test_DnsRecordSetCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32* }

@r1 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@r2 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"succeeded unexpectedly\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unexpected result: %p, %p\0A\00", align 1
@DnsFreeRecordList = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"failed unexpectedly\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unexpected result: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DnsRecordSetCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DnsRecordSetCompare() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  store i32 8217, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @r1, i32 0, i32 1, i32 0), align 4
  store i32 8217, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @r2, i32 0, i32 1, i32 0), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @r2, i32 0, i32 0, i32 0, i32 0), align 4
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @DNS_RRSET_INIT(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @DNS_RRSET_INIT(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @DNS_RRSET_ADD(i32* %12, %struct.TYPE_15__* @r1)
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @DNS_RRSET_ADD(i32* %15, %struct.TYPE_15__* @r2)
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @DNS_RRSET_TERMINATE(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @DNS_RRSET_TERMINATE(i32* %21)
  %23 = call i64 @DnsRecordSetCompare(i32* null, i32* null, i32** null, i32** null)
  %24 = load i64, i64* @FALSE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @DnsRecordSetCompare(i32* %29, i32* null, i32** null, i32** null)
  %31 = load i64, i64* @FALSE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @DnsRecordSetCompare(i32* null, i32* %36, i32** null, i32** null)
  %38 = load i64, i64* @FALSE, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %42 = call i64 @DnsRecordSetCompare(i32* null, i32* null, i32** %1, i32** %2)
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %1, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %0
  %50 = load i32*, i32** %2, align 8
  %51 = icmp eq i32* %50, null
  br label %52

52:                                               ; preds = %49, %0
  %53 = phi i1 [ false, %0 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %1, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %55, i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @DnsRecordSetCompare(i32* %59, i32* null, i32** %1, i32** %2)
  %61 = load i64, i64* @FALSE, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %65 = load i32*, i32** %1, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load i32*, i32** %2, align 8
  %69 = icmp eq i32* %68, null
  br label %70

70:                                               ; preds = %67, %52
  %71 = phi i1 [ false, %52 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %1, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %73, i32* %74)
  %76 = load i32*, i32** %1, align 8
  %77 = load i32, i32* @DnsFreeRecordList, align 4
  %78 = call i32 @DnsRecordListFree(i32* %76, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @DnsRecordSetCompare(i32* null, i32* %80, i32** %1, i32** %2)
  %82 = load i64, i64* @FALSE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %86 = load i32*, i32** %1, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %70
  %89 = load i32*, i32** %2, align 8
  %90 = icmp ne i32* %89, null
  br label %91

91:                                               ; preds = %88, %70
  %92 = phi i1 [ false, %70 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = load i32*, i32** %1, align 8
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %94, i32* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = load i32, i32* @DnsFreeRecordList, align 4
  %99 = call i32 @DnsRecordListFree(i32* %97, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @DnsRecordSetCompare(i32* %101, i32* %103, i32** null, i32** %2)
  %105 = load i64, i64* @TRUE, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32*, i32** %2, align 8
  %110 = icmp eq i32* %109, null
  %111 = zext i1 %110 to i32
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %112)
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @DnsRecordSetCompare(i32* %115, i32* %117, i32** %1, i32** null)
  %119 = load i64, i64* @TRUE, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32*, i32** %1, align 8
  %124 = icmp eq i32* %123, null
  %125 = zext i1 %124 to i32
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %126)
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i64 @DnsRecordSetCompare(i32* %129, i32* %131, i32** %1, i32** %2)
  %133 = load i64, i64* @TRUE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32*, i32** %1, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %91
  %140 = load i32*, i32** %2, align 8
  %141 = icmp eq i32* %140, null
  br label %142

142:                                              ; preds = %139, %91
  %143 = phi i1 [ false, %91 ], [ %141, %139 ]
  %144 = zext i1 %143 to i32
  %145 = load i32*, i32** %1, align 8
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %145, i32* %146)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @r2, i32 0, i32 0, i32 0, i32 0), align 4
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i64 @DnsRecordSetCompare(i32* %149, i32* %151, i32** null, i32** %2)
  %153 = load i64, i64* @FALSE, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %157 = load i32*, i32** %2, align 8
  %158 = load i32, i32* @DnsFreeRecordList, align 4
  %159 = call i32 @DnsRecordListFree(i32* %157, i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @DnsRecordSetCompare(i32* %161, i32* %163, i32** %1, i32** null)
  %165 = load i64, i64* @FALSE, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %169 = load i32*, i32** %1, align 8
  %170 = load i32, i32* @DnsFreeRecordList, align 4
  %171 = call i32 @DnsRecordListFree(i32* %169, i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = call i64 @DnsRecordSetCompare(i32* %173, i32* %175, i32** %1, i32** %2)
  %177 = load i64, i64* @FALSE, align 8
  %178 = icmp eq i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %181 = load i32*, i32** %1, align 8
  %182 = load i32, i32* @DnsFreeRecordList, align 4
  %183 = call i32 @DnsRecordListFree(i32* %181, i32 %182)
  %184 = load i32*, i32** %2, align 8
  %185 = load i32, i32* @DnsFreeRecordList, align 4
  %186 = call i32 @DnsRecordListFree(i32* %184, i32 %185)
  ret void
}

declare dso_local i32 @DNS_RRSET_INIT(i32*) #1

declare dso_local i32 @DNS_RRSET_ADD(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @DNS_RRSET_TERMINATE(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @DnsRecordSetCompare(i32*, i32*, i32**, i32**) #1

declare dso_local i32 @DnsRecordListFree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
